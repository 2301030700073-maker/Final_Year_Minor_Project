.class public final synthetic Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .line 1
    iget p2, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/views/TextInputDialog;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lokio/internal/DefaultSocket;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lokio/internal/DefaultSocket;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Lorg/wikipedia/views/PlainPasteEditText;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget-object p1, p1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-interface {p1, p2, p0}, Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    :pswitch_0
    check-cast p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;

    .line 83
    .line 84
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 85
    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    :pswitch_1
    check-cast p0, Lorg/wikipedia/views/CustomDatePicker;

    .line 93
    .line 94
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->callback:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p0, p0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onDatePicked(Ljava/util/Calendar;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void

    .line 107
    :pswitch_2
    check-cast p0, Lorg/wikipedia/usercontrib/UserInformationDialog;

    .line 108
    .line 109
    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_3
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 114
    .line 115
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 116
    .line 117
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 118
    .line 119
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 120
    .line 121
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 126
    .line 127
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const-string v6, "app_patroller_experience"

    .line 132
    .line 133
    const-string v1, "message_delete_click"

    .line 134
    .line 135
    const-string v2, "pt_templates"

    .line 136
    .line 137
    const-string v3, ""

    .line 138
    .line 139
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->deleteSelectedTalkTemplates()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_4
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 150
    .line 151
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 152
    .line 153
    sget p2, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 154
    .line 155
    const-string p2, "subscribe"

    .line 156
    .line 157
    invoke-static {p0, p2, v0}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p1, p0, v2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_5
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_6
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 176
    .line 177
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 178
    .line 179
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object p1, p1, Lorg/wikipedia/language/AppLanguageState;->_appLanguageCodes:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-le v1, v0, :cond_3

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 203
    .line 204
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setAppLanguageCodeList(Ljava/util/List;)V

    .line 205
    .line 206
    .line 207
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 208
    .line 209
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    .line 214
    .line 215
    .line 216
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->prepareWikipediaLanguagesList()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 223
    .line 224
    if-eqz p1, :cond_5

    .line 225
    .line 226
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 230
    .line 231
    if-eqz p1, :cond_4

    .line 232
    .line 233
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 234
    .line 235
    .line 236
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_5
    const-string p0, "adapter"

    .line 245
    .line 246
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v2

    .line 250
    :pswitch_7
    check-cast p0, Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    sget p1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 256
    .line 257
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 260
    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string p2, "settings"

    .line 266
    .line 267
    invoke-static {p1, p2, v0}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_8
    check-cast p0, Landroidx/preference/Preference;

    .line 280
    .line 281
    const/4 v7, 0x0

    .line 282
    const/16 v2, 0xee

    .line 283
    .line 284
    const/4 v3, 0x0

    .line 285
    const-string/jumbo v4, "yir_off_confirm_click"

    .line 286
    .line 287
    .line 288
    const/4 v5, 0x0

    .line 289
    const-string v6, "setting"

    .line 290
    .line 291
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 295
    .line 296
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 297
    .line 298
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setYearInReviewModelData(Ljava/util/Map;)V

    .line 299
    .line 300
    .line 301
    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_9
    check-cast p0, Lorg/wikipedia/search/RecentSearchesFragment;

    .line 308
    .line 309
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iget-object p2, p0, Lorg/wikipedia/search/RecentSearchesFragment;->coroutineExceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 314
    .line 315
    new-instance v0, Lorg/wikipedia/search/RecentSearchesFragment$onCreateView$1$1$1;

    .line 316
    .line 317
    invoke-direct {v0, p0, v2, v1}, Lorg/wikipedia/search/RecentSearchesFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;Lkotlin/coroutines/Continuation;I)V

    .line 318
    .line 319
    .line 320
    const/4 p0, 0x2

    .line 321
    invoke-static {p1, p2, v2, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :pswitch_a
    move-object v4, p0

    .line 326
    check-cast v4, Ljava/lang/String;

    .line 327
    .line 328
    const/4 v10, 0x0

    .line 329
    const/16 v11, 0x1fc

    .line 330
    .line 331
    const-string v3, "built_cancel_click"

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    const/4 v6, 0x0

    .line 335
    const/4 v7, 0x0

    .line 336
    const/4 v8, 0x0

    .line 337
    const/4 v9, 0x0

    .line 338
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :pswitch_b
    check-cast p0, Landroid/app/Activity;

    .line 343
    .line 344
    const/4 v7, 0x0

    .line 345
    const/16 v8, 0x1fc

    .line 346
    .line 347
    const-string v0, "settings_click"

    .line 348
    .line 349
    const-string v1, "sync_off_prompt"

    .line 350
    .line 351
    const/4 v2, 0x0

    .line 352
    const/4 v3, 0x0

    .line 353
    const/4 v4, 0x0

    .line 354
    const/4 v5, 0x0

    .line 355
    const/4 v6, 0x0

    .line 356
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    sget p1, Lorg/wikipedia/settings/SettingsActivity;->$r8$clinit:I

    .line 360
    .line 361
    new-instance p1, Landroid/content/Intent;

    .line 362
    .line 363
    const-class p2, Lorg/wikipedia/settings/SettingsActivity;

    .line 364
    .line 365
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_c
    check-cast p0, Lorg/wikipedia/page/tabs/TabActivity;

    .line 373
    .line 374
    sget p1, Lorg/wikipedia/page/tabs/TabActivity;->$r8$clinit:I

    .line 375
    .line 376
    const-string p1, "All tabs removed."

    .line 377
    .line 378
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 382
    .line 383
    iget-object p2, p1, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 392
    .line 393
    .line 394
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 395
    .line 396
    const-string v0, "binding"

    .line 397
    .line 398
    if-eqz p1, :cond_8

    .line 399
    .line 400
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast p1, Lorg/wikipedia/views/TabCountsView;

    .line 403
    .line 404
    invoke-virtual {p1, v1}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 405
    .line 406
    .line 407
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 408
    .line 409
    if-eqz p1, :cond_7

    .line 410
    .line 411
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast p1, Lorg/wikipedia/views/AutoFitRecyclerView;

    .line 414
    .line 415
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    if-eqz p1, :cond_6

    .line 420
    .line 421
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 426
    .line 427
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 428
    .line 429
    .line 430
    :cond_6
    const/16 p1, 0xa

    .line 431
    .line 432
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 433
    .line 434
    .line 435
    const p1, 0x7f12007b

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    const/16 v0, 0xc

    .line 446
    .line 447
    invoke-static {p0, p1, v1, v0}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 452
    .line 453
    const/16 v1, 0x12

    .line 454
    .line 455
    invoke-direct {v0, v1, p0, p2}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    const p0, 0x7f120775

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 465
    .line 466
    .line 467
    return-void

    .line 468
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw v2

    .line 472
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v2

    .line 476
    :pswitch_d
    check-cast p0, Ljava/lang/Runnable;

    .line 477
    .line 478
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 479
    .line 480
    .line 481
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :pswitch_e
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 486
    .line 487
    sget p2, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 488
    .line 489
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 490
    .line 491
    .line 492
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :pswitch_f
    check-cast p0, Lorg/wikipedia/edit/EditSectionActivity;

    .line 497
    .line 498
    sget p2, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 499
    .line 500
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->doSave()V

    .line 501
    .line 502
    .line 503
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :pswitch_10
    check-cast p0, Lorg/wikipedia/Constants$InvokeSource;

    .line 508
    .line 509
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 510
    .line 511
    if-ne p0, p1, :cond_9

    .line 512
    .line 513
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 514
    .line 515
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 516
    .line 517
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 518
    .line 519
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 524
    .line 525
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    const-string v6, "app_patroller_experience"

    .line 530
    .line 531
    const-string/jumbo v1, "undo_cancel"

    .line 532
    .line 533
    .line 534
    const-string v2, "pt_edit"

    .line 535
    .line 536
    const-string v3, ""

    .line 537
    .line 538
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 542
    .line 543
    .line 544
    :cond_9
    return-void

    .line 545
    :pswitch_11
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 546
    .line 547
    sget p1, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 548
    .line 549
    sget p1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 550
    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    const-string p2, "edit"

    .line 556
    .line 557
    invoke-static {p1, p2, v0}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 562
    .line 563
    .line 564
    return-void

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
