.class public final Lorg/wikipedia/settings/SettingsFragment;
.super Lorg/wikipedia/settings/PreferenceLoaderFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/settings/SettingsFragment;",
        "Lorg/wikipedia/settings/PreferenceLoaderFragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/settings/PreferenceLoaderFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final loadPreferences()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/settings/SettingsPreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;I)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->loadPreferences()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p0, 0x7f0e0020

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0901ae

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    sget p1, Lorg/wikipedia/settings/dev/DeveloperSettingsActivity;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-class v1, Lorg/wikipedia/settings/dev/DeveloperSettingsActivity;

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0901ae

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onResume()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 5
    .line 6
    const-string v2, "preferenceLoader"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    const v4, 0x7f120691

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v4}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    iget-object v1, v1, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroidx/preference/PreferenceFragmentCompat;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    new-array v7, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v5, v7, v6

    .line 40
    .line 41
    const v5, 0x7f1206ba

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const v1, 0x7f1206b9

    .line 53
    .line 54
    .line 55
    iget-object v5, v4, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 65
    .line 66
    if-eqz v1, :cond_9

    .line 67
    .line 68
    invoke-virtual {v1}, Lorg/wikipedia/settings/SettingsPreferenceLoader;->updateLanguagePrefSummary()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 76
    .line 77
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    const v4, 0x7f120803

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const v4, 0x7f120802

    .line 88
    .line 89
    .line 90
    :goto_1
    const v5, 0x7f120668

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v5}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iget-object v1, v1, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Landroidx/preference/PreferenceFragmentCompat;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    iget-object v2, v1, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v2, Landroidx/preference/PreferenceFragmentCompat;

    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    iget v5, v5, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 133
    .line 134
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iget v7, v7, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 139
    .line 140
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    new-array v8, v0, [Ljava/lang/Object;

    .line 145
    .line 146
    aput-object v7, v8, v6

    .line 147
    .line 148
    const v7, 0x7f100008

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v7, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget-boolean v5, v5, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 163
    .line 164
    if-eqz v5, :cond_5

    .line 165
    .line 166
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    new-instance v5, Ljava/util/Locale$Builder;

    .line 171
    .line 172
    invoke-direct {v5}, Ljava/util/Locale$Builder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v5, v7}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :try_start_0
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    if-eqz v7, :cond_3

    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-nez v7, :cond_2

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_2
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    goto :goto_3

    .line 201
    :cond_3
    :goto_2
    invoke-static {}, Lorg/jsoup/Jsoup;->unmarshal()Lkotlinx/coroutines/internal/Symbol;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    iget-object v3, v7, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    :catch_0
    :goto_3
    if-nez v3, :cond_4

    .line 208
    .line 209
    const-string v3, ""

    .line 210
    .line 211
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v3}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-static {v3}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v3, v6}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    iget v5, v5, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 231
    .line 232
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v3, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    const/4 v5, 0x2

    .line 241
    new-array v5, v5, [Ljava/lang/Object;

    .line 242
    .line 243
    aput-object v3, v5, v6

    .line 244
    .line 245
    aput-object v4, v5, v0

    .line 246
    .line 247
    const v0, 0x7f12017e

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto :goto_4

    .line 255
    :cond_5
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const v2, 0x7f12017d

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    const v2, 0x7f1205e7

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 280
    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sget-boolean v1, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->shouldShowSettingSnackbar:Z

    .line 286
    .line 287
    if-eqz v1, :cond_6

    .line 288
    .line 289
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->thankYouMessageForSettings()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {v0, v1, v6}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 294
    .line 295
    .line 296
    sput-boolean v6, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->shouldShowSettingSnackbar:Z

    .line 297
    .line 298
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v3

    .line 310
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v3

    .line 314
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v3

    .line 318
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v3
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 16
    .line 17
    invoke-virtual {p1, p0, p2, v0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lorg/wikipedia/settings/SettingsFragment$onViewCreated$1;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p2, p0, v1, v0}, Lorg/wikipedia/settings/SettingsFragment$onViewCreated$1;-><init>(Lorg/wikipedia/settings/SettingsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    invoke-static {p1, v1, v1, p2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setReadingListSyncPref(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsFragment;->preferenceLoader:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f120691

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "preferenceLoader"

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0
.end method
