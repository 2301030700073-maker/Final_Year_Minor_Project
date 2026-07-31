.class public final synthetic Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/navtab/MenuNavTabDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/navtab/MenuNavTabDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/navtab/MenuNavTabDialog;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerEditContainer:Landroid/view/ViewGroup;

    .line 23
    .line 24
    check-cast v4, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    const/16 v17, 0x3ffc

    .line 35
    .line 36
    const-string v5, "more_menu"

    .line 37
    .line 38
    const-string v6, "edit_click"

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    const/4 v15, 0x0

    .line 49
    invoke-static/range {v5 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    sget v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksActivity;->$r8$clinit:I

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v3, Landroid/content/Intent;

    .line 59
    .line 60
    const-class v4, Lorg/wikipedia/suggestededits/SuggestedEditsTasksActivity;

    .line 61
    .line 62
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_0
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    const-string v1, "li_profile"

    .line 79
    .line 80
    :goto_0
    move-object v7, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    const-string v1, "lo_profile"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_1
    const/4 v8, 0x0

    .line 86
    const/16 v3, 0xee

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    const-string v5, "start_click"

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-static/range {v3 .. v8}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 102
    .line 103
    sget v3, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 104
    .line 105
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    new-instance v4, Landroid/content/Intent;

    .line 110
    .line 111
    const-class v5, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

    .line 112
    .line 113
    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_1
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v4, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerDonateContainer:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    const/16 v1, 0xc

    .line 143
    .line 144
    const-string v3, "donate_start_click"

    .line 145
    .line 146
    const-string v4, "more_menu"

    .line 147
    .line 148
    invoke-static {v1, v3, v4, v2, v2}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-eqz v3, :cond_3

    .line 156
    .line 157
    check-cast v3, Lorg/wikipedia/main/MainFragment;

    .line 158
    .line 159
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    instance-of v4, v3, Lorg/wikipedia/activity/BaseActivity;

    .line 164
    .line 165
    if-eqz v4, :cond_2

    .line 166
    .line 167
    check-cast v3, Lorg/wikipedia/activity/BaseActivity;

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_2
    move-object v3, v2

    .line 171
    :goto_2
    if-eqz v3, :cond_3

    .line 172
    .line 173
    sget v4, Lorg/wikipedia/activity/BaseActivity;->$r8$clinit:I

    .line 174
    .line 175
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v1, v2, v2}, Lokio/Path$Companion;->newInstance$default(ILjava/lang/String;Ljava/lang/String;)Lorg/wikipedia/donate/DonateDialog;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v3, v1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 184
    .line 185
    .line 186
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :pswitch_2
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    iget-object v4, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerContribsContainer:Landroid/widget/LinearLayout;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {v3, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-eqz v1, :cond_4

    .line 214
    .line 215
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 216
    .line 217
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_4

    .line 222
    .line 223
    sget v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 224
    .line 225
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v3, v4}, Lokhttp3/HttpUrl$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 238
    .line 239
    .line 240
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_3
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    iget-object v4, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 256
    .line 257
    check-cast v4, Landroid/widget/LinearLayout;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-static {v3, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    if-eqz v1, :cond_5

    .line 270
    .line 271
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 272
    .line 273
    sget v3, Lorg/wikipedia/settings/SettingsActivity;->$r8$clinit:I

    .line 274
    .line 275
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    new-instance v4, Landroid/content/Intent;

    .line 280
    .line 281
    const-class v5, Lorg/wikipedia/settings/SettingsActivity;

    .line 282
    .line 283
    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .line 285
    .line 286
    const/16 v3, 0x29

    .line 287
    .line 288
    invoke-virtual {v1, v4, v3, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 289
    .line 290
    .line 291
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_4
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 296
    .line 297
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 298
    .line 299
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 300
    .line 301
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 306
    .line 307
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    const-string v9, "app_places_interaction"

    .line 312
    .line 313
    const-string v4, "places_click"

    .line 314
    .line 315
    const-string v5, "main_nav_tab"

    .line 316
    .line 317
    const-string v6, ""

    .line 318
    .line 319
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    sget v3, Lorg/wikipedia/places/PlacesActivity;->$r8$clinit:I

    .line 330
    .line 331
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-static {v3, v2, v2}, Lokio/ByteString$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :pswitch_5
    const/4 v5, 0x0

    .line 347
    const/16 v3, 0x3fc

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    const-string v6, "games_click"

    .line 351
    .line 352
    const-string v7, "more_menu"

    .line 353
    .line 354
    const/4 v8, 0x0

    .line 355
    const/4 v9, 0x0

    .line 356
    const/4 v10, 0x0

    .line 357
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    sget v2, Lorg/wikipedia/games/GamesHubActivity;->$r8$clinit:I

    .line 365
    .line 366
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    new-instance v3, Landroid/content/Intent;

    .line 371
    .line 372
    const-class v4, Lorg/wikipedia/games/GamesHubActivity;

    .line 373
    .line 374
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_6
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 385
    .line 386
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    iget-object v4, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 396
    .line 397
    check-cast v4, Landroid/widget/LinearLayout;

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {v3, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    if-eqz v1, :cond_6

    .line 410
    .line 411
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 412
    .line 413
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-eqz v3, :cond_6

    .line 418
    .line 419
    sget v3, Lorg/wikipedia/watchlist/WatchlistActivity;->$r8$clinit:I

    .line 420
    .line 421
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    new-instance v4, Landroid/content/Intent;

    .line 426
    .line 427
    const-class v5, Lorg/wikipedia/watchlist/WatchlistActivity;

    .line 428
    .line 429
    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v4, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 433
    .line 434
    .line 435
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :pswitch_7
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 440
    .line 441
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    iget-object v4, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 446
    .line 447
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 451
    .line 452
    check-cast v4, Landroid/widget/LinearLayout;

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    invoke-static {v3, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    if-eqz v1, :cond_7

    .line 465
    .line 466
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 467
    .line 468
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_7

    .line 473
    .line 474
    sget v3, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 475
    .line 476
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 481
    .line 482
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 483
    .line 484
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    invoke-virtual {v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-static {v5}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    sget-object v6, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 505
    .line 506
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-virtual {v8}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    invoke-static {v8}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    const/4 v11, 0x0

    .line 522
    const/4 v12, 0x0

    .line 523
    const/4 v8, 0x0

    .line 524
    const/4 v9, 0x0

    .line 525
    const/4 v10, 0x0

    .line 526
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 530
    .line 531
    invoke-static {v3, v4, v5}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 536
    .line 537
    .line 538
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :pswitch_8
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 543
    .line 544
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    iget-object v4, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 549
    .line 550
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountContainer:Landroid/widget/LinearLayout;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    invoke-static {v3, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 559
    .line 560
    .line 561
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-eqz v1, :cond_8

    .line 566
    .line 567
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-nez v1, :cond_8

    .line 572
    .line 573
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    if-eqz v1, :cond_9

    .line 578
    .line 579
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 580
    .line 581
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    .line 582
    .line 583
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 584
    .line 585
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    invoke-virtual {v4}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-static {v4}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    const/4 v10, 0x0

    .line 614
    const/4 v11, 0x0

    .line 615
    const/4 v7, 0x0

    .line 616
    const/4 v8, 0x0

    .line 617
    const/4 v9, 0x0

    .line 618
    invoke-direct/range {v3 .. v11}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    new-instance v4, Lorg/wikipedia/history/HistoryEntry;

    .line 622
    .line 623
    const/16 v5, 0x8

    .line 624
    .line 625
    invoke-direct {v4, v5, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 626
    .line 627
    .line 628
    sget v5, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 629
    .line 630
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    invoke-static {v5, v4, v3}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 639
    .line 640
    .line 641
    goto :goto_3

    .line 642
    :cond_8
    invoke-virtual {v0}, Lorg/wikipedia/navtab/MenuNavTabDialog;->callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    if-eqz v1, :cond_9

    .line 647
    .line 648
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 649
    .line 650
    sget v3, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 651
    .line 652
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    const-string v4, "navigation"

    .line 657
    .line 658
    const/4 v5, 0x1

    .line 659
    invoke-static {v3, v4, v5}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    const/16 v4, 0x35

    .line 664
    .line 665
    invoke-virtual {v1, v3, v4, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 666
    .line 667
    .line 668
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 669
    .line 670
    .line 671
    return-void

    .line 672
    nop

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
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
