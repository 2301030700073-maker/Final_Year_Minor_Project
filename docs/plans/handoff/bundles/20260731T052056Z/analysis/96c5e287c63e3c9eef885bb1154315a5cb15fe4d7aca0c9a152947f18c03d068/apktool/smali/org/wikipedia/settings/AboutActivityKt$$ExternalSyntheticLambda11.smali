.class public final synthetic Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v6, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    check-cast v6, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 20
    .line 21
    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-object v5

    .line 25
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    check-cast v6, Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;

    .line 28
    .line 29
    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v5

    .line 33
    :pswitch_1
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

    .line 34
    .line 35
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 38
    .line 39
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-interface {v6, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->proceed()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object v5

    .line 55
    :pswitch_2
    check-cast p0, Landroid/content/SharedPreferences;

    .line 56
    .line 57
    check-cast v6, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 60
    .line 61
    .line 62
    return-object v5

    .line 63
    :pswitch_3
    check-cast p0, Landroid/content/Context;

    .line 64
    .line 65
    check-cast v6, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 66
    .line 67
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    const/16 v14, 0xf6

    .line 75
    .line 76
    const-string v8, "click"

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    const-string v11, "customize_feed"

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    invoke-static/range {v7 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    sget v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 87
    .line 88
    invoke-static {p0}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v6, p0, v4}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 93
    .line 94
    .line 95
    return-object v5

    .line 96
    :pswitch_4
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 97
    .line 98
    check-cast v6, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 99
    .line 100
    iget-object v0, v6, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->type:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 101
    .line 102
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-object v5

    .line 106
    :pswitch_5
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 107
    .line 108
    check-cast v6, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;

    .line 109
    .line 110
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 111
    .line 112
    const/16 v1, 0xf

    .line 113
    .line 114
    invoke-direct {v0, v1, v6, v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x3

    .line 118
    invoke-static {p0, v4, v4, v0, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 119
    .line 120
    .line 121
    return-object v5

    .line 122
    :pswitch_6
    check-cast p0, Landroid/content/SharedPreferences;

    .line 123
    .line 124
    check-cast v6, Lorg/wikipedia/settings/Prefs$preferenceKeyChangeFlow$1$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 127
    .line 128
    .line 129
    return-object v5

    .line 130
    :pswitch_7
    check-cast p0, Landroid/content/SharedPreferences;

    .line 131
    .line 132
    check-cast v6, Lorg/wikipedia/settings/Prefs$placesLastLocationFlow$1$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 135
    .line 136
    .line 137
    return-object v5

    .line 138
    :pswitch_8
    check-cast p0, Landroidx/compose/runtime/State;

    .line 139
    .line 140
    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 141
    .line 142
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p0, :cond_2

    .line 149
    .line 150
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-interface {v6, v4, p0, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_2
    return-object v5

    .line 156
    :pswitch_9
    check-cast p0, Ljava/lang/String;

    .line 157
    .line 158
    check-cast v6, Landroidx/paging/compose/LazyPagingItems;

    .line 159
    .line 160
    if-nez p0, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move-object v1, p0

    .line 164
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-nez p0, :cond_4

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {v6}, Landroidx/paging/compose/LazyPagingItems;->getItemCount()I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-nez p0, :cond_5

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    iget-object p0, v6, Landroidx/paging/compose/LazyPagingItems;->itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Landroidx/paging/ItemSnapshotList;

    .line 185
    .line 186
    iget-object p0, p0, Landroidx/paging/ItemSnapshotList;->items:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_6

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_8

    .line 204
    .line 205
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lorg/wikipedia/search/SearchResult;

    .line 210
    .line 211
    iget-object v0, v0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 212
    .line 213
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    move v2, v3

    .line 224
    :cond_8
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    return-object p0

    .line 229
    :pswitch_a
    check-cast p0, Landroid/view/View;

    .line 230
    .line 231
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v1, "input_method"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 256
    .line 257
    .line 258
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-interface {v6, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    return-object v5

    .line 264
    :pswitch_b
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 265
    .line 266
    check-cast v6, Landroidx/compose/runtime/State;

    .line 267
    .line 268
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Ljava/lang/String;

    .line 273
    .line 274
    if-nez v0, :cond_9

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    move-object v1, v0

    .line 278
    :goto_3
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    return-object v5

    .line 282
    :pswitch_c
    check-cast p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity;

    .line 283
    .line 284
    check-cast v6, Lorg/wikipedia/Constants$InvokeSource;

    .line 285
    .line 286
    sget v0, Lorg/wikipedia/search/HybridSearchOnboardingActivity;->$r8$clinit:I

    .line 287
    .line 288
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    if-eqz v7, :cond_a

    .line 293
    .line 294
    const/4 v13, 0x0

    .line 295
    const/16 v14, 0xf6

    .line 296
    .line 297
    const-string v8, "click"

    .line 298
    .line 299
    const/4 v9, 0x0

    .line 300
    const/4 v10, 0x0

    .line 301
    const-string v11, "start_button"

    .line 302
    .line 303
    const/4 v12, 0x0

    .line 304
    invoke-static/range {v7 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 305
    .line 306
    .line 307
    :cond_a
    sget v0, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 308
    .line 309
    if-nez v6, :cond_b

    .line 310
    .line 311
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 312
    .line 313
    :cond_b
    const/16 v0, 0x38

    .line 314
    .line 315
    invoke-static {p0, v6, v4, v4, v0}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 320
    .line 321
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHybridSearchEnabled()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_c

    .line 326
    .line 327
    const-string v1, "showSnackbarMessage"

    .line 328
    .line 329
    const v2, 0x7f1202c7

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    :cond_c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 339
    .line 340
    .line 341
    return-object v5

    .line 342
    :pswitch_d
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 343
    .line 344
    check-cast v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 345
    .line 346
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    add-int/2addr v0, v3

    .line 351
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    const/4 v1, 0x7

    .line 359
    if-ne v0, v1, :cond_e

    .line 360
    .line 361
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 362
    .line 363
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 370
    .line 371
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_d
    const v0, 0x7f120680

    .line 376
    .line 377
    .line 378
    invoke-static {v0, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 379
    .line 380
    .line 381
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    :cond_e
    :goto_4
    return-object v5

    .line 387
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
