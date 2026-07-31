.class public final synthetic Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/SettingsPreferenceLoader;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

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
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p2, Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v0, 0xee

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-string/jumbo v2, "yir_on_click"

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const-string v4, "setting"

    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 v5, 0x0

    .line 28
    const/16 v0, 0xee

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const-string/jumbo v2, "yir_off_click"

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const-string v4, "setting"

    .line 36
    .line 37
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 41
    .line 42
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {p2, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    const p0, 0x7f120a9c

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 60
    .line 61
    .line 62
    const p0, 0x7f120acd

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 66
    .line 67
    .line 68
    new-instance p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 69
    .line 70
    const/16 v1, 0x9

    .line 71
    .line 72
    invoke-direct {p0, v1, p1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const p1, 0x7f120a9b

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    const/16 p1, 0x8

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 86
    .line 87
    .line 88
    const p1, 0x7f120a9a

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 95
    .line 96
    .line 97
    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 10

    .line 1
    iget p1, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsPreferenceLoader$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v8, 0xfc

    .line 15
    .line 16
    const-string v1, "clear_donation_hist_click"

    .line 17
    .line 18
    const-string v2, "global_setting"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static/range {v1 .. v8}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 28
    .line 29
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 40
    .line 41
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setDonationResults(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 45
    .line 46
    const p1, 0x7f12016d

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const p1, 0x7f12016e

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-static {v1, p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 74
    .line 75
    .line 76
    return v0

    .line 77
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget v1, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0, v0}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->newIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return v0

    .line 99
    :pswitch_2
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/16 v9, 0x1fc

    .line 105
    .line 106
    const-string v1, "discover_click"

    .line 107
    .line 108
    const-string v2, "global_settings"

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 119
    .line 120
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListInterests()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->INTERESTS:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 135
    .line 136
    if-ne p1, v1, :cond_2

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListOnboardingActivity;->$r8$clinit:I

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->newIntent$default(Landroid/content/Context;)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    new-instance v1, Landroid/content/Intent;

    .line 167
    .line 168
    const-class v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 169
    .line 170
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    .line 175
    .line 176
    :goto_1
    return v0

    .line 177
    :pswitch_3
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 186
    .line 187
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 188
    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    .line 191
    const-string v3, " "

    .line 192
    .line 193
    const-string v4, " (SDK: "

    .line 194
    .line 195
    const-string v5, "\n\nVersion: r/50598-r-2026-07-13 \nDevice: "

    .line 196
    .line 197
    invoke-static {v5, p1, v3, v1, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string v1, ")\n"

    .line 202
    .line 203
    invoke-static {p1, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const/4 v1, 0x2

    .line 208
    const/4 v2, 0x0

    .line 209
    const-string v3, "Android App r/50598-r-2026-07-13 Feedback"

    .line 210
    .line 211
    invoke-static {p0, v2, v3, p1, v1}, Lorg/wikipedia/util/ShareUtil;->composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    return v0

    .line 215
    :pswitch_4
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-instance v1, Landroid/content/Intent;

    .line 224
    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const-class v2, Lorg/wikipedia/settings/AboutActivity;

    .line 230
    .line 231
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 235
    .line 236
    .line 237
    return v0

    .line 238
    :pswitch_5
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    new-instance p1, Lorg/wikipedia/settings/AppIconDialog;

    .line 247
    .line 248
    invoke-direct {p1}, Lorg/wikipedia/settings/AppIconDialog;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 252
    .line 253
    .line 254
    return v0

    .line 255
    :pswitch_6
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 258
    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    sget v1, Lorg/wikipedia/theme/ThemeFittingRoomActivity;->$r8$clinit:I

    .line 264
    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    new-instance v1, Landroid/content/Intent;

    .line 270
    .line 271
    const-class v2, Lorg/wikipedia/theme/ThemeFittingRoomActivity;

    .line 272
    .line 273
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 277
    .line 278
    .line 279
    return v0

    .line 280
    :pswitch_7
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 283
    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    sget v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;->$r8$clinit:I

    .line 289
    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    sget-object v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;->ROOT:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    new-instance v2, Landroid/content/Intent;

    .line 300
    .line 301
    const-class v3, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;

    .line 302
    .line 303
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .line 305
    .line 306
    const-string p0, "start_destination"

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    const/16 v1, 0x3a

    .line 320
    .line 321
    invoke-virtual {p1, p0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    .line 323
    .line 324
    return v0

    .line 325
    :pswitch_8
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    sget v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->$r8$clinit:I

    .line 334
    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->SETTINGS:Lorg/wikipedia/Constants$InvokeSource;

    .line 340
    .line 341
    invoke-static {p0, v1}, Lokhttp3/Cache$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    const/16 v1, 0x3b

    .line 346
    .line 347
    invoke-virtual {p1, p0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    .line 349
    .line 350
    return v0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
