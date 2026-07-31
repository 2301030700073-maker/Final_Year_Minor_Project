.class public final Lorg/wikipedia/settings/SettingsPreferenceLoader;
.super Lorg/wikipedia/settings/BasePreferenceLoader;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceFragmentCompat;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final loadPreferences()V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f15000f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f12062e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lorg/wikipedia/settings/PreferenceMultiLine;

    .line 21
    .line 22
    new-instance v2, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-direct {v2, v1, p0}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 33
    .line 34
    const/16 v2, 0x7e9

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const v3, 0x7f15000b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->getDisableReadingListSync()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x0

    .line 55
    const v5, 0x7f120691

    .line 56
    .line 57
    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    const v3, 0x7f1205ba

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v5}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0, v5}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v5, Lorg/wikipedia/media/AvPlayer;

    .line 82
    .line 83
    const/16 v6, 0x15

    .line 84
    .line 85
    invoke-direct {v5, v6, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object v5, v3, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 89
    .line 90
    const v3, 0x7f15000c

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->updateLanguagePrefSummary()V

    .line 97
    .line 98
    .line 99
    const v3, 0x7f12061a

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    new-instance v5, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v5, p0, v4}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 109
    .line 110
    .line 111
    iput-object v5, v3, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 112
    .line 113
    const v3, 0x7f1205da

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    new-instance v5, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 124
    .line 125
    .line 126
    iput-object v5, v3, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 127
    .line 128
    const v3, 0x7f1205d6

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 136
    .line 137
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iget-object v5, v5, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 142
    .line 143
    invoke-virtual {v5}, Lorg/wikipedia/theme/Theme;->getNameId()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    iget-object v7, v3, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    new-instance v5, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 157
    .line 158
    const/4 v7, 0x2

    .line 159
    invoke-direct {v5, p0, v7}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 160
    .line 161
    .line 162
    iput-object v5, v3, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 163
    .line 164
    const v3, 0x7f12067a

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 172
    .line 173
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewModelData()Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 182
    .line 183
    if-eqz v5, :cond_1

    .line 184
    .line 185
    iget-boolean v5, v5, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 186
    .line 187
    if-ne v5, v6, :cond_1

    .line 188
    .line 189
    move v5, v6

    .line 190
    goto :goto_0

    .line 191
    :cond_1
    move v5, v4

    .line 192
    :goto_0
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 193
    .line 194
    .line 195
    new-array v5, v6, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object v2, v5, v4

    .line 198
    .line 199
    const v2, 0x7f12085e

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v2, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    new-instance v2, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    const/4 v4, 0x3

    .line 212
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 213
    .line 214
    .line 215
    iput-object v2, v3, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 216
    .line 217
    const v2, 0x7f1206a1

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {}, Lorg/wikipedia/login/LoginClient;->isAccessible()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 229
    .line 230
    .line 231
    iget-boolean v3, v2, Landroidx/preference/Preference;->mVisible:Z

    .line 232
    .line 233
    if-eqz v3, :cond_2

    .line 234
    .line 235
    const/4 v9, 0x0

    .line 236
    const/16 v4, 0xee

    .line 237
    .line 238
    const/4 v5, 0x0

    .line 239
    const-string v6, "impression"

    .line 240
    .line 241
    const/4 v7, 0x0

    .line 242
    const-string v8, "setting"

    .line 243
    .line 244
    invoke-static/range {v4 .. v9}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_2
    new-instance v3, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 248
    .line 249
    const/4 v4, 0x4

    .line 250
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 251
    .line 252
    .line 253
    iput-object v3, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 254
    .line 255
    const v2, 0x7f1205c5

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    new-instance v3, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 263
    .line 264
    const/4 v4, 0x5

    .line 265
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 266
    .line 267
    .line 268
    iput-object v3, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 269
    .line 270
    const v2, 0x7f12067c

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    new-instance v3, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 278
    .line 279
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 280
    .line 281
    .line 282
    iput-object v3, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 283
    .line 284
    const v1, 0x7f120668

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    new-instance v2, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 292
    .line 293
    const/4 v3, 0x7

    .line 294
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 295
    .line 296
    .line 297
    iput-object v2, v1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 298
    .line 299
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_3

    .line 304
    .line 305
    const v1, 0x7f15000d

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 309
    .line 310
    .line 311
    const v1, 0x7f120627

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Lorg/wikipedia/settings/LogoutPreference;

    .line 319
    .line 320
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object v0, v1, Lorg/wikipedia/settings/LogoutPreference;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 325
    .line 326
    :cond_3
    const v0, 0x7f1205e7

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    sget v1, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 334
    .line 335
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isEnabled()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 340
    .line 341
    .line 342
    new-instance v1, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 343
    .line 344
    const/16 v2, 0x8

    .line 345
    .line 346
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 347
    .line 348
    .line 349
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 350
    .line 351
    const v0, 0x7f1205e0

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    new-instance v1, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;

    .line 359
    .line 360
    const/16 v2, 0x9

    .line 361
    .line 362
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V

    .line 363
    .line 364
    .line 365
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 366
    .line 367
    return-void

    .line 368
    nop

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateLanguagePrefSummary()V
    .locals 7

    .line 1
    const v0, 0x7f12061a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v5, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/16 v2, 0x11

    .line 25
    .line 26
    invoke-direct {v5, v2, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/16 v6, 0x1e

    .line 30
    .line 31
    const-string v2, ", "

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
