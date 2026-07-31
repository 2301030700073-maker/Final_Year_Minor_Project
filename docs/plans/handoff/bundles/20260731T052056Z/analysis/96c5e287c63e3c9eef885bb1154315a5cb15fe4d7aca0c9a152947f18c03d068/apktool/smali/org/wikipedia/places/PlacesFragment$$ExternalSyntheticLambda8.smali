.class public final synthetic Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/places/PlacesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/places/PlacesFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/places/PlacesFragment;

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
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object p1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 12
    .line 13
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 14
    .line 15
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 16
    .line 17
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 22
    .line 23
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const-string v7, "app_places_interaction"

    .line 28
    .line 29
    const-string v2, "search_view_click"

    .line 30
    .line 31
    const-string v3, "search_bar_view"

    .line 32
    .line 33
    const-string v4, ""

    .line 34
    .line 35
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v2, v2, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-object v2, v0

    .line 63
    :goto_0
    const/16 v3, 0x30

    .line 64
    .line 65
    invoke-static {p1, v1, v2, v0, v3}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move-object v1, v0

    .line 81
    :goto_1
    const-class v2, Lorg/wikipedia/search/SearchActivity;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const v2, 0x7f1209d0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v3, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 117
    .line 118
    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v3, v0}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 123
    .line 124
    .line 125
    move-object v0, v3

    .line 126
    :cond_2
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->placesSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 127
    .line 128
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_0
    sget-object p1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 133
    .line 134
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 135
    .line 136
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 137
    .line 138
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 139
    .line 140
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 145
    .line 146
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const-string v7, "app_places_interaction"

    .line 151
    .line 152
    const-string v2, "current_location_click"

    .line 153
    .line 154
    const-string v3, "map_view"

    .line 155
    .line 156
    const-string v4, ""

    .line 157
    .line 158
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->haveLocationPermissions()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    const/4 p1, 0x3

    .line 171
    invoke-static {p0, v0, p1}, Lorg/wikipedia/places/PlacesFragment;->goToLocation$default(Lorg/wikipedia/places/PlacesFragment;Landroid/location/Location;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->locationPermissionRequest:Landroidx/fragment/app/Fragment$10;

    .line 176
    .line 177
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 178
    .line 179
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 180
    .line 181
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 186
    .line 187
    .line 188
    :goto_2
    return-void

    .line 189
    :pswitch_1
    sget-object p1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 190
    .line 191
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 192
    .line 193
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 194
    .line 195
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 196
    .line 197
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 202
    .line 203
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    const-string v6, "app_places_interaction"

    .line 208
    .line 209
    const-string v1, "search_clear_click"

    .line 210
    .line 211
    const-string v2, "search_bar_view"

    .line 212
    .line 213
    const-string v3, ""

    .line 214
    .line 215
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 219
    .line 220
    .line 221
    const-string p1, ""

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lorg/wikipedia/places/PlacesFragment;->updateSearchText(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_2
    sget-object p1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 228
    .line 229
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 230
    .line 231
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 232
    .line 233
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 234
    .line 235
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 240
    .line 241
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const-string v7, "app_places_interaction"

    .line 246
    .line 247
    const-string v2, "filter_click"

    .line 248
    .line 249
    const-string v3, "search_bar_view"

    .line 250
    .line 251
    const-string v4, ""

    .line 252
    .line 253
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->filterLauncher:Landroidx/fragment/app/Fragment$10;

    .line 260
    .line 261
    sget v1, Lorg/wikipedia/places/PlacesFilterActivity;->$r8$clinit:I

    .line 262
    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    new-instance v1, Landroid/content/Intent;

    .line 268
    .line 269
    const-class v2, Lorg/wikipedia/places/PlacesFilterActivity;

    .line 270
    .line 271
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_3
    sget-object p1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 279
    .line 280
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 281
    .line 282
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 283
    .line 284
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 285
    .line 286
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 291
    .line 292
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    const-string v6, "app_places_interaction"

    .line 297
    .line 298
    const-string v1, "back_click"

    .line 299
    .line 300
    const-string v2, "search_bar_view"

    .line 301
    .line 302
    const-string v3, ""

    .line 303
    .line 304
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :pswitch_4
    sget-object p1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 319
    .line 320
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 321
    .line 322
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 323
    .line 324
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 325
    .line 326
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 331
    .line 332
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    const-string v7, "app_places_interaction"

    .line 337
    .line 338
    const-string v2, "tabs_view_click"

    .line 339
    .line 340
    const-string v3, "search_bar_view"

    .line 341
    .line 342
    const-string v4, ""

    .line 343
    .line 344
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 348
    .line 349
    .line 350
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    const/4 v1, 0x1

    .line 359
    if-ne p1, v1, :cond_4

    .line 360
    .line 361
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 362
    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-static {p1}, Lorg/wikipedia/login/LoginClient;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_4
    sget p1, Lorg/wikipedia/page/tabs/TabActivity;->$r8$clinit:I

    .line 376
    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    new-instance v1, Landroid/content/Intent;

    .line 382
    .line 383
    const-class v2, Lorg/wikipedia/page/tabs/TabActivity;

    .line 384
    .line 385
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 389
    .line 390
    .line 391
    :goto_3
    return-void

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
