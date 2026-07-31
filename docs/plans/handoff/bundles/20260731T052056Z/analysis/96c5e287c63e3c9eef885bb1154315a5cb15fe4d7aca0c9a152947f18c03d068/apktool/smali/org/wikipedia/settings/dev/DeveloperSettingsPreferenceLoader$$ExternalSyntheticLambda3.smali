.class public final synthetic Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "Reading list"

    .line 4
    .line 5
    const-string v1, "Test reading list"

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    iget-object p0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    sget p1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->$r8$clinit:I

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "alarm"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    check-cast p2, Landroid/app/AlarmManager;

    .line 38
    .line 39
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    const-class v1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;

    .line 42
    .line 43
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "action_notification_poll"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const/high16 v1, 0xc000000

    .line 52
    .line 53
    invoke-static {p1, v5, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->startPollTask(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    return v6

    .line 71
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move p1, v6

    .line 98
    :goto_0
    invoke-static {v5, p1}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_1
    move-object v0, p1

    .line 116
    check-cast v0, Lkotlin/ranges/IntProgressionIterator;

    .line 117
    .line 118
    iget-boolean v0, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 119
    .line 120
    if-eqz v0, :cond_1

    .line 121
    .line 122
    move-object v0, p1

    .line 123
    check-cast v0, Lkotlin/collections/IntIterator;

    .line 124
    .line 125
    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    new-instance v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 130
    .line 131
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    .line 132
    .line 133
    const-string v5, "Malformed page "

    .line 134
    .line 135
    invoke-static {v0, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sget-object v5, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const-string v5, "foo"

    .line 145
    .line 146
    invoke-static {v5}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-direct {v2, v0, v5, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat;

    .line 163
    .line 164
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    new-instance v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 169
    .line 170
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 171
    .line 172
    .line 173
    new-instance p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 174
    .line 175
    invoke-direct {p0, p2, v3}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v0, v3, p0, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 179
    .line 180
    .line 181
    return v6

    .line 182
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_2

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    :cond_2
    if-eqz v5, :cond_3

    .line 208
    .line 209
    iget-object p1, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat;

    .line 212
    .line 213
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance p2, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 218
    .line 219
    invoke-direct {p2, p0, v6}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 220
    .line 221
    .line 222
    new-instance p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;

    .line 223
    .line 224
    invoke-direct {p0, v1, v5, v3}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p1, p2, v3, p0, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 228
    .line 229
    .line 230
    :cond_3
    return v6

    .line 231
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    :cond_4
    if-eqz v5, :cond_5

    .line 257
    .line 258
    iget-object p1, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat;

    .line 261
    .line 262
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    new-instance p2, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 267
    .line 268
    invoke-direct {p2, p0, v6}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 269
    .line 270
    .line 271
    new-instance p0, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;

    .line 272
    .line 273
    invoke-direct {p0, v0, v5, v3}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 274
    .line 275
    .line 276
    invoke-static {p1, p2, v3, p0, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 277
    .line 278
    .line 279
    :cond_5
    return v6

    .line 280
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    if-eqz p1, :cond_6

    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    goto :goto_2

    .line 306
    :cond_6
    move p1, v5

    .line 307
    :goto_2
    if-eqz p1, :cond_7

    .line 308
    .line 309
    iget-object p2, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p2, Landroidx/preference/PreferenceFragmentCompat;

    .line 312
    .line 313
    invoke-static {p2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    new-instance v1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 318
    .line 319
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 320
    .line 321
    .line 322
    new-instance p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;

    .line 323
    .line 324
    invoke-direct {p0, p1, v0, v2, v3}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;-><init>(ILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 325
    .line 326
    .line 327
    invoke-static {p2, v1, v3, p0, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 328
    .line 329
    .line 330
    :cond_7
    return v6

    .line 331
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    check-cast p2, Ljava/lang/String;

    .line 335
    .line 336
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 337
    .line 338
    const p1, 0x7f1205f6

    .line 339
    .line 340
    .line 341
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    return v6

    .line 352
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    if-eqz p1, :cond_8

    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    goto :goto_3

    .line 378
    :cond_8
    move p1, v5

    .line 379
    :goto_3
    if-eqz p1, :cond_9

    .line 380
    .line 381
    iget-object p2, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast p2, Landroidx/preference/PreferenceFragmentCompat;

    .line 384
    .line 385
    invoke-static {p2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    new-instance v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 390
    .line 391
    invoke-direct {v0, p0, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 392
    .line 393
    .line 394
    new-instance p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;

    .line 395
    .line 396
    invoke-direct {p0, v6, v1, p1, v3}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$2;-><init>(ILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 397
    .line 398
    .line 399
    invoke-static {p2, v0, v3, p0, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 400
    .line 401
    .line 402
    :cond_9
    return v6

    .line 403
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v0, v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 16
    .line 17
    sget-object v1, Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;->NO_INTERACTED:Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setOtdNotificationState(Lorg/wikipedia/games/onthisday/OnThisDayGameNotificationState;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "alarm"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast v2, Landroid/app/AlarmManager;

    .line 40
    .line 41
    new-instance v3, Landroid/content/Intent;

    .line 42
    .line 43
    const-class v4, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;

    .line 44
    .line 45
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    const-string v4, "action_daily_game"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/high16 v4, 0x4000000

    .line 58
    .line 59
    invoke-static {v1, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "Notification state reset."

    .line 71
    .line 72
    invoke-static {v0, v1, v5}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 73
    .line 74
    .line 75
    return v6

    .line 76
    :pswitch_1
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lorg/jsoup/nodes/NodeUtils;->showNotification(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    return v6

    .line 88
    :pswitch_2
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 89
    .line 90
    const v1, 0x7f120640

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v1, "Reset complete."

    .line 105
    .line 106
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    .line 112
    .line 113
    return v6

    .line 114
    :pswitch_3
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 115
    .line 116
    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 117
    .line 118
    invoke-static {v1}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v3, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 123
    .line 124
    invoke-direct {v3, v0, v4, v6}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;Lkotlin/coroutines/Continuation;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v4, v4, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 128
    .line 129
    .line 130
    return v6

    .line 131
    :pswitch_4
    sget v1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->$r8$clinit:I

    .line 132
    .line 133
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const v1, 0x7f1208fc

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    .line 145
    .line 146
    .line 147
    return v6

    .line 148
    :pswitch_5
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 149
    .line 150
    const v1, 0x7f1205d0

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->loadPreferences()V

    .line 157
    .line 158
    .line 159
    return v6

    .line 160
    :pswitch_6
    iget-object v1, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v1, Landroidx/preference/PreferenceFragmentCompat;

    .line 163
    .line 164
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 169
    .line 170
    const/4 v5, 0x4

    .line 171
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 172
    .line 173
    .line 174
    new-instance v5, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 175
    .line 176
    invoke-direct {v5, v0, v4, v3}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;Lkotlin/coroutines/Continuation;I)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v2, v4, v5, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 180
    .line 181
    .line 182
    return v6

    .line 183
    :pswitch_7
    iget-object v1, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Landroidx/preference/PreferenceFragmentCompat;

    .line 186
    .line 187
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v7, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 192
    .line 193
    invoke-direct {v7, v0, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V

    .line 194
    .line 195
    .line 196
    new-instance v2, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 197
    .line 198
    invoke-direct {v2, v0, v4, v5}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;Lkotlin/coroutines/Continuation;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v7, v4, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 202
    .line 203
    .line 204
    return v6

    .line 205
    :pswitch_8
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-instance v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;

    .line 218
    .line 219
    invoke-direct {v1}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-static {v0, v1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 223
    .line 224
    .line 225
    return v6

    .line 226
    :pswitch_9
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 227
    .line 228
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    const/16 v18, 0x0

    .line 233
    .line 234
    const/16 v19, 0x1fd

    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    const-wide/16 v9, 0x0

    .line 238
    .line 239
    const-wide/16 v11, 0x0

    .line 240
    .line 241
    const/4 v13, 0x0

    .line 242
    const/4 v14, 0x0

    .line 243
    const/4 v15, 0x0

    .line 244
    const/16 v16, 0x0

    .line 245
    .line 246
    const/16 v17, 0x0

    .line 247
    .line 248
    invoke-static/range {v7 .. v19}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v2, "promptLastSeen has been reset"

    .line 264
    .line 265
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 277
    .line 278
    .line 279
    return v6

    .line 280
    :pswitch_a
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 281
    .line 282
    new-instance v1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 283
    .line 284
    invoke-direct {v1}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 288
    .line 289
    .line 290
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const-string v2, "donationReminderConfig has been reset"

    .line 299
    .line 300
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 312
    .line 313
    .line 314
    return v6

    .line 315
    :pswitch_b
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 318
    .line 319
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    new-instance v2, Landroid/content/Intent;

    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-class v3, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 330
    .line 331
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 335
    .line 336
    .line 337
    return v6

    .line 338
    :pswitch_c
    sget v1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->$r8$clinit:I

    .line 339
    .line 340
    iget-object v0, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 343
    .line 344
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const v1, 0x7f1208fb

    .line 349
    .line 350
    .line 351
    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    .line 352
    .line 353
    .line 354
    return v6

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
