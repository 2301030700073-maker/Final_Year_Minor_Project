.class public final synthetic Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p4, p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object v9, v0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 22
    .line 23
    check-cast v9, Lorg/maplibre/android/maps/MapView;

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {v1, v5, v9}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    invoke-direct {v2, v0, v1, v9, v3}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :pswitch_0
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;

    .line 50
    .line 51
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 52
    .line 53
    check-cast v1, Landroidx/navigation/NavGraphBuilder;

    .line 54
    .line 55
    sget v2, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;

    .line 61
    .line 62
    invoke-direct {v2, v5, v0, v9}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 66
    .line 67
    const v3, 0x5c2b2fb0

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v2, v7, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    .line 74
    .line 75
    iget-object v3, v1, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-class v4, Landroidx/navigation/compose/ComposeNavigator;

    .line 81
    .line 82
    invoke-static {v4}, Lkotlin/uuid/UuidKt;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroidx/navigation/compose/ComposeNavigator;

    .line 91
    .line 92
    invoke-direct {v2, v3, v0}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v1, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    return-object v8

    .line 105
    :pswitch_1
    check-cast v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 106
    .line 107
    check-cast v9, Ljava/util/List;

    .line 108
    .line 109
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__updateAdapterOfTalkTemplate:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v9}, Lcoil3/util/UtilsKt;->handleMultiple(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 117
    .line 118
    .line 119
    return-object v8

    .line 120
    :pswitch_2
    check-cast v0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 121
    .line 122
    check-cast v9, Lorg/wikipedia/talk/db/TalkPageSeen;

    .line 123
    .line 124
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;->__insertAdapterOfTalkPageSeen:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 130
    .line 131
    invoke-virtual {v0, v1, v9}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v8

    .line 135
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    .line 136
    .line 137
    check-cast v9, Ljava/util/Date;

    .line 138
    .line 139
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const-string v2, "DELETE FROM RecentSearch WHERE text = ? AND timestamp = ?"

    .line 145
    .line 146
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :try_start_0
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v9}, Lorg/wikipedia/login/LoginClient;->dateToTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    .line 159
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v2

    .line 169
    invoke-interface {v1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 170
    .line 171
    .line 172
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 176
    .line 177
    .line 178
    return-object v8

    .line 179
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :pswitch_4
    check-cast v0, Lorg/wikipedia/search/db/RecentSearchDao_Impl;

    .line 184
    .line 185
    check-cast v9, Lorg/wikipedia/search/db/RecentSearch;

    .line 186
    .line 187
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v0, v0, Lorg/wikipedia/search/db/RecentSearchDao_Impl;->__insertAdapterOfRecentSearch:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 193
    .line 194
    invoke-virtual {v0, v1, v9}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    return-object v8

    .line 198
    :pswitch_5
    check-cast v0, Ljava/util/List;

    .line 199
    .line 200
    check-cast v9, Landroidx/compose/animation/core/InfiniteTransition;

    .line 201
    .line 202
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v2, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    invoke-direct {v2, v0, v9, v6}, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 213
    .line 214
    const v3, -0x16e6c678

    .line 215
    .line 216
    .line 217
    invoke-direct {v0, v2, v7, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v5, v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 221
    .line 222
    .line 223
    return-object v8

    .line 224
    :pswitch_6
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 225
    .line 226
    check-cast v9, Lorg/wikipedia/search/SearchResult;

    .line 227
    .line 228
    check-cast v1, Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 231
    .line 232
    .line 233
    invoke-interface {v0, v1, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    return-object v8

    .line 237
    :pswitch_7
    check-cast v0, Lorg/wikipedia/search/HybridSearchOnboardingActivity;

    .line 238
    .line 239
    check-cast v9, Lorg/wikipedia/Constants$InvokeSource;

    .line 240
    .line 241
    check-cast v1, Ljava/lang/String;

    .line 242
    .line 243
    sget v2, Lorg/wikipedia/search/HybridSearchOnboardingActivity;->$r8$clinit:I

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    if-eqz v10, :cond_1

    .line 253
    .line 254
    const-string v2, "query"

    .line 255
    .line 256
    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 257
    .line 258
    .line 259
    move-result-object v16

    .line 260
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    const/16 v17, 0x76

    .line 264
    .line 265
    const-string v11, "click"

    .line 266
    .line 267
    const/4 v12, 0x0

    .line 268
    const/4 v13, 0x0

    .line 269
    const-string v14, "onboarding_query"

    .line 270
    .line 271
    const/4 v15, 0x0

    .line 272
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 273
    .line 274
    .line 275
    :cond_1
    sget v2, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 276
    .line 277
    if-nez v9, :cond_2

    .line 278
    .line 279
    sget-object v9, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 280
    .line 281
    :cond_2
    const/16 v2, 0x18

    .line 282
    .line 283
    invoke-static {v0, v9, v1, v3, v2}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 291
    .line 292
    .line 293
    return-object v8

    .line 294
    :pswitch_8
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 295
    .line 296
    check-cast v9, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

    .line 297
    .line 298
    check-cast v1, Landroid/graphics/Bitmap;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 304
    .line 305
    invoke-virtual {v1, v2, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 312
    .line 313
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-nez v4, :cond_3

    .line 322
    .line 323
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 326
    .line 327
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    new-instance v5, Landroid/graphics/Canvas;

    .line 335
    .line 336
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .line 338
    .line 339
    new-instance v4, Landroid/graphics/Rect;

    .line 340
    .line 341
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    invoke-direct {v4, v6, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    .line 351
    .line 352
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 355
    .line 356
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v5, v2, v4, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, v9, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->view:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Landroid/widget/TextView;

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 368
    .line 369
    .line 370
    :cond_3
    return-object v8

    .line 371
    :pswitch_9
    move-object v10, v0

    .line 372
    check-cast v10, Ljava/lang/String;

    .line 373
    .line 374
    move-object v0, v9

    .line 375
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    .line 376
    .line 377
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v2, "_click"

    .line 395
    .line 396
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    const/16 v16, 0x0

    .line 404
    .line 405
    const/16 v17, 0x1fc

    .line 406
    .line 407
    const/4 v11, 0x0

    .line 408
    const/4 v12, 0x0

    .line 409
    const/4 v13, 0x0

    .line 410
    const/4 v14, 0x0

    .line 411
    const/4 v15, 0x0

    .line 412
    invoke-static/range {v9 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    iget-boolean v2, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->fromSettings:Z

    .line 420
    .line 421
    if-eqz v2, :cond_5

    .line 422
    .line 423
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 424
    .line 425
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    if-ne v1, v2, :cond_4

    .line 430
    .line 431
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->updateSourceSelection(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 436
    .line 437
    .line 438
    goto :goto_2

    .line 439
    :cond_4
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 440
    .line 441
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-direct {v2, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 446
    .line 447
    .line 448
    const v3, 0x7f12080c

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 452
    .line 453
    .line 454
    const v3, 0x7f120809

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 458
    .line 459
    .line 460
    iget-object v3, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 463
    .line 464
    iput-boolean v6, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 465
    .line 466
    new-instance v3, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 467
    .line 468
    const/4 v4, 0x7

    .line 469
    invoke-direct {v3, v4, v10}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    const v4, 0x7f12080a

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 476
    .line 477
    .line 478
    new-instance v3, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;

    .line 479
    .line 480
    const/4 v4, 0x6

    .line 481
    invoke-direct {v3, v10, v0, v1, v4}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 482
    .line 483
    .line 484
    const v0, 0x7f12080b

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 491
    .line 492
    .line 493
    goto :goto_2

    .line 494
    :cond_5
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->updateSourceSelection(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 499
    .line 500
    .line 501
    :goto_2
    return-object v8

    .line 502
    :pswitch_a
    check-cast v0, Ljava/util/Map;

    .line 503
    .line 504
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 505
    .line 506
    check-cast v1, Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 516
    .line 517
    if-nez v0, :cond_6

    .line 518
    .line 519
    sget-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->DAILY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 520
    .line 521
    :cond_6
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    return-object v8

    .line 525
    :pswitch_b
    check-cast v0, Ljava/lang/String;

    .line 526
    .line 527
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 528
    .line 529
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    const-string v2, "SELECT COUNT(*) FROM RecommendedPage WHERE apiTitle = ? AND wiki = ?"

    .line 535
    .line 536
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    :try_start_1
    invoke-interface {v1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v9}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    if-nez v0, :cond_7

    .line 548
    .line 549
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 550
    .line 551
    .line 552
    goto :goto_3

    .line 553
    :catchall_1
    move-exception v0

    .line 554
    goto :goto_4

    .line 555
    :cond_7
    invoke-interface {v1, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 556
    .line 557
    .line 558
    :goto_3
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-eqz v0, :cond_8

    .line 563
    .line 564
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 565
    .line 566
    .line 567
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    long-to-int v6, v2

    .line 569
    :cond_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 570
    .line 571
    .line 572
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    return-object v0

    .line 577
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 578
    .line 579
    .line 580
    throw v0

    .line 581
    :pswitch_c
    check-cast v0, Lorg/wikipedia/util/SingleLiveData;

    .line 582
    .line 583
    check-cast v9, Landroidx/lifecycle/Observer;

    .line 584
    .line 585
    iget-object v0, v0, Lorg/wikipedia/util/SingleLiveData;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 586
    .line 587
    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-eqz v0, :cond_9

    .line 592
    .line 593
    invoke-interface {v9, v1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    :cond_9
    return-object v8

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
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
