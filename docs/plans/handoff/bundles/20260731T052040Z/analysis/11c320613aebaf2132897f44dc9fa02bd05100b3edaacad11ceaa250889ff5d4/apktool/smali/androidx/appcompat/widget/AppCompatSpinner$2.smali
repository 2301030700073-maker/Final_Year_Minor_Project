.class public final Landroidx/appcompat/widget/AppCompatSpinner$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lorg/schabi/newpipe/download/DownloadActivity;

    .line 10
    .line 11
    sget v0, Lorg/schabi/newpipe/download/DownloadActivity;->$r8$clinit:I

    .line 12
    .line 13
    new-instance v0, Lus/shandian/giga/ui/fragment/MissionsFragment;

    .line 14
    .line 15
    invoke-direct {v0}, Lus/shandian/giga/ui/fragment/MissionsFragment;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a01ab

    .line 31
    .line 32
    .line 33
    const-string v4, "fragment_tag"

    .line 34
    .line 35
    invoke-virtual {v3, v1, v0, v4}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x1003

    .line 39
    .line 40
    iput v0, v3, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    check-cast v2, Lcom/google/android/material/navigation/NavigationView;

    .line 62
    .line 63
    iget-object p0, v2, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    .line 64
    .line 65
    invoke-virtual {v2, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    aget v3, p0, v0

    .line 70
    .line 71
    if-nez v3, :cond_0

    .line 72
    .line 73
    move v3, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v3, v1

    .line 76
    :goto_0
    iget-object v4, v2, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 77
    .line 78
    iget-boolean v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 79
    .line 80
    if-eq v5, v3, :cond_3

    .line 81
    .line 82
    iput-boolean v3, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 83
    .line 84
    iget-object v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-lez v5, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-boolean v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 94
    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    iget v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    :goto_1
    move v5, v1

    .line 101
    :goto_2
    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v4, v1, v5, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    .line 109
    .line 110
    :cond_3
    if-eqz v3, :cond_4

    .line 111
    .line 112
    iget-boolean v3, v2, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 113
    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    move v3, v0

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move v3, v1

    .line 119
    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawTopInsetForeground(Z)V

    .line 120
    .line 121
    .line 122
    aget v3, p0, v1

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    add-int/2addr v4, v3

    .line 131
    if-nez v4, :cond_5

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    move v3, v1

    .line 135
    goto :goto_5

    .line 136
    :cond_6
    :goto_4
    move v3, v0

    .line 137
    :goto_5
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawLeftInsetForeground(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :goto_6
    instance-of v4, v3, Landroid/content/ContextWrapper;

    .line 145
    .line 146
    if-eqz v4, :cond_8

    .line 147
    .line 148
    instance-of v4, v3, Landroid/app/Activity;

    .line 149
    .line 150
    if-eqz v4, :cond_7

    .line 151
    .line 152
    check-cast v3, Landroid/app/Activity;

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_7
    check-cast v3, Landroid/content/ContextWrapper;

    .line 156
    .line 157
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    goto :goto_6

    .line 162
    :cond_8
    const/4 v3, 0x0

    .line 163
    :goto_7
    if-eqz v3, :cond_e

    .line 164
    .line 165
    invoke-static {v3}, Lcom/google/android/material/internal/ViewUtils;->getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    sub-int/2addr v5, v6

    .line 178
    aget v6, p0, v0

    .line 179
    .line 180
    if-ne v5, v6, :cond_9

    .line 181
    .line 182
    move v5, v0

    .line 183
    goto :goto_8

    .line 184
    :cond_9
    move v5, v1

    .line 185
    :goto_8
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3}, Landroid/view/Window;->getNavigationBarColor()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_a

    .line 198
    .line 199
    move v3, v0

    .line 200
    goto :goto_9

    .line 201
    :cond_a
    move v3, v1

    .line 202
    :goto_9
    if-eqz v5, :cond_b

    .line 203
    .line 204
    if-eqz v3, :cond_b

    .line 205
    .line 206
    iget-boolean v3, v2, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    .line 207
    .line 208
    if-eqz v3, :cond_b

    .line 209
    .line 210
    move v3, v0

    .line 211
    goto :goto_a

    .line 212
    :cond_b
    move v3, v1

    .line 213
    :goto_a
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawBottomInsetForeground(Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    aget v5, p0, v1

    .line 221
    .line 222
    if-eq v3, v5, :cond_c

    .line 223
    .line 224
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    sub-int/2addr v3, v4

    .line 233
    aget p0, p0, v1

    .line 234
    .line 235
    if-ne v3, p0, :cond_d

    .line 236
    .line 237
    :cond_c
    move v1, v0

    .line 238
    :cond_d
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawRightInsetForeground(Z)V

    .line 239
    .line 240
    .line 241
    :cond_e
    return-void

    .line 242
    :pswitch_1
    check-cast v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    .line 243
    .line 244
    iget-object p0, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_f

    .line 251
    .line 252
    iget-object v0, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 253
    .line 254
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 255
    .line 256
    .line 257
    move-result p0

    .line 258
    if-eqz p0, :cond_f

    .line 259
    .line 260
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 264
    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_f
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 268
    .line 269
    .line 270
    :goto_b
    return-void

    .line 271
    :pswitch_2
    check-cast v2, Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 272
    .line 273
    iget-object p0, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 274
    .line 275
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_12

    .line 280
    .line 281
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 282
    .line 283
    if-nez v0, :cond_12

    .line 284
    .line 285
    iget-object v0, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 286
    .line 287
    if-eqz v0, :cond_11

    .line 288
    .line 289
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_10

    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_10
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 297
    .line 298
    .line 299
    goto :goto_d

    .line 300
    :cond_11
    :goto_c
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 301
    .line 302
    .line 303
    :cond_12
    :goto_d
    return-void

    .line 304
    :pswitch_3
    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    .line 305
    .line 306
    iget-object p0, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_15

    .line 313
    .line 314
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-lez v0, :cond_15

    .line 319
    .line 320
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 325
    .line 326
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 327
    .line 328
    iget-boolean v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 329
    .line 330
    if-nez v0, :cond_15

    .line 331
    .line 332
    iget-object v0, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 333
    .line 334
    if-eqz v0, :cond_14

    .line 335
    .line 336
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_13

    .line 341
    .line 342
    goto :goto_f

    .line 343
    :cond_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_15

    .line 352
    .line 353
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 358
    .line 359
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 360
    .line 361
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 362
    .line 363
    .line 364
    goto :goto_e

    .line 365
    :cond_14
    :goto_f
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 366
    .line 367
    .line 368
    :cond_15
    return-void

    .line 369
    :pswitch_4
    check-cast v2, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 370
    .line 371
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-nez v0, :cond_16

    .line 380
    .line 381
    iget-object v0, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    .line 382
    .line 383
    invoke-virtual {v2}, Landroid/view/View;->getTextDirection()I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    invoke-virtual {v2}, Landroid/view/View;->getTextAlignment()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-interface {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    .line 392
    .line 393
    .line 394
    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    if-eqz v0, :cond_17

    .line 399
    .line 400
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 401
    .line 402
    .line 403
    :cond_17
    return-void

    .line 404
    nop

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
