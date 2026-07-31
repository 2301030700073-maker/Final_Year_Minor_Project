.class public final Landroidx/preference/Preference$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

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
    iget v0, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    .line 2
    .line 3
    const-class v1, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->appearanceSettingInteractionEvent:Lokhttp3/ConnectionPool;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 38
    .line 39
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getFontFamily()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "fontThemeChange"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1, p1}, Lokhttp3/ConnectionPool;->submitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getFontFamily()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    const p0, 0x7f120606

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Lorg/wikipedia/events/ThemeFontChangeEvent;

    .line 70
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const-string p0, "appearanceSettingInteractionEvent"

    .line 79
    .line 80
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v4

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 89
    .line 90
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/16 v0, 0x64

    .line 97
    .line 98
    if-lt p1, v0, :cond_2

    .line 99
    .line 100
    const p1, 0x7f1207bc

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const/16 v0, 0xc

    .line 118
    .line 119
    invoke-static {p0, p1, v3, v0}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showCreateListDialog()V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void

    .line 131
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;

    .line 135
    .line 136
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->imageTypeOptions:[Landroid/view/View;

    .line 137
    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    array-length v5, v0

    .line 141
    move v6, v3

    .line 142
    :goto_2
    if-ge v6, v5, :cond_3

    .line 143
    .line 144
    aget-object v7, v0, v6

    .line 145
    .line 146
    invoke-static {v7, v3}, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->updateOptionView$1(Landroid/view/View;Z)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    invoke-static {p1, v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->updateOptionView$1(Landroid/view/View;Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 160
    .line 161
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iput-object p1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageType:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_4

    .line 187
    .line 188
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    goto :goto_3

    .line 193
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 194
    .line 195
    if-eqz p1, :cond_6

    .line 196
    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_5

    .line 202
    .line 203
    iget-object v4, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 211
    .line 212
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_6

    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_7

    .line 234
    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    :cond_7
    :goto_3
    check-cast v4, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 240
    .line 241
    if-eqz v4, :cond_8

    .line 242
    .line 243
    invoke-virtual {v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->onUpdateImageType()V

    .line 244
    .line 245
    .line 246
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_9
    const-string p0, "imageTypeOptions"

    .line 251
    .line 252
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v4

    .line 256
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;

    .line 260
    .line 261
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->imagePositionOptions:[Landroid/view/View;

    .line 262
    .line 263
    if-eqz v0, :cond_10

    .line 264
    .line 265
    array-length v5, v0

    .line 266
    move v6, v3

    .line 267
    :goto_4
    if-ge v6, v5, :cond_a

    .line 268
    .line 269
    aget-object v7, v0, v6

    .line 270
    .line 271
    invoke-static {v7, v3}, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->updateOptionView(Landroid/view/View;Z)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v6, v6, 0x1

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_a
    invoke-static {p1, v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->updateOptionView(Landroid/view/View;Z)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 285
    .line 286
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    iput-object p1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_b

    .line 312
    .line 313
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    goto :goto_5

    .line 318
    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 319
    .line 320
    if-eqz p1, :cond_d

    .line 321
    .line 322
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_c

    .line 327
    .line 328
    iget-object v4, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 336
    .line 337
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_d

    .line 342
    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-eqz p1, :cond_e

    .line 359
    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    :cond_e
    :goto_5
    check-cast v4, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 365
    .line 366
    if-eqz v4, :cond_f

    .line 367
    .line 368
    invoke-virtual {v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->onUpdateImagePosition()V

    .line 369
    .line 370
    .line 371
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :cond_10
    const-string p0, "imagePositionOptions"

    .line 376
    .line 377
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v4

    .line 381
    :pswitch_3
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 382
    .line 383
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 388
    .line 389
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    .line 390
    .line 391
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 392
    .line 393
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->menuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 394
    .line 395
    invoke-virtual {v0, p1, v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz p1, :cond_12

    .line 400
    .line 401
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_12

    .line 406
    .line 407
    if-eqz v0, :cond_11

    .line 408
    .line 409
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_12

    .line 414
    .line 415
    :cond_11
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setCheckedItem(Landroid/view/MenuItem;)V

    .line 416
    .line 417
    .line 418
    :cond_12
    return-void

    .line 419
    :pswitch_4
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 420
    .line 421
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 422
    .line 423
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 424
    .line 425
    if-ne p1, v0, :cond_13

    .line 426
    .line 427
    sget-object p1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 428
    .line 429
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 430
    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_13
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 434
    .line 435
    if-ne p1, v1, :cond_14

    .line 436
    .line 437
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 438
    .line 439
    .line 440
    :cond_14
    :goto_6
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 441
    .line 442
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->updateAccessibilityPaneTitle(Landroid/view/View;)V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    :pswitch_5
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 447
    .line 448
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 449
    .line 450
    if-eqz p1, :cond_16

    .line 451
    .line 452
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-eqz p1, :cond_16

    .line 457
    .line 458
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 459
    .line 460
    if-nez p1, :cond_15

    .line 461
    .line 462
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    const v0, 0x101035b

    .line 467
    .line 468
    .line 469
    filled-new-array {v0}, [I

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 482
    .line 483
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 484
    .line 485
    .line 486
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 487
    .line 488
    :cond_15
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 489
    .line 490
    if-eqz p1, :cond_16

    .line 491
    .line 492
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 493
    .line 494
    .line 495
    :cond_16
    return-void

    .line 496
    :pswitch_6
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 497
    .line 498
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 499
    .line 500
    if-nez p0, :cond_17

    .line 501
    .line 502
    goto :goto_7

    .line 503
    :cond_17
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 504
    .line 505
    :goto_7
    if-eqz v4, :cond_18

    .line 506
    .line 507
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 508
    .line 509
    .line 510
    :cond_18
    return-void

    .line 511
    :pswitch_7
    check-cast p0, Lorg/wikipedia/views/CabSearchView;

    .line 512
    .line 513
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 514
    .line 515
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 516
    .line 517
    if-ne p1, v1, :cond_19

    .line 518
    .line 519
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 526
    .line 527
    .line 528
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 529
    .line 530
    if-eqz p1, :cond_20

    .line 531
    .line 532
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 533
    .line 534
    .line 535
    goto :goto_9

    .line 536
    :cond_19
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 537
    .line 538
    if-ne p1, v1, :cond_1a

    .line 539
    .line 540
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    .line 541
    .line 542
    .line 543
    goto :goto_9

    .line 544
    :cond_1a
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 545
    .line 546
    if-ne p1, v1, :cond_1b

    .line 547
    .line 548
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    .line 549
    .line 550
    .line 551
    goto :goto_9

    .line 552
    :cond_1b
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 553
    .line 554
    if-ne p1, v1, :cond_1f

    .line 555
    .line 556
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 557
    .line 558
    if-nez p1, :cond_1c

    .line 559
    .line 560
    goto :goto_9

    .line 561
    :cond_1c
    :try_start_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_1e

    .line 566
    .line 567
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 568
    .line 569
    new-instance v1, Landroid/content/Intent;

    .line 570
    .line 571
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    const-string v0, "calling_package"

    .line 579
    .line 580
    if-nez p1, :cond_1d

    .line 581
    .line 582
    goto :goto_8

    .line 583
    :cond_1d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    :goto_8
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 591
    .line 592
    .line 593
    move-result-object p0

    .line 594
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 595
    .line 596
    .line 597
    goto :goto_9

    .line 598
    :cond_1e
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_20

    .line 603
    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 605
    .line 606
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 611
    .line 612
    .line 613
    move-result-object p0

    .line 614
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .line 616
    .line 617
    goto :goto_9

    .line 618
    :catch_0
    const-string p0, "SearchView"

    .line 619
    .line 620
    const-string p1, "Could not find voice search activity"

    .line 621
    .line 622
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    goto :goto_9

    .line 626
    :cond_1f
    if-ne p1, v0, :cond_20

    .line 627
    .line 628
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    .line 629
    .line 630
    .line 631
    :cond_20
    :goto_9
    return-void

    .line 632
    :pswitch_8
    check-cast p0, Landroidx/appcompat/view/ActionMode;

    .line 633
    .line 634
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :pswitch_9
    check-cast p0, Landroidx/appcompat/app/AlertController;

    .line 639
    .line 640
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 641
    .line 642
    if-ne p1, v0, :cond_21

    .line 643
    .line 644
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 645
    .line 646
    if-eqz v0, :cond_21

    .line 647
    .line 648
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    goto :goto_a

    .line 653
    :cond_21
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 654
    .line 655
    if-ne p1, v0, :cond_22

    .line 656
    .line 657
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 658
    .line 659
    if-eqz v0, :cond_22

    .line 660
    .line 661
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    goto :goto_a

    .line 666
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 667
    .line 668
    if-ne p1, v0, :cond_23

    .line 669
    .line 670
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 671
    .line 672
    if-eqz p1, :cond_23

    .line 673
    .line 674
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    :cond_23
    :goto_a
    if-eqz v4, :cond_24

    .line 679
    .line 680
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 681
    .line 682
    .line 683
    :cond_24
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 684
    .line 685
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 686
    .line 687
    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 688
    .line 689
    .line 690
    move-result-object p0

    .line 691
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :pswitch_a
    check-cast p0, Landroidx/preference/Preference;

    .line 696
    .line 697
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    .line 698
    .line 699
    .line 700
    return-void

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
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
