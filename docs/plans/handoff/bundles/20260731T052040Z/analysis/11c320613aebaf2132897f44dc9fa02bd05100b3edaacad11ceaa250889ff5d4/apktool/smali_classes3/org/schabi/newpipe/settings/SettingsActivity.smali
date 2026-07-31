.class public Lorg/schabi/newpipe/settings/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public menuSearchItem:Landroid/view/MenuItem;

.field public searchContainer:Landroid/view/View;

.field public searchEditText:Landroid/widget/EditText;

.field public searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

.field searchText:Ljava/lang/String;

.field wasSearchActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final isSearchActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f130242

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f130063

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f130050

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p0}, Lokio/Options$Companion;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v4, 0x0

    .line 35
    const v5, 0x7f14017a

    .line 36
    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const v6, 0x7f140138

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    :goto_0
    move v5, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const v1, 0x7f140148

    .line 57
    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-static {p0}, Lokio/Options$Companion;->isDeviceDarkThemeEnabled(Landroid/content/Context;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const v0, 0x7f13034f

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const v5, 0x7f1300dd

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move v5, v1

    .line 105
    :cond_3
    :goto_1
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 106
    .line 107
    .line 108
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    move p1, v0

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move p1, v4

    .line 120
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v2, 0x7f0d00fc

    .line 125
    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const v2, 0x7f0a036b

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Landroidx/fragment/app/FragmentContainerView;

    .line 140
    .line 141
    if-eqz v5, :cond_c

    .line 142
    .line 143
    const v5, 0x7f0a036c

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    if-eqz v6, :cond_b

    .line 151
    .line 152
    invoke-static {v6}, Lorg/jsoup/nodes/Printer;->bind(Landroid/view/View;)Lorg/jsoup/nodes/Printer;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget-object v5, v5, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    .line 159
    .line 160
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    const v1, 0x7f0a0401

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    .line 173
    .line 174
    const v6, 0x7f0a0402

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Landroid/widget/EditText;

    .line 182
    .line 183
    iput-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v6, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 189
    .line 190
    invoke-direct {v6, v1, v0}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 191
    .line 192
    .line 193
    const-wide/16 v7, 0xc8

    .line 194
    .line 195
    invoke-virtual {v6, v7, v8}, Lio/reactivex/rxjava3/core/Observable;->debounce(J)Lio/reactivex/rxjava3/internal/operators/observable/ObservableDebounceTimed;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    new-instance v6, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;

    .line 200
    .line 201
    invoke-direct {v6, p0}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget-object v7, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 205
    .line 206
    new-instance v8, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 207
    .line 208
    invoke-direct {v8, v6, v7}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v8}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    .line 215
    .line 216
    const v6, 0x7f0a03ff

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-instance v6, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;

    .line 224
    .line 225
    invoke-direct {v6, p0, v4}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    invoke-static {}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_5

    .line 236
    .line 237
    sget-object v1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    .line 238
    .line 239
    const v6, 0x7f16000e

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v6}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getEntryByPreferencesResId(I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iput-boolean v4, v1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    .line 247
    .line 248
    :cond_5
    new-instance v1, Lorg/jsoup/nodes/Printer;

    .line 249
    .line 250
    invoke-direct {v1}, Lorg/jsoup/nodes/Printer;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    new-instance v6, Lorg/jsoup/nodes/Printer;

    .line 258
    .line 259
    invoke-direct {v6, v4, v1}, Lorg/jsoup/nodes/Printer;-><init>(Landroid/content/Context;Lorg/jsoup/nodes/Printer;)V

    .line 260
    .line 261
    .line 262
    new-instance v4, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 263
    .line 264
    invoke-direct {v4, v1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;-><init>(Lorg/jsoup/nodes/Printer;)V

    .line 265
    .line 266
    .line 267
    sget-object v1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    new-instance v7, Ljava/util/HashSet;

    .line 273
    .line 274
    iget-object v1, v1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/HashSet;

    .line 275
    .line 276
    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v7}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    new-instance v7, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 284
    .line 285
    const/16 v8, 0x11

    .line 286
    .line 287
    invoke-direct {v7, v8}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-interface {v1, v7}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    new-instance v7, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 295
    .line 296
    const/16 v8, 0xe

    .line 297
    .line 298
    invoke-direct {v7, v8}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v1, v7}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    new-instance v7, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda4;

    .line 306
    .line 307
    invoke-direct {v7, v6}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/jsoup/nodes/Printer;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {v1, v7}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    new-instance v6, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda5;

    .line 315
    .line 316
    invoke-direct {v6, v4}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 317
    .line 318
    .line 319
    invoke-interface {v1, v6}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 320
    .line 321
    .line 322
    if-eqz p1, :cond_6

    .line 323
    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const-string v6, "PreferenceSearchFragment"

    .line 329
    .line 330
    invoke-virtual {v1, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 335
    .line 336
    iput-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 337
    .line 338
    if-eqz v1, :cond_6

    .line 339
    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance v6, Landroidx/fragment/app/BackStackRecord;

    .line 348
    .line 349
    invoke-direct {v6, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 353
    .line 354
    invoke-virtual {v6, v1}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 358
    .line 359
    .line 360
    :cond_6
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 361
    .line 362
    if-nez v1, :cond_7

    .line 363
    .line 364
    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 365
    .line 366
    invoke-direct {v1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;-><init>()V

    .line 367
    .line 368
    .line 369
    iput-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 370
    .line 371
    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 372
    .line 373
    iput-object v4, v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->searcher:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 374
    .line 375
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 376
    .line 377
    .line 378
    if-eqz p1, :cond_8

    .line 379
    .line 380
    iget-boolean p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->wasSearchActive:Z

    .line 381
    .line 382
    if-eqz p1, :cond_9

    .line 383
    .line 384
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    .line 385
    .line 386
    .line 387
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    .line 388
    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-nez p1, :cond_9

    .line 394
    .line 395
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 396
    .line 397
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    goto :goto_3

    .line 403
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 411
    .line 412
    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 413
    .line 414
    .line 415
    new-instance p1, Lorg/schabi/newpipe/settings/MainSettingsFragment;

    .line 416
    .line 417
    invoke-direct {p1}, Lorg/schabi/newpipe/settings/MainSettingsFragment;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v2, p1, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 424
    .line 425
    .line 426
    :cond_9
    :goto_3
    invoke-static {p0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-eqz p1, :cond_a

    .line 431
    .line 432
    invoke-static {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupFocusObserver(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 433
    .line 434
    .line 435
    :cond_a
    return-void

    .line 436
    :cond_b
    move v2, v5

    .line 437
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    const-string p1, "Missing required view with ID: "

    .line 446
    .line 447
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lokio/Options$Companion;->setDisplayShowTitleEnabled(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->menuSearchItem:Landroid/view/MenuItem;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 5
    .line 6
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, -0x1

    .line 47
    invoke-direct {v2, v0, v3, v4, v1}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setSearchActive(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->wasSearchActive:Z

    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchContainer:Landroid/view/View;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    move v2, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 v2, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->menuSearchItem:Landroid/view/MenuItem;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    xor-int/lit8 v2, p1, 0x1

    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    :cond_2
    const-string v0, "PreferenceSearchFragment"

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f0a036b

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 52
    .line 53
    invoke-virtual {v1, p1, v3, v0, v2}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    .line 80
    .line 81
    invoke-direct {v3, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 85
    .line 86
    invoke-virtual {v3, p1}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 100
    .line 101
    const/4 v4, -0x1

    .line 102
    invoke-direct {v3, p1, v0, v4, v2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v3, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 109
    .line 110
    if-nez p1, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 128
    .line 129
    .line 130
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 134
    .line 135
    const-string p1, ""

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
