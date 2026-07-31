.class public final Lorg/wikipedia/feed/HomeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _communityState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _forYouState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _selectedTab:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _tabsState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _unreadCount:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _wikiSite:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final communityHandler:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

.field public final communityState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public forYouBatchIndex:I

.field public final forYouHandler:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

.field public final forYouState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public nextCommunityAge:I

.field public final placesModule:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedTab:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final tabsState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final unreadCount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 7
    .line 8
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 9
    .line 10
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomeLanguageCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel;->_wikiSite:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 26
    .line 27
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 33
    .line 34
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomePreferenceSelection()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->PERSONALIZED:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 39
    .line 40
    if-ne v2, v3, :cond_0

    .line 41
    .line 42
    sget-object v2, Lorg/wikipedia/feed/HomeTab;->FOR_YOU:Lorg/wikipedia/feed/HomeTab;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object v2, Lorg/wikipedia/feed/HomeTab;->COMMUNITY:Lorg/wikipedia/feed/HomeTab;

    .line 46
    .line 47
    :goto_0
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->_selectedTab:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 52
    .line 53
    new-instance v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 54
    .line 55
    invoke-direct {v3, v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, v0, Lorg/wikipedia/feed/HomeViewModel;->selectedTab:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 59
    .line 60
    new-instance v2, Lorg/wikipedia/feed/CommunityContentState;

    .line 61
    .line 62
    invoke-direct {v2}, Lorg/wikipedia/feed/CommunityContentState;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->_communityState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 70
    .line 71
    new-instance v3, Lorg/wikipedia/feed/HomeViewModel$communityState$1;

    .line 72
    .line 73
    const/4 v4, 0x4

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-direct {v3, v4, v5, v6}, Lorg/wikipedia/feed/HomeViewModel$communityState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x3

    .line 80
    new-array v8, v7, [Lkotlinx/coroutines/flow/Flow;

    .line 81
    .line 82
    aput-object v2, v8, v5

    .line 83
    .line 84
    sget-object v2, Lorg/wikipedia/settings/SettingsRepository;->hiddenModules:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 85
    .line 86
    const/4 v9, 0x1

    .line 87
    aput-object v2, v8, v9

    .line 88
    .line 89
    sget-object v2, Lorg/wikipedia/settings/SettingsRepository;->hiddenCards:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 90
    .line 91
    const/4 v10, 0x2

    .line 92
    aput-object v2, v8, v10

    .line 93
    .line 94
    new-instance v2, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 95
    .line 96
    const/4 v11, 0x6

    .line 97
    invoke-direct {v2, v11, v8, v3}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    new-instance v8, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 105
    .line 106
    const-wide/16 v12, 0x1388

    .line 107
    .line 108
    const-wide v14, 0x7fffffffffffffffL

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    invoke-direct {v8, v12, v13, v14, v15}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    .line 114
    .line 115
    .line 116
    new-instance v11, Lorg/wikipedia/feed/CommunityContentState;

    .line 117
    .line 118
    invoke-direct {v11}, Lorg/wikipedia/feed/CommunityContentState;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v3, v8, v11}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->communityState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 126
    .line 127
    sget-object v2, Lorg/wikipedia/settings/Prefs;->placesLastLocationFlow:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 128
    .line 129
    new-instance v3, Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    .line 130
    .line 131
    const/4 v8, 0x5

    .line 132
    invoke-direct {v3, v7, v8, v6}, Landroidx/paging/CachedPagingDataKt$cachedIn$5;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    new-instance v11, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 136
    .line 137
    invoke-direct {v11, v2, v1, v3, v9}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/Function;I)V

    .line 138
    .line 139
    .line 140
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;

    .line 141
    .line 142
    invoke-direct {v1, v0, v6, v5}, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 143
    .line 144
    .line 145
    invoke-static {v11, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;

    .line 150
    .line 151
    invoke-direct {v2, v7, v10, v6}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 152
    .line 153
    .line 154
    new-instance v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 155
    .line 156
    invoke-direct {v3, v10, v1, v2}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v2, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 164
    .line 165
    invoke-direct {v2, v12, v13, v14, v15}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    .line 166
    .line 167
    .line 168
    invoke-static {v3, v1, v2, v6}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel;->placesModule:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 173
    .line 174
    const v1, 0x7f12066f

    .line 175
    .line 176
    .line 177
    const v2, 0x7f120671

    .line 178
    .line 179
    .line 180
    const v3, 0x7f120668

    .line 181
    .line 182
    .line 183
    const v11, 0x7f120667

    .line 184
    .line 185
    .line 186
    filled-new-array {v3, v11, v1, v2}, [I

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .line 194
    .line 195
    move v3, v5

    .line 196
    :goto_1
    if-ge v3, v4, :cond_1

    .line 197
    .line 198
    aget v11, v1, v3

    .line 199
    .line 200
    sget-object v12, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 201
    .line 202
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    sget-object v2, Lorg/wikipedia/settings/Prefs;->preferenceKeyChangeFlow:Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 221
    .line 222
    new-instance v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 223
    .line 224
    invoke-direct {v3, v5, v2, v1}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    new-instance v1, Landroidx/paging/PageFetcher$flow$1$1;

    .line 228
    .line 229
    invoke-direct {v1, v10, v10, v6}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 230
    .line 231
    .line 232
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 233
    .line 234
    invoke-direct {v2, v1, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 238
    .line 239
    const/16 v3, 0x9

    .line 240
    .line 241
    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v2, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 245
    .line 246
    new-instance v3, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 247
    .line 248
    invoke-direct {v3, v2, v10}, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lkotlinx/coroutines/flow/SafeFlow;

    .line 252
    .line 253
    const/16 v11, 0x8

    .line 254
    .line 255
    invoke-direct {v2, v11, v3}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    new-array v3, v10, [Lkotlinx/coroutines/flow/Flow;

    .line 259
    .line 260
    aput-object v1, v3, v5

    .line 261
    .line 262
    aput-object v2, v3, v9

    .line 263
    .line 264
    new-instance v1, Lkotlin/collections/IndexingIterable;

    .line 265
    .line 266
    invoke-direct {v1, v10, v3}, Lkotlin/collections/IndexingIterable;-><init>(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    new-instance v16, Lkotlinx/coroutines/flow/ChannelFlowBuilder;

    .line 270
    .line 271
    sget-object v20, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 272
    .line 273
    const/16 v21, 0x1

    .line 274
    .line 275
    sget-object v18, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 276
    .line 277
    const/16 v19, -0x2

    .line 278
    .line 279
    move-object/from16 v17, v1

    .line 280
    .line 281
    invoke-direct/range {v16 .. v21}, Lkotlinx/coroutines/flow/ChannelFlowBuilder;-><init>(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;I)V

    .line 282
    .line 283
    .line 284
    move-object/from16 v1, v16

    .line 285
    .line 286
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;

    .line 287
    .line 288
    invoke-direct {v2, v0, v6, v9}, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;

    .line 296
    .line 297
    invoke-direct {v2, v7, v9, v6}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 298
    .line 299
    .line 300
    new-instance v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 301
    .line 302
    invoke-direct {v3, v10, v1, v2}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v3, v1, v2, v6}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iget-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->_wikiSite:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 318
    .line 319
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 320
    .line 321
    const/4 v11, 0x7

    .line 322
    invoke-direct {v3, v11, v0, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    new-instance v3, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;

    .line 330
    .line 331
    invoke-direct {v3, v7, v5, v6}, Lorg/wikipedia/feed/HomeViewModel$gameModule$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 332
    .line 333
    .line 334
    new-instance v12, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 335
    .line 336
    invoke-direct {v12, v10, v2, v3}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {v12, v2, v3, v6}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    iget-object v3, v0, Lorg/wikipedia/feed/HomeViewModel;->placesModule:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 352
    .line 353
    new-instance v12, Lorg/wikipedia/feed/HomeViewModel$communityState$1;

    .line 354
    .line 355
    invoke-direct {v12, v4, v9, v6}, Lorg/wikipedia/feed/HomeViewModel$communityState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 356
    .line 357
    .line 358
    new-array v13, v7, [Lkotlinx/coroutines/flow/Flow;

    .line 359
    .line 360
    aput-object v3, v13, v5

    .line 361
    .line 362
    aput-object v1, v13, v9

    .line 363
    .line 364
    aput-object v2, v13, v10

    .line 365
    .line 366
    new-instance v1, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 367
    .line 368
    const/4 v2, 0x6

    .line 369
    invoke-direct {v1, v2, v13, v12}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    new-instance v2, Lorg/wikipedia/feed/ForYouContentState;

    .line 373
    .line 374
    invoke-direct {v2}, Lorg/wikipedia/feed/ForYouContentState;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->_forYouState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 382
    .line 383
    new-instance v3, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;

    .line 384
    .line 385
    invoke-direct {v3, v8, v5, v6}, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 386
    .line 387
    .line 388
    new-array v4, v4, [Lkotlinx/coroutines/flow/Flow;

    .line 389
    .line 390
    aput-object v2, v4, v5

    .line 391
    .line 392
    sget-object v2, Lorg/wikipedia/settings/SettingsRepository;->hiddenModules:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 393
    .line 394
    aput-object v2, v4, v9

    .line 395
    .line 396
    sget-object v2, Lorg/wikipedia/settings/SettingsRepository;->hiddenCards:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 397
    .line 398
    aput-object v2, v4, v10

    .line 399
    .line 400
    aput-object v1, v4, v7

    .line 401
    .line 402
    new-instance v1, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 403
    .line 404
    invoke-direct {v1, v11, v4, v3}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    new-instance v4, Lorg/wikipedia/feed/ForYouContentState;

    .line 416
    .line 417
    invoke-direct {v4}, Lorg/wikipedia/feed/ForYouContentState;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel;->forYouState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 425
    .line 426
    new-instance v1, Lorg/wikipedia/feed/TabsState;

    .line 427
    .line 428
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 429
    .line 430
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    invoke-direct {v1, v2, v5}, Lorg/wikipedia/feed/TabsState;-><init>(IZ)V

    .line 439
    .line 440
    .line 441
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel;->_tabsState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 446
    .line 447
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 448
    .line 449
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 450
    .line 451
    .line 452
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->tabsState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 453
    .line 454
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 455
    .line 456
    invoke-direct {v1, v0, v5}, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;I)V

    .line 457
    .line 458
    .line 459
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel;->communityHandler:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 460
    .line 461
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 462
    .line 463
    invoke-direct {v1, v0, v9}, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;I)V

    .line 464
    .line 465
    .line 466
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel;->forYouHandler:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 467
    .line 468
    new-instance v1, Lorg/wikipedia/compose/components/NotificationBellState;

    .line 469
    .line 470
    invoke-direct {v1, v5, v5}, Lorg/wikipedia/compose/components/NotificationBellState;-><init>(IZ)V

    .line 471
    .line 472
    .line 473
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel;->_unreadCount:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 478
    .line 479
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 480
    .line 481
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 482
    .line 483
    .line 484
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel;->unreadCount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 485
    .line 486
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 491
    .line 492
    invoke-direct {v2, v10, v5, v6}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 493
    .line 494
    .line 495
    invoke-static {v1, v6, v6, v2, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 496
    .line 497
    .line 498
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$2;

    .line 503
    .line 504
    invoke-direct {v2, v0, v6, v5}, Lorg/wikipedia/feed/HomeViewModel$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 505
    .line 506
    .line 507
    invoke-static {v1, v6, v6, v2, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 508
    .line 509
    .line 510
    return-void
.end method


# virtual methods
.method public final buildDiscoverModule(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v6, :cond_2

    .line 38
    .line 39
    if-ne v2, v5, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->L$1:Ljava/util/List;

    .line 42
    .line 43
    iget-object v0, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->L$0:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v3

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 63
    .line 64
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    new-instance p0, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    const/16 v0, 0x30

    .line 74
    .line 75
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 76
    .line 77
    invoke-direct {p0, v1, p1, v3, v0}, Lorg/wikipedia/feed/ForYouModule$Discover;-><init>(Ljava/util/List;ZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;I)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_4
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getResetRecommendedReadingList()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput v6, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->label:I

    .line 86
    .line 87
    sget-object v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->INSTANCE:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 88
    .line 89
    invoke-virtual {v2, p1, v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->generateRecommendedReadingList(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-ne p1, v1, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 97
    .line 98
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    return-object v3

    .line 109
    :cond_6
    iput-object p1, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->L$0:Ljava/util/List;

    .line 110
    .line 111
    iput-object v2, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->L$1:Ljava/util/List;

    .line 112
    .line 113
    iput v5, v0, Lorg/wikipedia/feed/HomeViewModel$buildDiscoverModule$1;->label:I

    .line 114
    .line 115
    invoke-virtual {p0, v2, v0}, Lorg/wikipedia/feed/HomeViewModel;->updateMissingExtracts(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    if-ne p0, v1, :cond_7

    .line 120
    .line 121
    :goto_2
    return-object v1

    .line 122
    :cond_7
    move-object v0, p1

    .line 123
    move-object p0, v2

    .line 124
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    .line 125
    .line 126
    const/16 v1, 0xa

    .line 127
    .line 128
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_8

    .line 144
    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 150
    .line 151
    new-instance v2, Lorg/wikipedia/feed/model/DiscoverCard;

    .line 152
    .line 153
    new-instance v7, Lorg/wikipedia/page/PageTitle;

    .line 154
    .line 155
    iget-object v8, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->apiTitle:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v9, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 158
    .line 159
    iget-object v10, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->thumbUrl:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v11, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->description:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v12, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->displayTitle:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v13, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->extract:Ljava/lang/String;

    .line 166
    .line 167
    invoke-direct/range {v7 .. v13}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v7}, Lorg/wikipedia/feed/model/DiscoverCard;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-le p0, v4, :cond_9

    .line 182
    .line 183
    new-instance p0, Lorg/wikipedia/feed/model/SeeAllRecommendationCard;

    .line 184
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :cond_9
    new-instance p0, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 193
    .line 194
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 195
    .line 196
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/16 v1, 0x10

    .line 201
    .line 202
    invoke-direct {p0, p1, v6, v0, v1}, Lorg/wikipedia/feed/ForYouModule$Discover;-><init>(Ljava/util/List;ZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;I)V

    .line 203
    .line 204
    .line 205
    return-object p0
.end method

.method public final buildGameModule(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->I$2:I

    .line 39
    .line 40
    iget v2, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->I$1:I

    .line 41
    .line 42
    iget v6, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->I$0:I

    .line 43
    .line 44
    iget-object v7, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->L$6:Ljava/util/Iterator;

    .line 45
    .line 46
    iget-object v8, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->L$4:Ljava/util/Collection;

    .line 47
    .line 48
    check-cast v8, Ljava/util/Collection;

    .line 49
    .line 50
    iget-object v9, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->L$1:Lj$/time/LocalDate;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v4

    .line 62
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    move-object v7, p1

    .line 79
    move-object v9, p2

    .line 80
    move-object v8, v2

    .line 81
    move p1, v5

    .line 82
    move v2, p1

    .line 83
    move v6, v2

    .line 84
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_6

    .line 89
    .line 90
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lorg/wikipedia/games/WikiGames;

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iput-object v9, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->L$1:Lj$/time/LocalDate;

    .line 100
    .line 101
    move-object v10, v8

    .line 102
    check-cast v10, Ljava/util/Collection;

    .line 103
    .line 104
    iput-object v10, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->L$4:Ljava/util/Collection;

    .line 105
    .line 106
    iput-object v7, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->L$6:Ljava/util/Iterator;

    .line 107
    .line 108
    iput v6, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->I$0:I

    .line 109
    .line 110
    iput v2, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->I$1:I

    .line 111
    .line 112
    iput p1, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->I$2:I

    .line 113
    .line 114
    iput v3, v0, Lorg/wikipedia/feed/HomeViewModel$buildGameModule$1;->label:I

    .line 115
    .line 116
    invoke-virtual {p0, p2, v9, v0}, Lorg/wikipedia/feed/HomeViewModel;->buildWikiGame(Lorg/wikipedia/games/WikiGames;Lj$/time/LocalDate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-ne p2, v1, :cond_4

    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_4
    :goto_2
    check-cast p2, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 124
    .line 125
    if-eqz p2, :cond_5

    .line 126
    .line 127
    new-instance v10, Lorg/wikipedia/feed/model/WikiGameCard;

    .line 128
    .line 129
    invoke-virtual {v9}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-direct {v10, p2, v11}, Lorg/wikipedia/feed/model/WikiGameCard;-><init>(Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move-object v10, v4

    .line 141
    :goto_3
    if-eqz v10, :cond_3

    .line 142
    .line 143
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    check-cast v8, Ljava/util/List;

    .line 148
    .line 149
    new-instance p0, Lorg/wikipedia/feed/model/GamesModulePromptCard;

    .line 150
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {v8, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance p1, Lorg/wikipedia/feed/ForYouModule$Games;

    .line 159
    .line 160
    invoke-direct {p1, v5, v5, p0, v5}, Lorg/wikipedia/feed/ForYouModule$Games;-><init>(IILjava/util/List;Z)V

    .line 161
    .line 162
    .line 163
    return-object p1
.end method

.method public final buildPlacesModule(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 51
    .line 52
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 57
    .line 58
    invoke-static {p1, v2}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 67
    .line 68
    invoke-static {p1, v2}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance v5, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;-><init>(IILjava/util/List;ZZ)V

    .line 82
    .line 83
    .line 84
    return-object v5

    .line 85
    :cond_4
    :goto_1
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 86
    .line 87
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesLastLocationAndZoomLevel()Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_8

    .line 92
    .line 93
    iget-object p1, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Landroid/location/Location;

    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    iput v4, v0, Lorg/wikipedia/feed/HomeViewModel$buildPlacesModule$1;->label:I

    .line 101
    .line 102
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/feed/HomeViewModel;->getPlacesCards(Landroid/location/Location;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v1, :cond_6

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_6
    :goto_2
    move-object v7, p1

    .line 110
    check-cast v7, Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_7

    .line 117
    .line 118
    return-object v3

    .line 119
    :cond_7
    new-instance v4, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v5, 0x0

    .line 124
    const/4 v8, 0x1

    .line 125
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;-><init>(IILjava/util/List;ZZ)V

    .line 126
    .line 127
    .line 128
    return-object v4

    .line 129
    :cond_8
    :goto_3
    new-instance v5, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    const/4 v6, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;-><init>(IILjava/util/List;ZZ)V

    .line 136
    .line 137
    .line 138
    return-object v5
.end method

.method public final buildWikiGame(Lorg/wikipedia/games/WikiGames;Lj$/time/LocalDate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p3, Lorg/wikipedia/feed/HomeViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    aget p1, p3, p1

    .line 57
    .line 58
    if-ne p1, v4, :cond_4

    .line 59
    .line 60
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 61
    .line 62
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 63
    .line 64
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    iput v4, v0, Lorg/wikipedia/feed/HomeViewModel$buildWikiGame$1;->label:I

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    sget-object p3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;

    .line 74
    .line 75
    invoke-virtual {p3, p0, p2, p1, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->getGameState(Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    if-ne p3, v1, :cond_3

    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_3
    :goto_1
    check-cast p3, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

    .line 83
    .line 84
    new-instance p0, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 85
    .line 86
    invoke-direct {p0, p3}, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;-><init>(Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 91
    .line 92
    .line 93
    return-object v3
.end method

.method public final fetchForYouModules(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 34
    .line 35
    const-string v7, "_"

    .line 36
    .line 37
    const-string v8, " "

    .line 38
    .line 39
    const-string v9, "morelike:"

    .line 40
    .line 41
    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 42
    .line 43
    iget-object v0, v0, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    .line 45
    const/4 v15, 0x0

    .line 46
    packed-switch v4, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v15

    .line 55
    :pswitch_0
    iget-object v0, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lorg/wikipedia/feed/model/RandomCard;

    .line 58
    .line 59
    iget-object v0, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 62
    .line 63
    iget-object v0, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ljava/util/List;

    .line 66
    .line 67
    iget-object v0, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/util/List;

    .line 70
    .line 71
    iget-object v0, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 72
    .line 73
    check-cast v0, Ljava/util/Set;

    .line 74
    .line 75
    iget-object v0, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :pswitch_1
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 82
    .line 83
    iget-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v5, Ljava/util/List;

    .line 86
    .line 87
    iget-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v5, Ljava/util/List;

    .line 90
    .line 91
    iget-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 92
    .line 93
    iget-object v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 94
    .line 95
    check-cast v7, Ljava/util/Set;

    .line 96
    .line 97
    iget-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_32

    .line 103
    .line 104
    :pswitch_2
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 105
    .line 106
    iget-object v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v7, Ljava/util/List;

    .line 109
    .line 110
    iget-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v8, Ljava/util/List;

    .line 113
    .line 114
    iget-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 115
    .line 116
    iget-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 117
    .line 118
    check-cast v9, Ljava/util/Set;

    .line 119
    .line 120
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 121
    .line 122
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_2e

    .line 126
    .line 127
    :pswitch_3
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 128
    .line 129
    iget-object v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v7, Ljava/util/List;

    .line 132
    .line 133
    iget-object v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v7, Ljava/util/List;

    .line 136
    .line 137
    iget-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v8, Ljava/util/List;

    .line 140
    .line 141
    iget-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v9, Ljava/util/List;

    .line 144
    .line 145
    iget-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 146
    .line 147
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 148
    .line 149
    check-cast v11, Ljava/util/Set;

    .line 150
    .line 151
    iget-object v12, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 152
    .line 153
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    move-object v13, v12

    .line 157
    goto/16 :goto_2a

    .line 158
    .line 159
    :pswitch_4
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 160
    .line 161
    iget v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 162
    .line 163
    iget-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v8, Ljava/util/List;

    .line 166
    .line 167
    iget-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v9, Ljava/util/List;

    .line 170
    .line 171
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v11, Ljava/util/List;

    .line 174
    .line 175
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 176
    .line 177
    iget-object v12, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 178
    .line 179
    check-cast v12, Ljava/util/Set;

    .line 180
    .line 181
    iget-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 182
    .line 183
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_29

    .line 187
    .line 188
    :pswitch_5
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 189
    .line 190
    iget-object v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$9:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v8, Lorg/wikipedia/history/HistoryEntry;

    .line 195
    .line 196
    iget-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v9, Ljava/util/List;

    .line 199
    .line 200
    iget-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v9, Ljava/util/List;

    .line 203
    .line 204
    iget-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v13, Ljava/util/List;

    .line 207
    .line 208
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 209
    .line 210
    iget-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 211
    .line 212
    check-cast v6, Ljava/util/Set;

    .line 213
    .line 214
    iget-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 215
    .line 216
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v23, v12

    .line 220
    .line 221
    goto/16 :goto_21

    .line 222
    .line 223
    :pswitch_6
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 224
    .line 225
    iget v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 226
    .line 227
    iget-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v6, Ljava/util/List;

    .line 230
    .line 231
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v11, Ljava/util/List;

    .line 234
    .line 235
    iget-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 236
    .line 237
    iget-object v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 238
    .line 239
    check-cast v10, Ljava/util/Set;

    .line 240
    .line 241
    iget-object v15, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 242
    .line 243
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v23, v13

    .line 247
    .line 248
    move-object v13, v11

    .line 249
    move-object/from16 v11, v23

    .line 250
    .line 251
    move-object/from16 v23, v12

    .line 252
    .line 253
    move-object v12, v9

    .line 254
    move-object v9, v6

    .line 255
    move-object v6, v10

    .line 256
    move v10, v4

    .line 257
    move v4, v5

    .line 258
    move-object v5, v15

    .line 259
    goto/16 :goto_1d

    .line 260
    .line 261
    :pswitch_7
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$3:I

    .line 262
    .line 263
    iget v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$2:I

    .line 264
    .line 265
    iget v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 266
    .line 267
    iget v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 268
    .line 269
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$9:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v13, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 274
    .line 275
    iget-object v15, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v15, Ljava/util/Iterator;

    .line 278
    .line 279
    iget-object v14, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v14, Ljava/lang/Iterable;

    .line 282
    .line 283
    iget-object v14, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 284
    .line 285
    move-object/from16 v17, v1

    .line 286
    .line 287
    iget-object v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 288
    .line 289
    check-cast v1, Ljava/util/Set;

    .line 290
    .line 291
    move-object/from16 p1, v1

    .line 292
    .line 293
    iget-object v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 294
    .line 295
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    move-object/from16 v23, v12

    .line 299
    .line 300
    move-object v12, v9

    .line 301
    move-object v9, v2

    .line 302
    move-object v2, v1

    .line 303
    move-object/from16 v1, v17

    .line 304
    .line 305
    move-object/from16 v17, v15

    .line 306
    .line 307
    move-object v15, v14

    .line 308
    move-object v14, v13

    .line 309
    move-object v13, v11

    .line 310
    :goto_1
    move v11, v10

    .line 311
    move-object/from16 v10, p1

    .line 312
    .line 313
    goto/16 :goto_17

    .line 314
    .line 315
    :pswitch_8
    move-object/from16 v17, v1

    .line 316
    .line 317
    iget v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 318
    .line 319
    iget-object v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 320
    .line 321
    iget-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 322
    .line 323
    check-cast v5, Ljava/util/Set;

    .line 324
    .line 325
    iget-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 326
    .line 327
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    move-object/from16 v24, v9

    .line 331
    .line 332
    move-object/from16 v23, v12

    .line 333
    .line 334
    const/4 v14, 0x5

    .line 335
    move-object v9, v6

    .line 336
    move-object v6, v5

    .line 337
    move-object v5, v2

    .line 338
    move v2, v1

    .line 339
    move-object/from16 v1, v17

    .line 340
    .line 341
    goto/16 :goto_15

    .line 342
    .line 343
    :pswitch_9
    move-object/from16 v17, v1

    .line 344
    .line 345
    iget v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$3:I

    .line 346
    .line 347
    iget v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$2:I

    .line 348
    .line 349
    iget v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 350
    .line 351
    iget v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 352
    .line 353
    iget-object v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v10, Lorg/wikipedia/topics/ArticleTopic;

    .line 356
    .line 357
    iget-object v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v10, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 360
    .line 361
    iget-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v11, Ljava/util/Iterator;

    .line 364
    .line 365
    iget-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 366
    .line 367
    iget-object v14, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 368
    .line 369
    check-cast v14, Ljava/util/Set;

    .line 370
    .line 371
    iget-object v15, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 372
    .line 373
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v24, v9

    .line 377
    .line 378
    move-object/from16 v23, v12

    .line 379
    .line 380
    move v9, v4

    .line 381
    move-object v4, v13

    .line 382
    move v13, v5

    .line 383
    move-object v5, v14

    .line 384
    move-object v14, v10

    .line 385
    move v10, v1

    .line 386
    move-object/from16 v1, v17

    .line 387
    .line 388
    goto/16 :goto_d

    .line 389
    .line 390
    :pswitch_a
    move-object/from16 v17, v1

    .line 391
    .line 392
    iget v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 393
    .line 394
    iget-object v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 395
    .line 396
    iget-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 397
    .line 398
    check-cast v5, Ljava/util/Set;

    .line 399
    .line 400
    iget-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 401
    .line 402
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    move-object v10, v6

    .line 406
    move-object v6, v5

    .line 407
    move-object v5, v4

    .line 408
    move v4, v1

    .line 409
    move-object/from16 v1, v17

    .line 410
    .line 411
    goto/16 :goto_7

    .line 412
    .line 413
    :pswitch_b
    move-object/from16 v17, v1

    .line 414
    .line 415
    iget v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 416
    .line 417
    iget-object v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 418
    .line 419
    iget-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 420
    .line 421
    check-cast v5, Ljava/util/Set;

    .line 422
    .line 423
    iget-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 424
    .line 425
    :try_start_0
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .line 427
    .line 428
    goto :goto_3

    .line 429
    :pswitch_c
    move-object/from16 v17, v1

    .line 430
    .line 431
    iget v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 432
    .line 433
    iget-object v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 434
    .line 435
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    move-object v6, v4

    .line 439
    move-object/from16 v4, v17

    .line 440
    .line 441
    goto :goto_2

    .line 442
    :pswitch_d
    move-object/from16 v17, v1

    .line 443
    .line 444
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    new-instance v1, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .line 451
    .line 452
    sget-object v4, Lorg/wikipedia/settings/SettingsRepository;->hiddenCards:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 453
    .line 454
    iput-object v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 455
    .line 456
    move/from16 v5, p1

    .line 457
    .line 458
    iput v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 459
    .line 460
    const/4 v6, 0x1

    .line 461
    iput v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 462
    .line 463
    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    if-ne v4, v3, :cond_1

    .line 468
    .line 469
    goto/16 :goto_34

    .line 470
    .line 471
    :cond_1
    move-object v6, v1

    .line 472
    move v1, v5

    .line 473
    :goto_2
    move-object v5, v4

    .line 474
    check-cast v5, Ljava/util/Set;

    .line 475
    .line 476
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 477
    .line 478
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 479
    .line 480
    .line 481
    new-instance v10, Lorg/wikipedia/feed/ForYouCollectionSaved;

    .line 482
    .line 483
    sget-object v11, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 484
    .line 485
    const/4 v13, 0x0

    .line 486
    invoke-direct {v10, v13, v11}, Lorg/wikipedia/feed/ForYouCollectionSaved;-><init>(Lj$/time/LocalDateTime;Ljava/util/Map;)V

    .line 487
    .line 488
    .line 489
    iput-object v10, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 490
    .line 491
    :try_start_1
    sget-object v10, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 492
    .line 493
    new-instance v11, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$2;

    .line 494
    .line 495
    const/4 v14, 0x1

    .line 496
    invoke-direct {v11, v4, v13, v14}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;I)V

    .line 497
    .line 498
    .line 499
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 500
    .line 501
    move-object v13, v5

    .line 502
    check-cast v13, Ljava/util/Set;

    .line 503
    .line 504
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 505
    .line 506
    iput-object v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 507
    .line 508
    iput v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 509
    .line 510
    const/4 v13, 0x2

    .line 511
    iput v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 512
    .line 513
    invoke-static {v10, v11, v2}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 517
    if-ne v10, v3, :cond_2

    .line 518
    .line 519
    goto/16 :goto_34

    .line 520
    .line 521
    :catch_0
    const-string v10, "Failed to load modules from cache."

    .line 522
    .line 523
    invoke-static {v10}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :cond_2
    :goto_3
    iget-object v10, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v10, Lorg/wikipedia/feed/ForYouCollectionSaved;

    .line 529
    .line 530
    iget-object v10, v10, Lorg/wikipedia/feed/ForYouCollectionSaved;->dateTime:Lj$/time/LocalDateTime;

    .line 531
    .line 532
    if-eqz v10, :cond_8

    .line 533
    .line 534
    invoke-virtual {v10}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 535
    .line 536
    .line 537
    move-result-object v10

    .line 538
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 539
    .line 540
    .line 541
    move-result-object v11

    .line 542
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    if-eqz v10, :cond_8

    .line 547
    .line 548
    iget-object v10, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v10, Lorg/wikipedia/feed/ForYouCollectionSaved;

    .line 551
    .line 552
    iget-object v10, v10, Lorg/wikipedia/feed/ForYouCollectionSaved;->modulesPerLanguage:Ljava/util/Map;

    .line 553
    .line 554
    iget-object v11, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 555
    .line 556
    invoke-virtual {v11}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v11

    .line 560
    check-cast v11, Lorg/wikipedia/dataclient/WikiSite;

    .line 561
    .line 562
    iget-object v11, v11, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 563
    .line 564
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v10

    .line 568
    if-eqz v10, :cond_8

    .line 569
    .line 570
    const-string v1, "Loading modules from cache..."

    .line 571
    .line 572
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v1, Lorg/wikipedia/feed/ForYouCollectionSaved;

    .line 578
    .line 579
    iget-object v1, v1, Lorg/wikipedia/feed/ForYouCollectionSaved;->modulesPerLanguage:Ljava/util/Map;

    .line 580
    .line 581
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 582
    .line 583
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 588
    .line 589
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 590
    .line 591
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, Ljava/util/List;

    .line 596
    .line 597
    if-nez v0, :cond_3

    .line 598
    .line 599
    goto :goto_4

    .line 600
    :cond_3
    move-object v12, v0

    .line 601
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .line 605
    .line 606
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    if-eqz v2, :cond_7

    .line 615
    .line 616
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    check-cast v2, Lorg/wikipedia/feed/ForYouModule;

    .line 621
    .line 622
    invoke-virtual {v2}, Lorg/wikipedia/feed/ForYouModule;->getCards()Ljava/util/List;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    new-instance v4, Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    :cond_5
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    if-eqz v6, :cond_6

    .line 640
    .line 641
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    move-object v7, v6

    .line 646
    check-cast v7, Lorg/wikipedia/feed/model/ForYouCard;

    .line 647
    .line 648
    invoke-virtual {v7}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v7

    .line 652
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v7

    .line 656
    if-nez v7, :cond_5

    .line 657
    .line 658
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    goto :goto_6

    .line 662
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    if-nez v3, :cond_4

    .line 667
    .line 668
    invoke-virtual {v2, v4}, Lorg/wikipedia/feed/ForYouModule;->withCards(Ljava/util/ArrayList;)Lorg/wikipedia/feed/ForYouModule;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    goto :goto_5

    .line 676
    :cond_7
    return-object v0

    .line 677
    :cond_8
    const-string v10, "Loading modules from network..."

    .line 678
    .line 679
    invoke-static {v10}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    sget-object v10, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 683
    .line 684
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 685
    .line 686
    .line 687
    move-result-object v10

    .line 688
    invoke-virtual {v10}, Lorg/wikipedia/database/AppDatabase;->topicInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 689
    .line 690
    .line 691
    move-result-object v10

    .line 692
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 693
    .line 694
    move-object v11, v5

    .line 695
    check-cast v11, Ljava/util/Set;

    .line 696
    .line 697
    iput-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 698
    .line 699
    iput-object v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 700
    .line 701
    iput v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 702
    .line 703
    const/4 v11, 0x3

    .line 704
    iput v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 705
    .line 706
    iget-object v10, v10, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 707
    .line 708
    new-instance v11, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 709
    .line 710
    const/16 v13, 0xc

    .line 711
    .line 712
    invoke-direct {v11, v13}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 713
    .line 714
    .line 715
    const/4 v13, 0x0

    .line 716
    const/4 v14, 0x1

    .line 717
    invoke-static {v10, v14, v13, v11, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v10

    .line 721
    if-ne v10, v3, :cond_9

    .line 722
    .line 723
    goto/16 :goto_34

    .line 724
    .line 725
    :cond_9
    move-object/from16 v34, v4

    .line 726
    .line 727
    move v4, v1

    .line 728
    move-object v1, v10

    .line 729
    move-object v10, v6

    .line 730
    move-object v6, v5

    .line 731
    move-object/from16 v5, v34

    .line 732
    .line 733
    :goto_7
    check-cast v1, Ljava/lang/Iterable;

    .line 734
    .line 735
    new-instance v11, Ljava/util/HashSet;

    .line 736
    .line 737
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 738
    .line 739
    .line 740
    new-instance v13, Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .line 744
    .line 745
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    :cond_a
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 750
    .line 751
    .line 752
    move-result v14

    .line 753
    if-eqz v14, :cond_b

    .line 754
    .line 755
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v14

    .line 759
    move-object v15, v14

    .line 760
    check-cast v15, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 761
    .line 762
    iget-object v15, v15, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;->topicId:Ljava/lang/String;

    .line 763
    .line 764
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v15

    .line 768
    if-eqz v15, :cond_a

    .line 769
    .line 770
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    goto :goto_8

    .line 774
    :cond_b
    const/4 v14, 0x5

    .line 775
    invoke-static {v13, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    move-object v11, v1

    .line 784
    move v1, v4

    .line 785
    move-object v4, v5

    .line 786
    move-object v5, v6

    .line 787
    move-object v6, v10

    .line 788
    const/4 v10, 0x0

    .line 789
    const/4 v13, 0x0

    .line 790
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    .line 792
    .line 793
    move-result v14

    .line 794
    if-eqz v14, :cond_1d

    .line 795
    .line 796
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v14

    .line 800
    add-int/lit8 v15, v10, 0x1

    .line 801
    .line 802
    if-ltz v10, :cond_1c

    .line 803
    .line 804
    check-cast v14, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 805
    .line 806
    sget-object v17, Lorg/wikipedia/topics/ArticleTopics;->all:Ljava/util/List;

    .line 807
    .line 808
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 809
    .line 810
    .line 811
    move-result-object v17

    .line 812
    :goto_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 813
    .line 814
    .line 815
    move-result v18

    .line 816
    if-eqz v18, :cond_d

    .line 817
    .line 818
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v18

    .line 822
    move-object/from16 p1, v5

    .line 823
    .line 824
    move-object/from16 v5, v18

    .line 825
    .line 826
    check-cast v5, Lorg/wikipedia/topics/ArticleTopic;

    .line 827
    .line 828
    iget-object v5, v5, Lorg/wikipedia/topics/ArticleTopic;->topicId:Ljava/lang/String;

    .line 829
    .line 830
    move-object/from16 v23, v12

    .line 831
    .line 832
    iget-object v12, v14, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;->topicId:Ljava/lang/String;

    .line 833
    .line 834
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-eqz v5, :cond_c

    .line 839
    .line 840
    goto :goto_b

    .line 841
    :cond_c
    move-object/from16 v5, p1

    .line 842
    .line 843
    move-object/from16 v12, v23

    .line 844
    .line 845
    goto :goto_a

    .line 846
    :cond_d
    move-object/from16 p1, v5

    .line 847
    .line 848
    move-object/from16 v23, v12

    .line 849
    .line 850
    const/16 v18, 0x0

    .line 851
    .line 852
    :goto_b
    move-object/from16 v5, v18

    .line 853
    .line 854
    check-cast v5, Lorg/wikipedia/topics/ArticleTopic;

    .line 855
    .line 856
    sget-object v12, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 857
    .line 858
    iget-object v12, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 859
    .line 860
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v12

    .line 864
    check-cast v12, Lorg/wikipedia/dataclient/WikiSite;

    .line 865
    .line 866
    invoke-static {v12}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 867
    .line 868
    .line 869
    move-result-object v17

    .line 870
    if-eqz v5, :cond_e

    .line 871
    .line 872
    iget-object v5, v5, Lorg/wikipedia/topics/ArticleTopic;->queryTopicId:Ljava/lang/String;

    .line 873
    .line 874
    goto :goto_c

    .line 875
    :cond_e
    iget-object v5, v14, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;->topicId:Ljava/lang/String;

    .line 876
    .line 877
    :goto_c
    const-string v12, "articletopic:"

    .line 878
    .line 879
    move-object/from16 v24, v9

    .line 880
    .line 881
    const-string v9, "^95"

    .line 882
    .line 883
    invoke-static {v12, v5, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v18

    .line 887
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 888
    .line 889
    move-object/from16 v5, p1

    .line 890
    .line 891
    check-cast v5, Ljava/util/Set;

    .line 892
    .line 893
    iput-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 894
    .line 895
    iput-object v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 896
    .line 897
    iput-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 898
    .line 899
    const/4 v5, 0x0

    .line 900
    iput-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 901
    .line 902
    iput-object v14, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 903
    .line 904
    iput-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 905
    .line 906
    iput v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 907
    .line 908
    iput v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 909
    .line 910
    iput v15, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$2:I

    .line 911
    .line 912
    iput v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$3:I

    .line 913
    .line 914
    const/4 v5, 0x4

    .line 915
    iput v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 916
    .line 917
    const/16 v19, 0x14

    .line 918
    .line 919
    const-string v20, "classic_noboostlinks"

    .line 920
    .line 921
    const-string v21, "random"

    .line 922
    .line 923
    move-object/from16 v22, v2

    .line 924
    .line 925
    invoke-interface/range {v17 .. v22}, Lorg/wikipedia/dataclient/Service;->getArticlesByTopic(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    move-object/from16 v5, v22

    .line 930
    .line 931
    if-ne v2, v3, :cond_f

    .line 932
    .line 933
    goto/16 :goto_34

    .line 934
    .line 935
    :cond_f
    move v9, v15

    .line 936
    move-object v15, v6

    .line 937
    move v6, v1

    .line 938
    move-object v1, v2

    .line 939
    move-object v2, v5

    .line 940
    move-object/from16 v5, p1

    .line 941
    .line 942
    :goto_d
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 943
    .line 944
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 945
    .line 946
    if-eqz v1, :cond_16

    .line 947
    .line 948
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 949
    .line 950
    if-eqz v1, :cond_16

    .line 951
    .line 952
    new-instance v12, Ljava/util/ArrayList;

    .line 953
    .line 954
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .line 956
    .line 957
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 962
    .line 963
    .line 964
    move-result v17

    .line 965
    if-eqz v17, :cond_12

    .line 966
    .line 967
    move-object/from16 p1, v1

    .line 968
    .line 969
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    move-object/from16 v17, v2

    .line 974
    .line 975
    move-object v2, v1

    .line 976
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 977
    .line 978
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 979
    .line 980
    if-eqz v2, :cond_10

    .line 981
    .line 982
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->disambiguation:Ljava/lang/String;

    .line 983
    .line 984
    goto :goto_f

    .line 985
    :cond_10
    const/4 v2, 0x0

    .line 986
    :goto_f
    if-nez v2, :cond_11

    .line 987
    .line 988
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    .line 990
    .line 991
    :cond_11
    move-object/from16 v1, p1

    .line 992
    .line 993
    move-object/from16 v2, v17

    .line 994
    .line 995
    goto :goto_e

    .line 996
    :cond_12
    move-object/from16 v17, v2

    .line 997
    .line 998
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 999
    .line 1000
    const/16 v2, 0x18

    .line 1001
    .line 1002
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v12, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 1010
    .line 1011
    const/16 v12, 0x19

    .line 1012
    .line 1013
    invoke-direct {v2, v12}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v1

    .line 1020
    new-instance v2, Ljava/util/ArrayList;

    .line 1021
    .line 1022
    move-object/from16 p1, v4

    .line 1023
    .line 1024
    const/16 v12, 0xa

    .line 1025
    .line 1026
    invoke-static {v1, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1027
    .line 1028
    .line 1029
    move-result v4

    .line 1030
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1031
    .line 1032
    .line 1033
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v4

    .line 1041
    if-eqz v4, :cond_15

    .line 1042
    .line 1043
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v4

    .line 1047
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1048
    .line 1049
    new-instance v25, Lorg/wikipedia/page/PageTitle;

    .line 1050
    .line 1051
    iget-object v12, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 1052
    .line 1053
    move-object/from16 v18, v1

    .line 1054
    .line 1055
    iget-object v1, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->sectionTitle:Ljava/lang/String;

    .line 1056
    .line 1057
    move/from16 v19, v9

    .line 1058
    .line 1059
    iget-object v9, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1060
    .line 1061
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v9

    .line 1065
    move-object/from16 v27, v9

    .line 1066
    .line 1067
    check-cast v27, Lorg/wikipedia/dataclient/WikiSite;

    .line 1068
    .line 1069
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v28

    .line 1073
    iget-object v9, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 1074
    .line 1075
    move-object/from16 v29, v9

    .line 1076
    .line 1077
    iget-object v9, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1078
    .line 1079
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v9

    .line 1083
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 1084
    .line 1085
    iget-object v9, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1086
    .line 1087
    invoke-virtual {v4, v9}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v30

    .line 1091
    move-object/from16 v26, v12

    .line 1092
    .line 1093
    invoke-direct/range {v25 .. v30}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    move-object/from16 v9, v25

    .line 1097
    .line 1098
    if-eqz v1, :cond_14

    .line 1099
    .line 1100
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1101
    .line 1102
    .line 1103
    move-result v12

    .line 1104
    if-nez v12, :cond_13

    .line 1105
    .line 1106
    goto :goto_11

    .line 1107
    :cond_13
    sget-object v12, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1108
    .line 1109
    invoke-static {v1, v8, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    iput-object v1, v9, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 1114
    .line 1115
    :cond_14
    :goto_11
    iget-object v1, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 1116
    .line 1117
    iput-object v1, v9, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 1118
    .line 1119
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    .line 1121
    .line 1122
    move-object/from16 v1, v18

    .line 1123
    .line 1124
    move/from16 v9, v19

    .line 1125
    .line 1126
    goto :goto_10

    .line 1127
    :cond_15
    move/from16 v19, v9

    .line 1128
    .line 1129
    goto :goto_12

    .line 1130
    :cond_16
    move-object/from16 v17, v2

    .line 1131
    .line 1132
    move-object/from16 p1, v4

    .line 1133
    .line 1134
    move/from16 v19, v9

    .line 1135
    .line 1136
    const/4 v2, 0x0

    .line 1137
    :goto_12
    if-nez v2, :cond_17

    .line 1138
    .line 1139
    move-object/from16 v2, v23

    .line 1140
    .line 1141
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 1142
    .line 1143
    const/16 v12, 0xa

    .line 1144
    .line 1145
    invoke-static {v2, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1146
    .line 1147
    .line 1148
    move-result v4

    .line 1149
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1150
    .line 1151
    .line 1152
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v4

    .line 1160
    if-eqz v4, :cond_18

    .line 1161
    .line 1162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v4

    .line 1166
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 1167
    .line 1168
    new-instance v9, Lorg/wikipedia/feed/model/BasedOnInterestCard;

    .line 1169
    .line 1170
    move-object/from16 v18, v2

    .line 1171
    .line 1172
    const/4 v2, 0x0

    .line 1173
    const/4 v12, 0x4

    .line 1174
    invoke-direct {v9, v4, v14, v2, v12}, Lorg/wikipedia/feed/model/BasedOnInterestCard;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;I)V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    move-object/from16 v2, v18

    .line 1181
    .line 1182
    goto :goto_13

    .line 1183
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    .line 1184
    .line 1185
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    :cond_19
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v4

    .line 1196
    if-eqz v4, :cond_1a

    .line 1197
    .line 1198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v4

    .line 1202
    move-object v9, v4

    .line 1203
    check-cast v9, Lorg/wikipedia/feed/model/BasedOnInterestCard;

    .line 1204
    .line 1205
    invoke-virtual {v9}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v9

    .line 1209
    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v9

    .line 1213
    if-nez v9, :cond_19

    .line 1214
    .line 1215
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    .line 1217
    .line 1218
    goto :goto_14

    .line 1219
    :cond_1a
    const/4 v12, 0x4

    .line 1220
    invoke-static {v2, v12}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v2

    .line 1228
    if-nez v2, :cond_1b

    .line 1229
    .line 1230
    new-instance v2, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

    .line 1231
    .line 1232
    invoke-direct {v2, v6, v10, v1}, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;-><init>(IILjava/util/List;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    :cond_1b
    move-object/from16 v4, p1

    .line 1239
    .line 1240
    move v1, v6

    .line 1241
    move-object v6, v15

    .line 1242
    move-object/from16 v2, v17

    .line 1243
    .line 1244
    move/from16 v10, v19

    .line 1245
    .line 1246
    move-object/from16 v12, v23

    .line 1247
    .line 1248
    move-object/from16 v9, v24

    .line 1249
    .line 1250
    goto/16 :goto_9

    .line 1251
    .line 1252
    :cond_1c
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 1253
    .line 1254
    .line 1255
    const/4 v13, 0x0

    .line 1256
    throw v13

    .line 1257
    :cond_1d
    move-object/from16 p1, v5

    .line 1258
    .line 1259
    move-object/from16 v24, v9

    .line 1260
    .line 1261
    move-object/from16 v23, v12

    .line 1262
    .line 1263
    move-object v5, v2

    .line 1264
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1265
    .line 1266
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v2

    .line 1270
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->articleInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    iget-object v9, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1275
    .line 1276
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v9

    .line 1280
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 1281
    .line 1282
    iget-object v9, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1283
    .line 1284
    iput-object v6, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 1285
    .line 1286
    move-object/from16 v10, p1

    .line 1287
    .line 1288
    check-cast v10, Ljava/util/Set;

    .line 1289
    .line 1290
    iput-object v10, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 1291
    .line 1292
    iput-object v4, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1293
    .line 1294
    const/4 v13, 0x0

    .line 1295
    iput-object v13, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 1296
    .line 1297
    iput-object v13, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 1298
    .line 1299
    iput-object v13, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 1300
    .line 1301
    iput-object v13, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 1302
    .line 1303
    iput v1, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 1304
    .line 1305
    const/4 v14, 0x5

    .line 1306
    iput v14, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 1307
    .line 1308
    iget-object v10, v2, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1309
    .line 1310
    new-instance v11, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 1311
    .line 1312
    const/16 v12, 0x1a

    .line 1313
    .line 1314
    invoke-direct {v11, v9, v2, v12}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1315
    .line 1316
    .line 1317
    const/4 v2, 0x1

    .line 1318
    const/4 v13, 0x0

    .line 1319
    invoke-static {v10, v2, v13, v11, v5}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v9

    .line 1323
    if-ne v9, v3, :cond_1e

    .line 1324
    .line 1325
    goto/16 :goto_34

    .line 1326
    .line 1327
    :cond_1e
    move v2, v1

    .line 1328
    move-object v1, v9

    .line 1329
    move-object v9, v6

    .line 1330
    move-object/from16 v6, p1

    .line 1331
    .line 1332
    :goto_15
    check-cast v1, Ljava/lang/Iterable;

    .line 1333
    .line 1334
    invoke-static {v1, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v1

    .line 1338
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v1

    .line 1342
    move-object v15, v1

    .line 1343
    move v10, v2

    .line 1344
    move-object v14, v4

    .line 1345
    move-object v1, v9

    .line 1346
    const/4 v2, 0x0

    .line 1347
    const/4 v4, 0x0

    .line 1348
    :goto_16
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1349
    .line 1350
    .line 1351
    move-result v9

    .line 1352
    if-eqz v9, :cond_2d

    .line 1353
    .line 1354
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v9

    .line 1358
    add-int/lit8 v11, v2, 0x1

    .line 1359
    .line 1360
    if-ltz v2, :cond_2c

    .line 1361
    .line 1362
    move-object v13, v9

    .line 1363
    check-cast v13, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 1364
    .line 1365
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1366
    .line 1367
    iget-object v9, v13, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 1368
    .line 1369
    if-nez v9, :cond_1f

    .line 1370
    .line 1371
    const-string v9, ""

    .line 1372
    .line 1373
    :cond_1f
    invoke-static {v9, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v9

    .line 1377
    sget-object v12, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1378
    .line 1379
    iget-object v12, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1380
    .line 1381
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v12

    .line 1385
    check-cast v12, Lorg/wikipedia/dataclient/WikiSite;

    .line 1386
    .line 1387
    invoke-static {v12}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v25

    .line 1391
    move-object/from16 v12, v24

    .line 1392
    .line 1393
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v26

    .line 1397
    iput-object v1, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 1398
    .line 1399
    move-object/from16 p1, v6

    .line 1400
    .line 1401
    move-object/from16 v6, p1

    .line 1402
    .line 1403
    check-cast v6, Ljava/util/Set;

    .line 1404
    .line 1405
    iput-object v6, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 1406
    .line 1407
    iput-object v14, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1408
    .line 1409
    const/4 v6, 0x0

    .line 1410
    iput-object v6, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 1411
    .line 1412
    iput-object v15, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 1413
    .line 1414
    iput-object v6, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 1415
    .line 1416
    iput-object v13, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 1417
    .line 1418
    iput-object v9, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$9:Ljava/lang/String;

    .line 1419
    .line 1420
    iput v10, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 1421
    .line 1422
    iput v4, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 1423
    .line 1424
    iput v11, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$2:I

    .line 1425
    .line 1426
    iput v2, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$3:I

    .line 1427
    .line 1428
    const/4 v6, 0x6

    .line 1429
    iput v6, v5, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 1430
    .line 1431
    const/16 v27, 0xa

    .line 1432
    .line 1433
    const/16 v28, 0xa

    .line 1434
    .line 1435
    const/16 v29, 0x0

    .line 1436
    .line 1437
    const/16 v30, 0x0

    .line 1438
    .line 1439
    const/16 v31, 0x0

    .line 1440
    .line 1441
    const/16 v33, 0x38

    .line 1442
    .line 1443
    move-object/from16 v32, v5

    .line 1444
    .line 1445
    invoke-static/range {v25 .. v33}, Lorg/wikipedia/dataclient/Service$-CC;->searchMoreLike$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v5

    .line 1449
    move-object/from16 v6, v32

    .line 1450
    .line 1451
    if-ne v5, v3, :cond_20

    .line 1452
    .line 1453
    goto/16 :goto_34

    .line 1454
    .line 1455
    :cond_20
    move-object/from16 v17, v15

    .line 1456
    .line 1457
    move-object v15, v14

    .line 1458
    move-object v14, v13

    .line 1459
    move-object v13, v9

    .line 1460
    move-object v9, v6

    .line 1461
    move v6, v4

    .line 1462
    move v4, v2

    .line 1463
    move-object v2, v1

    .line 1464
    move-object v1, v5

    .line 1465
    move v5, v11

    .line 1466
    goto/16 :goto_1

    .line 1467
    .line 1468
    :goto_17
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 1469
    .line 1470
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 1471
    .line 1472
    if-eqz v1, :cond_25

    .line 1473
    .line 1474
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 1475
    .line 1476
    if-eqz v1, :cond_25

    .line 1477
    .line 1478
    move-object/from16 v18, v1

    .line 1479
    .line 1480
    new-instance v1, Ljava/util/ArrayList;

    .line 1481
    .line 1482
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .line 1484
    .line 1485
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v18

    .line 1489
    :goto_18
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 1490
    .line 1491
    .line 1492
    move-result v19

    .line 1493
    if-eqz v19, :cond_22

    .line 1494
    .line 1495
    move/from16 p1, v5

    .line 1496
    .line 1497
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v5

    .line 1501
    move/from16 v19, v6

    .line 1502
    .line 1503
    move-object v6, v5

    .line 1504
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1505
    .line 1506
    move-object/from16 v20, v9

    .line 1507
    .line 1508
    iget-object v9, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 1509
    .line 1510
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v9

    .line 1514
    if-nez v9, :cond_21

    .line 1515
    .line 1516
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 1517
    .line 1518
    iget-object v9, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1519
    .line 1520
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v9

    .line 1524
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 1525
    .line 1526
    iget-object v9, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1527
    .line 1528
    invoke-static {v9}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v9

    .line 1532
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1533
    .line 1534
    .line 1535
    move-result v6

    .line 1536
    if-nez v6, :cond_21

    .line 1537
    .line 1538
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    :cond_21
    move/from16 v5, p1

    .line 1542
    .line 1543
    move/from16 v6, v19

    .line 1544
    .line 1545
    move-object/from16 v9, v20

    .line 1546
    .line 1547
    goto :goto_18

    .line 1548
    :cond_22
    move/from16 p1, v5

    .line 1549
    .line 1550
    move/from16 v19, v6

    .line 1551
    .line 1552
    move-object/from16 v20, v9

    .line 1553
    .line 1554
    new-instance v5, Ljava/util/ArrayList;

    .line 1555
    .line 1556
    const/16 v6, 0xa

    .line 1557
    .line 1558
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1559
    .line 1560
    .line 1561
    move-result v9

    .line 1562
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v1

    .line 1569
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1570
    .line 1571
    .line 1572
    move-result v6

    .line 1573
    if-eqz v6, :cond_26

    .line 1574
    .line 1575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v6

    .line 1579
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1580
    .line 1581
    new-instance v24, Lorg/wikipedia/page/PageTitle;

    .line 1582
    .line 1583
    iget-object v9, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 1584
    .line 1585
    iget-object v13, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->sectionTitle:Ljava/lang/String;

    .line 1586
    .line 1587
    move-object/from16 v18, v1

    .line 1588
    .line 1589
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1590
    .line 1591
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v1

    .line 1595
    move-object/from16 v26, v1

    .line 1596
    .line 1597
    check-cast v26, Lorg/wikipedia/dataclient/WikiSite;

    .line 1598
    .line 1599
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v27

    .line 1603
    iget-object v1, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 1604
    .line 1605
    move-object/from16 v28, v1

    .line 1606
    .line 1607
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1608
    .line 1609
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v1

    .line 1613
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 1614
    .line 1615
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1616
    .line 1617
    invoke-virtual {v6, v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v29

    .line 1621
    move-object/from16 v25, v9

    .line 1622
    .line 1623
    invoke-direct/range {v24 .. v29}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    move-object/from16 v1, v24

    .line 1627
    .line 1628
    if-eqz v13, :cond_24

    .line 1629
    .line 1630
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 1631
    .line 1632
    .line 1633
    move-result v9

    .line 1634
    if-nez v9, :cond_23

    .line 1635
    .line 1636
    goto :goto_1a

    .line 1637
    :cond_23
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1638
    .line 1639
    invoke-static {v13, v8, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v9

    .line 1643
    iput-object v9, v1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 1644
    .line 1645
    :cond_24
    :goto_1a
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 1646
    .line 1647
    iput-object v6, v1, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 1648
    .line 1649
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    .line 1651
    .line 1652
    move-object/from16 v1, v18

    .line 1653
    .line 1654
    goto :goto_19

    .line 1655
    :cond_25
    move/from16 p1, v5

    .line 1656
    .line 1657
    move/from16 v19, v6

    .line 1658
    .line 1659
    move-object/from16 v20, v9

    .line 1660
    .line 1661
    const/4 v5, 0x0

    .line 1662
    :cond_26
    if-nez v5, :cond_27

    .line 1663
    .line 1664
    move-object/from16 v5, v23

    .line 1665
    .line 1666
    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    .line 1667
    .line 1668
    const/16 v6, 0xa

    .line 1669
    .line 1670
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1671
    .line 1672
    .line 1673
    move-result v9

    .line 1674
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1675
    .line 1676
    .line 1677
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v5

    .line 1681
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1682
    .line 1683
    .line 1684
    move-result v6

    .line 1685
    if-eqz v6, :cond_28

    .line 1686
    .line 1687
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v6

    .line 1691
    check-cast v6, Lorg/wikipedia/page/PageTitle;

    .line 1692
    .line 1693
    new-instance v9, Lorg/wikipedia/feed/model/BasedOnInterestCard;

    .line 1694
    .line 1695
    move-object/from16 v18, v5

    .line 1696
    .line 1697
    const/4 v5, 0x0

    .line 1698
    const/4 v13, 0x2

    .line 1699
    invoke-direct {v9, v6, v5, v14, v13}, Lorg/wikipedia/feed/model/BasedOnInterestCard;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;I)V

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    .line 1704
    .line 1705
    move-object/from16 v5, v18

    .line 1706
    .line 1707
    goto :goto_1b

    .line 1708
    :cond_28
    new-instance v5, Ljava/util/ArrayList;

    .line 1709
    .line 1710
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v1

    .line 1717
    :cond_29
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1718
    .line 1719
    .line 1720
    move-result v6

    .line 1721
    if-eqz v6, :cond_2a

    .line 1722
    .line 1723
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v6

    .line 1727
    move-object v9, v6

    .line 1728
    check-cast v9, Lorg/wikipedia/feed/model/BasedOnInterestCard;

    .line 1729
    .line 1730
    invoke-virtual {v9}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v9

    .line 1734
    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1735
    .line 1736
    .line 1737
    move-result v9

    .line 1738
    if-nez v9, :cond_29

    .line 1739
    .line 1740
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    .line 1742
    .line 1743
    goto :goto_1c

    .line 1744
    :cond_2a
    const/4 v6, 0x4

    .line 1745
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v1

    .line 1749
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1750
    .line 1751
    .line 1752
    move-result v5

    .line 1753
    if-nez v5, :cond_2b

    .line 1754
    .line 1755
    new-instance v5, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

    .line 1756
    .line 1757
    invoke-direct {v5, v11, v4, v1}, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;-><init>(IILjava/util/List;)V

    .line 1758
    .line 1759
    .line 1760
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    .line 1762
    .line 1763
    :cond_2b
    move-object v1, v2

    .line 1764
    move-object v6, v10

    .line 1765
    move v10, v11

    .line 1766
    move-object/from16 v24, v12

    .line 1767
    .line 1768
    move-object v14, v15

    .line 1769
    move-object/from16 v15, v17

    .line 1770
    .line 1771
    move/from16 v4, v19

    .line 1772
    .line 1773
    move-object/from16 v5, v20

    .line 1774
    .line 1775
    move/from16 v2, p1

    .line 1776
    .line 1777
    goto/16 :goto_16

    .line 1778
    .line 1779
    :cond_2c
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 1780
    .line 1781
    .line 1782
    const/4 v13, 0x0

    .line 1783
    throw v13

    .line 1784
    :cond_2d
    move-object/from16 p1, v6

    .line 1785
    .line 1786
    move-object/from16 v12, v24

    .line 1787
    .line 1788
    move-object v6, v5

    .line 1789
    invoke-static {}, Landroidx/room/Room;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v2

    .line 1793
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1794
    .line 1795
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v4

    .line 1799
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v4

    .line 1803
    add-int/lit8 v5, v10, 0x1

    .line 1804
    .line 1805
    iget-object v9, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1806
    .line 1807
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v9

    .line 1811
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 1812
    .line 1813
    iget-object v9, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1814
    .line 1815
    iput-object v1, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 1816
    .line 1817
    move-object/from16 v11, p1

    .line 1818
    .line 1819
    check-cast v11, Ljava/util/Set;

    .line 1820
    .line 1821
    iput-object v11, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 1822
    .line 1823
    iput-object v14, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1824
    .line 1825
    iput-object v2, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 1826
    .line 1827
    iput-object v2, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 1828
    .line 1829
    const/4 v13, 0x0

    .line 1830
    iput-object v13, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 1831
    .line 1832
    iput-object v13, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 1833
    .line 1834
    iput-object v13, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$9:Ljava/lang/String;

    .line 1835
    .line 1836
    iput v10, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 1837
    .line 1838
    const/4 v13, 0x0

    .line 1839
    iput v13, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 1840
    .line 1841
    const/4 v11, 0x7

    .line 1842
    iput v11, v6, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 1843
    .line 1844
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1845
    .line 1846
    .line 1847
    const/16 v11, 0x1e

    .line 1848
    .line 1849
    invoke-static {v4, v5, v11, v9, v6}, Lorg/wikipedia/dataclient/Service$-CC;->findEntryForReadMore$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;IILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v4

    .line 1853
    if-ne v4, v3, :cond_2e

    .line 1854
    .line 1855
    goto/16 :goto_34

    .line 1856
    .line 1857
    :cond_2e
    move-object v5, v1

    .line 1858
    move-object v9, v2

    .line 1859
    move-object v13, v9

    .line 1860
    move-object v1, v4

    .line 1861
    move-object v2, v6

    .line 1862
    move v4, v10

    .line 1863
    move-object v11, v14

    .line 1864
    const/4 v10, 0x0

    .line 1865
    move-object/from16 v6, p1

    .line 1866
    .line 1867
    :goto_1d
    check-cast v1, Ljava/util/List;

    .line 1868
    .line 1869
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1870
    .line 1871
    .line 1872
    move-result v14

    .line 1873
    if-le v14, v4, :cond_39

    .line 1874
    .line 1875
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v1

    .line 1879
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 1880
    .line 1881
    sget-object v14, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1882
    .line 1883
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v14

    .line 1887
    invoke-virtual {v14}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v14

    .line 1891
    iget-object v15, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1892
    .line 1893
    invoke-virtual {v15}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v15

    .line 1897
    check-cast v15, Lorg/wikipedia/dataclient/WikiSite;

    .line 1898
    .line 1899
    iget-object v15, v15, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1900
    .line 1901
    invoke-virtual {v14, v15}, Lorg/wikipedia/language/AppLanguageState;->getDefaultLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v14

    .line 1905
    if-eqz v14, :cond_30

    .line 1906
    .line 1907
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 1908
    .line 1909
    .line 1910
    move-result v14

    .line 1911
    if-nez v14, :cond_2f

    .line 1912
    .line 1913
    goto :goto_1e

    .line 1914
    :cond_2f
    const/4 v14, 0x0

    .line 1915
    goto :goto_1f

    .line 1916
    :cond_30
    :goto_1e
    const/4 v14, 0x1

    .line 1917
    :goto_1f
    xor-int/lit8 v15, v14, 0x1

    .line 1918
    .line 1919
    sget-object v17, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1920
    .line 1921
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v17

    .line 1925
    move-object/from16 p1, v6

    .line 1926
    .line 1927
    invoke-virtual/range {v17 .. v17}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v6

    .line 1931
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v7

    .line 1935
    if-nez v14, :cond_31

    .line 1936
    .line 1937
    const/4 v6, 0x0

    .line 1938
    goto :goto_20

    .line 1939
    :cond_31
    const v6, 0x15180

    .line 1940
    .line 1941
    .line 1942
    :goto_20
    sget-object v8, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1943
    .line 1944
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v8

    .line 1948
    iget-object v8, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1949
    .line 1950
    invoke-static {v8}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v24

    .line 1954
    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v25

    .line 1958
    iput-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 1959
    .line 1960
    move-object/from16 v8, p1

    .line 1961
    .line 1962
    check-cast v8, Ljava/util/Set;

    .line 1963
    .line 1964
    iput-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 1965
    .line 1966
    iput-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1967
    .line 1968
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 1969
    .line 1970
    iput-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 1971
    .line 1972
    const/4 v8, 0x0

    .line 1973
    iput-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 1974
    .line 1975
    iput-object v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 1976
    .line 1977
    iput-object v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$9:Ljava/lang/String;

    .line 1978
    .line 1979
    iput v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 1980
    .line 1981
    iput v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 1982
    .line 1983
    iput v15, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$2:I

    .line 1984
    .line 1985
    iput v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$3:I

    .line 1986
    .line 1987
    const/16 v8, 0x8

    .line 1988
    .line 1989
    iput v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 1990
    .line 1991
    const/16 v26, 0xa

    .line 1992
    .line 1993
    const/16 v27, 0xa

    .line 1994
    .line 1995
    const/16 v28, 0x0

    .line 1996
    .line 1997
    const/16 v32, 0x8

    .line 1998
    .line 1999
    move/from16 v30, v6

    .line 2000
    .line 2001
    move-object/from16 v31, v2

    .line 2002
    .line 2003
    move/from16 v29, v6

    .line 2004
    .line 2005
    invoke-static/range {v24 .. v32}, Lorg/wikipedia/dataclient/Service$-CC;->searchMoreLike$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v2

    .line 2009
    if-ne v2, v3, :cond_32

    .line 2010
    .line 2011
    goto/16 :goto_34

    .line 2012
    .line 2013
    :cond_32
    move-object/from16 v6, p1

    .line 2014
    .line 2015
    move-object v8, v1

    .line 2016
    move-object v1, v2

    .line 2017
    move-object/from16 v2, v31

    .line 2018
    .line 2019
    :goto_21
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 2020
    .line 2021
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2022
    .line 2023
    if-eqz v1, :cond_36

    .line 2024
    .line 2025
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 2026
    .line 2027
    if-eqz v1, :cond_36

    .line 2028
    .line 2029
    new-instance v10, Ljava/util/ArrayList;

    .line 2030
    .line 2031
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    .line 2033
    .line 2034
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v1

    .line 2038
    :cond_33
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2039
    .line 2040
    .line 2041
    move-result v12

    .line 2042
    if-eqz v12, :cond_34

    .line 2043
    .line 2044
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v12

    .line 2048
    move-object v14, v12

    .line 2049
    check-cast v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2050
    .line 2051
    iget-object v15, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 2052
    .line 2053
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2054
    .line 2055
    .line 2056
    move-result v15

    .line 2057
    if-nez v15, :cond_33

    .line 2058
    .line 2059
    iget-object v14, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 2060
    .line 2061
    invoke-virtual {v8}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v15

    .line 2065
    iget-object v15, v15, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2066
    .line 2067
    iget-object v15, v15, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2068
    .line 2069
    invoke-static {v15}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v15

    .line 2073
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2074
    .line 2075
    .line 2076
    move-result v14

    .line 2077
    if-nez v14, :cond_33

    .line 2078
    .line 2079
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2080
    .line 2081
    .line 2082
    goto :goto_22

    .line 2083
    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    .line 2084
    .line 2085
    const/16 v12, 0xa

    .line 2086
    .line 2087
    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 2088
    .line 2089
    .line 2090
    move-result v7

    .line 2091
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2092
    .line 2093
    .line 2094
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v7

    .line 2098
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 2099
    .line 2100
    .line 2101
    move-result v10

    .line 2102
    if-eqz v10, :cond_35

    .line 2103
    .line 2104
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v10

    .line 2108
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2109
    .line 2110
    new-instance v24, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 2111
    .line 2112
    iget-object v12, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2113
    .line 2114
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2115
    .line 2116
    .line 2117
    move-result-object v12

    .line 2118
    check-cast v12, Lorg/wikipedia/dataclient/WikiSite;

    .line 2119
    .line 2120
    iget-object v12, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2121
    .line 2122
    invoke-virtual {v10, v12}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v25

    .line 2126
    iget-object v12, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 2127
    .line 2128
    iget-object v14, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 2129
    .line 2130
    iget-object v15, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 2131
    .line 2132
    invoke-virtual {v10}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 2133
    .line 2134
    .line 2135
    move-result-object v29

    .line 2136
    iget-object v10, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2137
    .line 2138
    invoke-virtual {v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v10

    .line 2142
    check-cast v10, Lorg/wikipedia/dataclient/WikiSite;

    .line 2143
    .line 2144
    iget-object v10, v10, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2145
    .line 2146
    move-object/from16 v30, v10

    .line 2147
    .line 2148
    move-object/from16 v26, v12

    .line 2149
    .line 2150
    move-object/from16 v27, v14

    .line 2151
    .line 2152
    move-object/from16 v28, v15

    .line 2153
    .line 2154
    invoke-direct/range {v24 .. v30}, Lorg/wikipedia/dataclient/page/PageSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    .line 2156
    .line 2157
    move-object/from16 v10, v24

    .line 2158
    .line 2159
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2160
    .line 2161
    .line 2162
    goto :goto_23

    .line 2163
    :cond_35
    const/4 v14, 0x5

    .line 2164
    invoke-static {v1, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v1

    .line 2168
    goto :goto_24

    .line 2169
    :cond_36
    const/4 v1, 0x0

    .line 2170
    :goto_24
    if-eqz v1, :cond_37

    .line 2171
    .line 2172
    new-instance v12, Ljava/util/ArrayList;

    .line 2173
    .line 2174
    const/16 v7, 0xa

    .line 2175
    .line 2176
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 2177
    .line 2178
    .line 2179
    move-result v10

    .line 2180
    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 2181
    .line 2182
    .line 2183
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v1

    .line 2187
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2188
    .line 2189
    .line 2190
    move-result v7

    .line 2191
    if-eqz v7, :cond_38

    .line 2192
    .line 2193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v7

    .line 2197
    check-cast v7, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 2198
    .line 2199
    new-instance v10, Lorg/wikipedia/feed/model/BecauseYouReadCard;

    .line 2200
    .line 2201
    iget-object v14, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2202
    .line 2203
    invoke-virtual {v14}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2204
    .line 2205
    .line 2206
    move-result-object v14

    .line 2207
    check-cast v14, Lorg/wikipedia/dataclient/WikiSite;

    .line 2208
    .line 2209
    invoke-virtual {v7, v14}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v7

    .line 2213
    invoke-virtual {v8}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 2214
    .line 2215
    .line 2216
    move-result-object v14

    .line 2217
    invoke-virtual {v14}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v14

    .line 2221
    invoke-direct {v10, v7, v14}, Lorg/wikipedia/feed/model/BecauseYouReadCard;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    .line 2226
    .line 2227
    goto :goto_25

    .line 2228
    :cond_37
    move-object/from16 v12, v23

    .line 2229
    .line 2230
    :cond_38
    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2231
    .line 2232
    .line 2233
    move-object v12, v6

    .line 2234
    :goto_26
    move v7, v4

    .line 2235
    goto :goto_27

    .line 2236
    :cond_39
    move-object/from16 v31, v2

    .line 2237
    .line 2238
    move-object/from16 p1, v6

    .line 2239
    .line 2240
    move-object/from16 v12, p1

    .line 2241
    .line 2242
    goto :goto_26

    .line 2243
    :goto_27
    invoke-static {v13}, Landroidx/room/Room;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v1

    .line 2247
    new-instance v4, Ljava/util/ArrayList;

    .line 2248
    .line 2249
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2250
    .line 2251
    .line 2252
    const/4 v13, 0x0

    .line 2253
    invoke-virtual {v1, v13}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v1

    .line 2257
    :cond_3a
    :goto_28
    move-object v6, v1

    .line 2258
    check-cast v6, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 2259
    .line 2260
    invoke-virtual {v6}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 2261
    .line 2262
    .line 2263
    move-result v8

    .line 2264
    if-eqz v8, :cond_3b

    .line 2265
    .line 2266
    invoke-virtual {v6}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v6

    .line 2270
    move-object v8, v6

    .line 2271
    check-cast v8, Lorg/wikipedia/feed/model/BecauseYouReadCard;

    .line 2272
    .line 2273
    invoke-virtual {v8}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v8

    .line 2277
    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2278
    .line 2279
    .line 2280
    move-result v8

    .line 2281
    if-nez v8, :cond_3a

    .line 2282
    .line 2283
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2284
    .line 2285
    .line 2286
    goto :goto_28

    .line 2287
    :cond_3b
    const/4 v6, 0x4

    .line 2288
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v1

    .line 2292
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 2293
    .line 2294
    .line 2295
    move-result v4

    .line 2296
    if-nez v4, :cond_3c

    .line 2297
    .line 2298
    new-instance v4, Lorg/wikipedia/feed/ForYouModule$BecauseYouRead;

    .line 2299
    .line 2300
    const/4 v13, 0x0

    .line 2301
    invoke-direct {v4, v7, v13, v1}, Lorg/wikipedia/feed/ForYouModule$BecauseYouRead;-><init>(IILjava/util/List;)V

    .line 2302
    .line 2303
    .line 2304
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2305
    .line 2306
    .line 2307
    :cond_3c
    invoke-static {}, Landroidx/room/Room;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v1

    .line 2311
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 2312
    .line 2313
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v4

    .line 2317
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v4

    .line 2321
    add-int/lit8 v6, v7, 0x1

    .line 2322
    .line 2323
    iget-object v8, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2324
    .line 2325
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v8

    .line 2329
    check-cast v8, Lorg/wikipedia/dataclient/WikiSite;

    .line 2330
    .line 2331
    iget-object v8, v8, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2332
    .line 2333
    iput-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 2334
    .line 2335
    move-object v9, v12

    .line 2336
    check-cast v9, Ljava/util/Set;

    .line 2337
    .line 2338
    iput-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 2339
    .line 2340
    iput-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2341
    .line 2342
    const/4 v13, 0x0

    .line 2343
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 2344
    .line 2345
    iput-object v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 2346
    .line 2347
    iput-object v1, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 2348
    .line 2349
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 2350
    .line 2351
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$9:Ljava/lang/String;

    .line 2352
    .line 2353
    iput v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 2354
    .line 2355
    const/4 v13, 0x0

    .line 2356
    iput v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 2357
    .line 2358
    const/16 v9, 0x9

    .line 2359
    .line 2360
    iput v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 2361
    .line 2362
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2363
    .line 2364
    .line 2365
    const/16 v9, 0x1e

    .line 2366
    .line 2367
    invoke-static {v4, v6, v9, v8, v2}, Lorg/wikipedia/dataclient/Service$-CC;->findEntryForReadMore$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;IILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v4

    .line 2371
    if-ne v4, v3, :cond_3d

    .line 2372
    .line 2373
    goto/16 :goto_34

    .line 2374
    .line 2375
    :cond_3d
    move-object v8, v1

    .line 2376
    move-object v9, v8

    .line 2377
    move-object v1, v4

    .line 2378
    move-object v13, v5

    .line 2379
    const/4 v4, 0x0

    .line 2380
    :goto_29
    check-cast v1, Ljava/util/List;

    .line 2381
    .line 2382
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 2383
    .line 2384
    .line 2385
    move-result v5

    .line 2386
    if-le v5, v7, :cond_3e

    .line 2387
    .line 2388
    new-instance v5, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 2389
    .line 2390
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2391
    .line 2392
    .line 2393
    move-result-object v1

    .line 2394
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 2395
    .line 2396
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v1

    .line 2400
    const/4 v6, 0x4

    .line 2401
    invoke-direct {v5, v6, v1}, Lorg/wikipedia/feed/model/ContinueReadingCard;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 2402
    .line 2403
    .line 2404
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    .line 2406
    .line 2407
    :cond_3e
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 2408
    .line 2409
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 2410
    .line 2411
    .line 2412
    move-result-object v1

    .line 2413
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v1

    .line 2417
    iget-object v5, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2418
    .line 2419
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v5

    .line 2423
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 2424
    .line 2425
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2426
    .line 2427
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 2428
    .line 2429
    move-object v6, v12

    .line 2430
    check-cast v6, Ljava/util/Set;

    .line 2431
    .line 2432
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 2433
    .line 2434
    iput-object v11, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2435
    .line 2436
    const/4 v6, 0x0

    .line 2437
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 2438
    .line 2439
    iput-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 2440
    .line 2441
    iput-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 2442
    .line 2443
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 2444
    .line 2445
    iput v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 2446
    .line 2447
    iput v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$1:I

    .line 2448
    .line 2449
    const/16 v6, 0xa

    .line 2450
    .line 2451
    iput v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 2452
    .line 2453
    iget-object v4, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2454
    .line 2455
    new-instance v10, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 2456
    .line 2457
    invoke-direct {v10, v5, v6, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ILorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 2458
    .line 2459
    .line 2460
    const/4 v1, 0x0

    .line 2461
    const/4 v14, 0x1

    .line 2462
    invoke-static {v4, v14, v1, v10, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v4

    .line 2466
    if-ne v4, v3, :cond_3f

    .line 2467
    .line 2468
    goto/16 :goto_34

    .line 2469
    .line 2470
    :cond_3f
    move-object v1, v4

    .line 2471
    move v4, v7

    .line 2472
    move-object v7, v8

    .line 2473
    move-object v8, v9

    .line 2474
    move-object v9, v11

    .line 2475
    move-object v11, v12

    .line 2476
    :goto_2a
    check-cast v1, Ljava/lang/Iterable;

    .line 2477
    .line 2478
    const/4 v5, 0x2

    .line 2479
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v1

    .line 2483
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v1

    .line 2487
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2488
    .line 2489
    .line 2490
    move-result v5

    .line 2491
    if-eqz v5, :cond_40

    .line 2492
    .line 2493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2494
    .line 2495
    .line 2496
    move-result-object v5

    .line 2497
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2498
    .line 2499
    new-instance v10, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 2500
    .line 2501
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2502
    .line 2503
    .line 2504
    iget-object v12, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 2505
    .line 2506
    iget-object v14, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 2507
    .line 2508
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2509
    .line 2510
    .line 2511
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2512
    .line 2513
    .line 2514
    iput-object v14, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2515
    .line 2516
    new-instance v16, Lorg/wikipedia/page/PageTitle;

    .line 2517
    .line 2518
    iget-object v14, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 2519
    .line 2520
    iget-object v15, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 2521
    .line 2522
    iget-object v6, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 2523
    .line 2524
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 2525
    .line 2526
    move-object/from16 v21, v5

    .line 2527
    .line 2528
    move-object/from16 v20, v6

    .line 2529
    .line 2530
    move-object/from16 v18, v12

    .line 2531
    .line 2532
    move-object/from16 v17, v14

    .line 2533
    .line 2534
    move-object/from16 v19, v15

    .line 2535
    .line 2536
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    .line 2538
    .line 2539
    move-object/from16 v5, v16

    .line 2540
    .line 2541
    const/16 v6, 0xb

    .line 2542
    .line 2543
    invoke-direct {v10, v6, v5}, Lorg/wikipedia/feed/model/ContinueReadingCard;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 2544
    .line 2545
    .line 2546
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2547
    .line 2548
    .line 2549
    goto :goto_2b

    .line 2550
    :cond_40
    invoke-static {v8}, Landroidx/room/Room;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v1

    .line 2554
    new-instance v5, Ljava/util/ArrayList;

    .line 2555
    .line 2556
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2557
    .line 2558
    .line 2559
    const/4 v6, 0x0

    .line 2560
    invoke-virtual {v1, v6}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 2561
    .line 2562
    .line 2563
    move-result-object v1

    .line 2564
    :cond_41
    :goto_2c
    move-object v6, v1

    .line 2565
    check-cast v6, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 2566
    .line 2567
    invoke-virtual {v6}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 2568
    .line 2569
    .line 2570
    move-result v7

    .line 2571
    if-eqz v7, :cond_42

    .line 2572
    .line 2573
    invoke-virtual {v6}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v6

    .line 2577
    move-object v7, v6

    .line 2578
    check-cast v7, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 2579
    .line 2580
    invoke-virtual {v7}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v7

    .line 2584
    invoke-interface {v11, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2585
    .line 2586
    .line 2587
    move-result v7

    .line 2588
    if-nez v7, :cond_41

    .line 2589
    .line 2590
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2591
    .line 2592
    .line 2593
    goto :goto_2c

    .line 2594
    :cond_42
    const/4 v6, 0x4

    .line 2595
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v7

    .line 2599
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 2600
    .line 2601
    .line 2602
    move-result v1

    .line 2603
    if-nez v1, :cond_49

    .line 2604
    .line 2605
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2606
    .line 2607
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2608
    .line 2609
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2610
    .line 2611
    .line 2612
    move-result-object v1

    .line 2613
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 2614
    .line 2615
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 2616
    .line 2617
    .line 2618
    move-result-object v1

    .line 2619
    new-instance v5, Ljava/util/ArrayList;

    .line 2620
    .line 2621
    const/16 v6, 0xa

    .line 2622
    .line 2623
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 2624
    .line 2625
    .line 2626
    move-result v6

    .line 2627
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2628
    .line 2629
    .line 2630
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v6

    .line 2634
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2635
    .line 2636
    .line 2637
    move-result v8

    .line 2638
    if-eqz v8, :cond_43

    .line 2639
    .line 2640
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2641
    .line 2642
    .line 2643
    move-result-object v8

    .line 2644
    check-cast v8, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 2645
    .line 2646
    iget-object v8, v8, Lorg/wikipedia/feed/model/ContinueReadingCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 2647
    .line 2648
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 2649
    .line 2650
    .line 2651
    move-result-object v8

    .line 2652
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    .line 2654
    .line 2655
    goto :goto_2d

    .line 2656
    :cond_43
    const-string/jumbo v6, "|"

    .line 2657
    .line 2658
    .line 2659
    const/16 v8, 0x3e

    .line 2660
    .line 2661
    const/4 v10, 0x0

    .line 2662
    invoke-static {v5, v6, v10, v8}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 2663
    .line 2664
    .line 2665
    move-result-object v5

    .line 2666
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 2667
    .line 2668
    move-object v6, v11

    .line 2669
    check-cast v6, Ljava/util/Set;

    .line 2670
    .line 2671
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 2672
    .line 2673
    iput-object v9, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2674
    .line 2675
    iput-object v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 2676
    .line 2677
    iput-object v7, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 2678
    .line 2679
    iput-object v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 2680
    .line 2681
    iput-object v10, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 2682
    .line 2683
    iput v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 2684
    .line 2685
    const/16 v6, 0xb

    .line 2686
    .line 2687
    iput v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 2688
    .line 2689
    invoke-interface {v1, v5, v2}, Lorg/wikipedia/dataclient/Service;->getInfoWithExtractsByPageTitles(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2690
    .line 2691
    .line 2692
    move-result-object v1

    .line 2693
    if-ne v1, v3, :cond_44

    .line 2694
    .line 2695
    goto/16 :goto_34

    .line 2696
    .line 2697
    :cond_44
    move-object v8, v9

    .line 2698
    move-object v9, v11

    .line 2699
    move-object v11, v13

    .line 2700
    :goto_2e
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 2701
    .line 2702
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2703
    .line 2704
    if-eqz v1, :cond_48

    .line 2705
    .line 2706
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 2707
    .line 2708
    if-eqz v1, :cond_48

    .line 2709
    .line 2710
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v1

    .line 2714
    :cond_45
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2715
    .line 2716
    .line 2717
    move-result v5

    .line 2718
    if-eqz v5, :cond_48

    .line 2719
    .line 2720
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2721
    .line 2722
    .line 2723
    move-result-object v5

    .line 2724
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2725
    .line 2726
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v6

    .line 2730
    :cond_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2731
    .line 2732
    .line 2733
    move-result v10

    .line 2734
    if-eqz v10, :cond_47

    .line 2735
    .line 2736
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v10

    .line 2740
    move-object v12, v10

    .line 2741
    check-cast v12, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 2742
    .line 2743
    iget-object v12, v12, Lorg/wikipedia/feed/model/ContinueReadingCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 2744
    .line 2745
    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 2746
    .line 2747
    .line 2748
    move-result-object v12

    .line 2749
    sget-object v13, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2750
    .line 2751
    iget-object v13, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 2752
    .line 2753
    invoke-static {v13}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 2754
    .line 2755
    .line 2756
    move-result-object v13

    .line 2757
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2758
    .line 2759
    .line 2760
    move-result v12

    .line 2761
    if-eqz v12, :cond_46

    .line 2762
    .line 2763
    goto :goto_30

    .line 2764
    :cond_47
    const/4 v10, 0x0

    .line 2765
    :goto_30
    check-cast v10, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 2766
    .line 2767
    if-eqz v10, :cond_45

    .line 2768
    .line 2769
    iget-object v6, v10, Lorg/wikipedia/feed/model/ContinueReadingCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 2770
    .line 2771
    iget-object v10, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 2772
    .line 2773
    iput-object v10, v6, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 2774
    .line 2775
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 2776
    .line 2777
    .line 2778
    move-result-object v10

    .line 2779
    iput-object v10, v6, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 2780
    .line 2781
    iget-object v10, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2782
    .line 2783
    invoke-virtual {v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2784
    .line 2785
    .line 2786
    move-result-object v10

    .line 2787
    check-cast v10, Lorg/wikipedia/dataclient/WikiSite;

    .line 2788
    .line 2789
    iget-object v10, v10, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2790
    .line 2791
    invoke-virtual {v5, v10}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 2792
    .line 2793
    .line 2794
    move-result-object v10

    .line 2795
    invoke-virtual {v6, v10}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 2796
    .line 2797
    .line 2798
    iget-object v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 2799
    .line 2800
    iput-object v5, v6, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 2801
    .line 2802
    goto :goto_2f

    .line 2803
    :cond_48
    move-object v5, v8

    .line 2804
    move-object v8, v11

    .line 2805
    goto :goto_31

    .line 2806
    :cond_49
    move-object v5, v9

    .line 2807
    move-object v9, v11

    .line 2808
    move-object v8, v13

    .line 2809
    :goto_31
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 2810
    .line 2811
    .line 2812
    move-result v1

    .line 2813
    if-nez v1, :cond_4a

    .line 2814
    .line 2815
    new-instance v1, Lorg/wikipedia/feed/ForYouModule$ContinueReading;

    .line 2816
    .line 2817
    const/4 v13, 0x0

    .line 2818
    invoke-direct {v1, v4, v13, v7}, Lorg/wikipedia/feed/ForYouModule$ContinueReading;-><init>(IILjava/util/List;)V

    .line 2819
    .line 2820
    .line 2821
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2822
    .line 2823
    .line 2824
    :cond_4a
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2825
    .line 2826
    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2827
    .line 2828
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2829
    .line 2830
    .line 2831
    move-result-object v1

    .line 2832
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 2833
    .line 2834
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 2835
    .line 2836
    .line 2837
    move-result-object v1

    .line 2838
    iput-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 2839
    .line 2840
    move-object v6, v9

    .line 2841
    check-cast v6, Ljava/util/Set;

    .line 2842
    .line 2843
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 2844
    .line 2845
    iput-object v5, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2846
    .line 2847
    const/4 v13, 0x0

    .line 2848
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 2849
    .line 2850
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 2851
    .line 2852
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 2853
    .line 2854
    iput-object v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 2855
    .line 2856
    iput v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 2857
    .line 2858
    const/16 v13, 0xc

    .line 2859
    .line 2860
    iput v13, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 2861
    .line 2862
    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/RestService;->getRandomSummary(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2863
    .line 2864
    .line 2865
    move-result-object v1

    .line 2866
    if-ne v1, v3, :cond_4b

    .line 2867
    .line 2868
    goto/16 :goto_34

    .line 2869
    .line 2870
    :cond_4b
    move-object v7, v9

    .line 2871
    :goto_32
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 2872
    .line 2873
    new-instance v6, Lorg/wikipedia/feed/model/RandomCard;

    .line 2874
    .line 2875
    iget-object v9, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2876
    .line 2877
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2878
    .line 2879
    .line 2880
    move-result-object v9

    .line 2881
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 2882
    .line 2883
    invoke-virtual {v1, v9}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 2884
    .line 2885
    .line 2886
    move-result-object v1

    .line 2887
    invoke-direct {v6, v1}, Lorg/wikipedia/feed/model/RandomCard;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 2888
    .line 2889
    .line 2890
    invoke-virtual {v6}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 2891
    .line 2892
    .line 2893
    move-result-object v1

    .line 2894
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2895
    .line 2896
    .line 2897
    move-result v1

    .line 2898
    if-nez v1, :cond_4c

    .line 2899
    .line 2900
    new-instance v1, Lorg/wikipedia/feed/ForYouModule$Random;

    .line 2901
    .line 2902
    invoke-static {v6}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2903
    .line 2904
    .line 2905
    move-result-object v6

    .line 2906
    const/4 v13, 0x0

    .line 2907
    invoke-direct {v1, v4, v13, v6}, Lorg/wikipedia/feed/ForYouModule$Random;-><init>(IILjava/util/List;)V

    .line 2908
    .line 2909
    .line 2910
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2911
    .line 2912
    .line 2913
    :cond_4c
    new-instance v1, Lorg/wikipedia/feed/ForYouCollectionSaved;

    .line 2914
    .line 2915
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v6

    .line 2919
    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2920
    .line 2921
    check-cast v7, Lorg/wikipedia/feed/ForYouCollectionSaved;

    .line 2922
    .line 2923
    iget-object v7, v7, Lorg/wikipedia/feed/ForYouCollectionSaved;->modulesPerLanguage:Ljava/util/Map;

    .line 2924
    .line 2925
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2926
    .line 2927
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2928
    .line 2929
    .line 2930
    move-result-object v0

    .line 2931
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 2932
    .line 2933
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2934
    .line 2935
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2936
    .line 2937
    .line 2938
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 2939
    .line 2940
    .line 2941
    move-result v9

    .line 2942
    if-eqz v9, :cond_4d

    .line 2943
    .line 2944
    invoke-static {v0, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 2945
    .line 2946
    .line 2947
    move-result-object v0

    .line 2948
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2949
    .line 2950
    .line 2951
    goto :goto_33

    .line 2952
    :cond_4d
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 2953
    .line 2954
    invoke-direct {v9, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 2955
    .line 2956
    .line 2957
    invoke-virtual {v9, v0, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2958
    .line 2959
    .line 2960
    move-object v0, v9

    .line 2961
    :goto_33
    invoke-direct {v1, v6, v0}, Lorg/wikipedia/feed/ForYouCollectionSaved;-><init>(Lj$/time/LocalDateTime;Ljava/util/Map;)V

    .line 2962
    .line 2963
    .line 2964
    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2965
    .line 2966
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2967
    .line 2968
    new-instance v1, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$2;

    .line 2969
    .line 2970
    const/4 v6, 0x0

    .line 2971
    const/4 v13, 0x2

    .line 2972
    invoke-direct {v1, v5, v6, v13}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;I)V

    .line 2973
    .line 2974
    .line 2975
    iput-object v8, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$0:Ljava/util/List;

    .line 2976
    .line 2977
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$1:Ljava/util/Set;

    .line 2978
    .line 2979
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2980
    .line 2981
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$5:Ljava/lang/Object;

    .line 2982
    .line 2983
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$6:Ljava/lang/Object;

    .line 2984
    .line 2985
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$7:Ljava/lang/Object;

    .line 2986
    .line 2987
    iput-object v6, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->L$8:Ljava/lang/Object;

    .line 2988
    .line 2989
    iput v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->I$0:I

    .line 2990
    .line 2991
    const/16 v4, 0xd

    .line 2992
    .line 2993
    iput v4, v2, Lorg/wikipedia/feed/HomeViewModel$fetchForYouModules$1;->label:I

    .line 2994
    .line 2995
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2996
    .line 2997
    .line 2998
    move-result-object v0

    .line 2999
    if-ne v0, v3, :cond_4e

    .line 3000
    .line 3001
    :goto_34
    return-object v3

    .line 3002
    :cond_4e
    return-object v8

    .line 3003
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final getPlacesCards(Landroid/location/Location;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 11

    .line 1
    instance-of v0, p2, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v6, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v1, v6, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;->label:I

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    iget-object p1, v6, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;->L$0:Landroid/location/Location;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v7

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "|"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 86
    .line 87
    iget-object v1, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 88
    .line 89
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 94
    .line 95
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object p1, v6, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;->L$0:Landroid/location/Location;

    .line 100
    .line 101
    iput v2, v6, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$1;->label:I

    .line 102
    .line 103
    const/16 v3, 0x2710

    .line 104
    .line 105
    const/16 v4, 0xa

    .line 106
    .line 107
    const/16 v5, 0xa

    .line 108
    .line 109
    move-object v2, p2

    .line 110
    invoke-interface/range {v1 .. v6}, Lorg/wikipedia/dataclient/Service;->getGeoSearchWithExtracts(Ljava/lang/String;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-ne p2, v0, :cond_3

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_3
    :goto_2
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 118
    .line 119
    iget-object p2, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 120
    .line 121
    if-eqz p2, :cond_4

    .line 122
    .line 123
    iget-object v7, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 124
    .line 125
    :cond_4
    if-nez v7, :cond_5

    .line 126
    .line 127
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 128
    .line 129
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    move-object v2, v1

    .line 149
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 150
    .line 151
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 152
    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-direct {v0, v1, p1}, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;-><init>(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    .line 170
    .line 171
    const/16 v2, 0xa

    .line 172
    .line 173
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_8

    .line 189
    .line 190
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 195
    .line 196
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    .line 197
    .line 198
    iget-object v4, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v10, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 201
    .line 202
    iget-object v5, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 203
    .line 204
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 209
    .line 210
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    iget-object v7, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v8, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 217
    .line 218
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    check-cast v8, Lorg/wikipedia/dataclient/WikiSite;

    .line 223
    .line 224
    iget-object v8, v8, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v2, v8}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    iget-object v9, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 231
    .line 232
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v2, Landroid/location/Location;

    .line 236
    .line 237
    const-string v4, ""

    .line 238
    .line 239
    invoke-direct {v2, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 250
    .line 251
    iget-wide v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lat:D

    .line 252
    .line 253
    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 261
    .line 262
    iget-wide v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lon:D

    .line 263
    .line 264
    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-static {p1, v2, v4}, Lorg/wikipedia/util/GeoUtil;->getDistanceWithUnit(Landroid/location/Location;Landroid/location/Location;Ljava/util/Locale;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    new-instance v4, Lorg/wikipedia/feed/model/PlacesOfInterestCard;

    .line 279
    .line 280
    invoke-direct {v4, v3, v2}, Lorg/wikipedia/feed/model/PlacesOfInterestCard;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_8
    return-object v0
.end method

.method public final loadCommunityContent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel;->_communityState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lorg/wikipedia/feed/CommunityContentState;

    .line 8
    .line 9
    iget-boolean v1, v1, Lorg/wikipedia/feed/CommunityContentState;->isInitialLoading:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/wikipedia/feed/CommunityContentState;

    .line 18
    .line 19
    iget-boolean v0, v0, Lorg/wikipedia/feed/CommunityContentState;->isLoadingMore:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->communityHandler:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 36
    .line 37
    invoke-static {v0, p0, v2, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final loadForYouContent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel;->_forYouState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lorg/wikipedia/feed/ForYouContentState;

    .line 8
    .line 9
    iget-boolean v1, v1, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/wikipedia/feed/ForYouContentState;

    .line 18
    .line 19
    iget-boolean v0, v0, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$2;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v1, p0, v3, v2}, Lorg/wikipedia/feed/HomeViewModel$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->forYouHandler:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 37
    .line 38
    invoke-static {v0, p0, v3, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final refreshCommunityContent()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/HomeViewModel;->nextCommunityAge:I

    .line 3
    .line 4
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel;->_communityState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lorg/wikipedia/feed/CommunityContentState;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/feed/CommunityContentState;

    .line 14
    .line 15
    invoke-direct {v2}, Lorg/wikipedia/feed/CommunityContentState;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeViewModel;->loadCommunityContent()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final refreshForYouContent()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/HomeViewModel;->forYouBatchIndex:I

    .line 3
    .line 4
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel;->_forYouState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lorg/wikipedia/feed/ForYouContentState;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/feed/ForYouContentState;

    .line 14
    .line 15
    invoke-direct {v2}, Lorg/wikipedia/feed/ForYouContentState;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeViewModel;->loadForYouContent()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final updateMissingExtracts(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p2, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v5

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v6

    .line 52
    :cond_2
    iget-object p0, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->L$1:Ljava/util/ArrayList;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v7, v2

    .line 84
    check-cast v7, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 85
    .line 86
    iget-object v7, v7, Lorg/wikipedia/readinglist/database/RecommendedPage;->extract:Ljava/lang/String;

    .line 87
    .line 88
    if-nez v7, :cond_4

    .line 89
    .line 90
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    goto/16 :goto_b

    .line 101
    .line 102
    :cond_6
    :try_start_1
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 103
    .line 104
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    :try_start_2
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 107
    .line 108
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    :try_start_3
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 113
    .line 114
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string/jumbo p1, "|"

    .line 119
    .line 120
    .line 121
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 122
    .line 123
    const/16 v7, 0x8

    .line 124
    .line 125
    invoke-direct {v2, v7}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 126
    .line 127
    .line 128
    const/16 v7, 0x1e

    .line 129
    .line 130
    invoke-static {p2, p1, v2, v7}, Landroidx/compose/ui/util/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p2, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->L$1:Ljava/util/ArrayList;

    .line 135
    .line 136
    iput v4, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->label:I

    .line 137
    .line 138
    invoke-interface {p0, p1, v0}, Lorg/wikipedia/dataclient/Service;->getInfoWithExtractsByPageTitles(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    if-ne p0, v1, :cond_7

    .line 143
    .line 144
    goto/16 :goto_a

    .line 145
    .line 146
    :cond_7
    move-object v10, p2

    .line 147
    move-object p2, p0

    .line 148
    move-object p0, v10

    .line 149
    :goto_2
    :try_start_4
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 150
    .line 151
    iget-object p1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 152
    .line 153
    if-eqz p1, :cond_c

    .line 154
    .line 155
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 156
    .line 157
    if-eqz p1, :cond_c

    .line 158
    .line 159
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_b

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-eqz v7, :cond_a

    .line 184
    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    move-object v8, v7

    .line 190
    check-cast v8, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 191
    .line 192
    iget-object v8, v8, Lorg/wikipedia/readinglist/database/RecommendedPage;->apiTitle:Ljava/lang/String;

    .line 193
    .line 194
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 195
    .line 196
    iget-object v9, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v9}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_9

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_a
    move-object v7, v6

    .line 210
    :goto_4
    check-cast v7, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 211
    .line 212
    if-eqz v7, :cond_8

    .line 213
    .line 214
    iget-object p2, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 215
    .line 216
    iput-object p2, v7, Lorg/wikipedia/readinglist/database/RecommendedPage;->extract:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_b
    move-object p1, v5

    .line 220
    goto :goto_7

    .line 221
    :cond_c
    move-object p1, v6

    .line 222
    goto :goto_7

    .line 223
    :catchall_1
    move-exception p1

    .line 224
    :goto_5
    move-object p0, p2

    .line 225
    goto :goto_6

    .line 226
    :catchall_2
    move-exception p0

    .line 227
    move-object p1, p0

    .line 228
    goto :goto_5

    .line 229
    :goto_6
    new-instance p2, Lkotlin/Result$Failure;

    .line 230
    .line 231
    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    move-object p1, p2

    .line 235
    :goto_7
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    if-eqz p1, :cond_d

    .line 240
    .line 241
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    :cond_d
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 245
    .line 246
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    new-instance p2, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    :cond_e
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_f

    .line 268
    .line 269
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    move-object v7, v2

    .line 274
    check-cast v7, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 275
    .line 276
    iget-object v7, v7, Lorg/wikipedia/readinglist/database/RecommendedPage;->extract:Ljava/lang/String;

    .line 277
    .line 278
    if-eqz v7, :cond_e

    .line 279
    .line 280
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_f
    iput-object v6, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->L$1:Ljava/util/ArrayList;

    .line 285
    .line 286
    iput v3, v0, Lorg/wikipedia/feed/HomeViewModel$updateMissingExtracts$1;->label:I

    .line 287
    .line 288
    iget-object p0, p1, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 289
    .line 290
    new-instance v2, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 291
    .line 292
    const/16 v3, 0x1c

    .line 293
    .line 294
    invoke-direct {v2, v3, p1, p2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    const/4 p1, 0x0

    .line 298
    invoke-static {p0, p1, v4, v2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 303
    .line 304
    if-ne p0, p1, :cond_10

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_10
    move-object p0, v5

    .line 308
    :goto_9
    if-ne p0, v1, :cond_11

    .line 309
    .line 310
    :goto_a
    return-object v1

    .line 311
    :cond_11
    :goto_b
    return-object v5
.end method

.method public final updateTabCount(Z)V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/feed/TabsState;

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1, p1}, Lorg/wikipedia/feed/TabsState;-><init>(IZ)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->_tabsState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
