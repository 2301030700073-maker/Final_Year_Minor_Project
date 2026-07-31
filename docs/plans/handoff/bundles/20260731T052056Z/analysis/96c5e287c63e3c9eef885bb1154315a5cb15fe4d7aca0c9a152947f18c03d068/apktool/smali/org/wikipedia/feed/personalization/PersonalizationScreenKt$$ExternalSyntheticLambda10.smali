.class public final synthetic Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final synthetic f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$1:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 10
    .line 11
    iput-object p5, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v4, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 9
    .line 10
    iget-object v5, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 11
    .line 12
    iget-object v6, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    .line 13
    .line 14
    iget-object v7, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$1:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;->f$0:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v8, 0x2

    .line 19
    const/4 v9, 0x0

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    if-eqz v10, :cond_0

    .line 35
    .line 36
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v12, v0

    .line 49
    check-cast v12, Ljava/lang/String;

    .line 50
    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    const/16 v17, 0xf4

    .line 54
    .line 55
    const-string v11, "click"

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    const-string v14, "retry"

    .line 59
    .line 60
    const/4 v15, 0x0

    .line 61
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    aget v0, v0, v1

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    if-eq v0, v1, :cond_2

    .line 77
    .line 78
    if-ne v0, v8, :cond_1

    .line 79
    .line 80
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 85
    .line 86
    const/4 v5, 0x5

    .line 87
    invoke-direct {v1, v4, v5}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 91
    .line 92
    invoke-direct {v5, v4, v9, v2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1, v9, v5, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 100
    .line 101
    .line 102
    move-object v3, v9

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 109
    .line 110
    const/4 v2, 0x3

    .line 111
    invoke-direct {v1, v4, v2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 115
    .line 116
    invoke-direct {v2, v4, v9, v8}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1, v9, v2, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 120
    .line 121
    .line 122
    :goto_0
    return-object v3

    .line 123
    :pswitch_0
    move-object/from16 v11, p1

    .line 124
    .line 125
    check-cast v11, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 126
    .line 127
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    if-eqz v12, :cond_4

    .line 135
    .line 136
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object v14, v0

    .line 149
    check-cast v14, Ljava/lang/String;

    .line 150
    .line 151
    sget-object v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->COMMUNITY:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 152
    .line 153
    if-ne v11, v0, :cond_3

    .line 154
    .line 155
    const-string v0, "community_first"

    .line 156
    .line 157
    :goto_1
    move-object/from16 v16, v0

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    const-string v0, "for_you_first"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :goto_2
    const/16 v18, 0x0

    .line 164
    .line 165
    const/16 v19, 0xf4

    .line 166
    .line 167
    const-string v13, "click"

    .line 168
    .line 169
    const/4 v15, 0x0

    .line 170
    const/16 v17, 0x0

    .line 171
    .line 172
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object v0, v4, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->homePreferenceRepository:Lokhttp3/MultipartBody$Builder;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 184
    .line 185
    const v0, 0x7f12060d

    .line 186
    .line 187
    .line 188
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v4, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 196
    .line 197
    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move-object v4, v0

    .line 202
    check-cast v4, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 203
    .line 204
    const/16 v17, 0x0

    .line 205
    .line 206
    const/16 v18, 0x7eff

    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    const/4 v8, 0x0

    .line 212
    const/4 v9, 0x0

    .line 213
    const/4 v10, 0x0

    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v13, 0x0

    .line 216
    const/4 v14, 0x0

    .line 217
    const/4 v15, 0x0

    .line 218
    const/16 v16, 0x0

    .line 219
    .line 220
    invoke-static/range {v4 .. v18}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    .line 230
    return-object v3

    .line 231
    :pswitch_1
    move-object/from16 v1, p1

    .line 232
    .line 233
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    if-eqz v10, :cond_6

    .line 243
    .line 244
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    move-object v12, v0

    .line 257
    check-cast v12, Ljava/lang/String;

    .line 258
    .line 259
    const/16 v16, 0x0

    .line 260
    .line 261
    const/16 v17, 0xf4

    .line 262
    .line 263
    const-string v11, "click"

    .line 264
    .line 265
    const/4 v13, 0x0

    .line 266
    const-string v14, "article_select"

    .line 267
    .line 268
    const/4 v15, 0x0

    .line 269
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 270
    .line 271
    .line 272
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    iget-object v0, v4, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 276
    .line 277
    iget-object v0, v0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 280
    .line 281
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    new-instance v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 288
    .line 289
    const/4 v6, 0x6

    .line 290
    invoke-direct {v5, v4, v6}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 291
    .line 292
    .line 293
    new-instance v6, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 294
    .line 295
    invoke-direct {v6, v4, v1, v0, v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 296
    .line 297
    .line 298
    invoke-static {v2, v5, v9, v6, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 299
    .line 300
    .line 301
    return-object v3

    .line 302
    :pswitch_2
    move-object/from16 v1, p1

    .line 303
    .line 304
    check-cast v1, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    if-eqz v10, :cond_7

    .line 314
    .line 315
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    move-object v12, v0

    .line 328
    check-cast v12, Ljava/lang/String;

    .line 329
    .line 330
    const/16 v16, 0x0

    .line 331
    .line 332
    const/16 v17, 0xf4

    .line 333
    .line 334
    const-string v11, "click"

    .line 335
    .line 336
    const/4 v13, 0x0

    .line 337
    const-string/jumbo v14, "topic_select"

    .line 338
    .line 339
    .line 340
    const/4 v15, 0x0

    .line 341
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 342
    .line 343
    .line 344
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    sget-object v5, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 352
    .line 353
    new-instance v6, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 354
    .line 355
    const/16 v7, 0xc

    .line 356
    .line 357
    invoke-direct {v6, v5, v7}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 358
    .line 359
    .line 360
    new-instance v5, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 361
    .line 362
    invoke-direct {v5, v4, v1, v9, v2}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 363
    .line 364
    .line 365
    invoke-static {v0, v6, v9, v5, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 366
    .line 367
    .line 368
    return-object v3

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
