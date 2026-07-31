.class public final Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingSubtitleHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 16
    .line 17
    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v2

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    move v6, v2

    .line 34
    :goto_1
    if-ge v6, v5, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 45
    .line 46
    invoke-static {v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    iget v10, v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 51
    .line 52
    if-eq v10, v3, :cond_2

    .line 53
    .line 54
    if-eq v10, v1, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    neg-int v7, p2

    .line 58
    int-to-float v7, v7

    .line 59
    iget v8, v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 60
    .line 61
    mul-float/2addr v7, v8

    .line 62
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {v9, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    neg-int v8, p2

    .line 71
    invoke-static {v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    check-cast v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    iget v10, v10, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 86
    .line 87
    sub-int/2addr v12, v10

    .line 88
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    sub-int/2addr v12, v7

    .line 93
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 94
    .line 95
    sub-int/2addr v12, v7

    .line 96
    invoke-static {v8, v2, v12}, Lkotlin/text/RegexKt;->clamp(III)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-virtual {v9, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 101
    .line 102
    .line 103
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    if-lez v4, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    sub-int v2, v1, v2

    .line 127
    .line 128
    sub-int/2addr v2, v4

    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    sub-int/2addr v1, v3

    .line 134
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 135
    .line 136
    add-int/2addr p0, v2

    .line 137
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    int-to-float p2, p2

    .line 142
    int-to-float v2, v2

    .line 143
    div-float/2addr p2, v2

    .line 144
    int-to-float v1, v1

    .line 145
    div-float/2addr v1, v2

    .line 146
    const/high16 v2, 0x3f800000    # 1.0f

    .line 147
    .line 148
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 153
    .line 154
    const/high16 v4, 0x3f000000    # 0.5f

    .line 155
    .line 156
    invoke-static {v2, v3, v4, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 161
    .line 162
    iput p0, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    .line 163
    .line 164
    invoke-virtual {v0, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iput v0, p1, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 172
    .line 173
    invoke-static {v2, v0, v4, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    iput v0, p1, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 178
    .line 179
    iput p0, p1, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_0
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    neg-int v0, v0

    .line 192
    const/4 v4, 0x0

    .line 193
    if-le p2, v0, :cond_5

    .line 194
    .line 195
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    .line 196
    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    iput-boolean v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    .line 200
    .line 201
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 209
    .line 210
    const-string v5, ""

    .line 211
    .line 212
    invoke-virtual {v0, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 220
    .line 221
    .line 222
    iput-boolean v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    neg-int v0, v0

    .line 230
    if-gt p2, v0, :cond_7

    .line 231
    .line 232
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    .line 233
    .line 234
    if-nez v0, :cond_7

    .line 235
    .line 236
    iput-boolean v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->showOverflowMenu:Z

    .line 237
    .line 238
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 246
    .line 247
    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 248
    .line 249
    if-eqz v5, :cond_6

    .line 250
    .line 251
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    goto :goto_3

    .line 256
    :cond_6
    move-object v5, v4

    .line 257
    :goto_3
    invoke-virtual {v0, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 265
    .line 266
    .line 267
    iput-boolean v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbarExpanded:Z

    .line 268
    .line 269
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v5, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 281
    .line 282
    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 283
    .line 284
    if-nez v6, :cond_8

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    add-int/2addr v6, p2

    .line 291
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    div-int/2addr p1, v1

    .line 296
    if-le v6, p1, :cond_8

    .line 297
    .line 298
    move p1, v3

    .line 299
    goto :goto_5

    .line 300
    :cond_8
    move p1, v2

    .line 301
    :goto_5
    invoke-static {v0, v5, p1}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Lcom/google/android/material/appbar/MaterialToolbar;Z)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListActivity;

    .line 309
    .line 310
    new-instance v0, Landroid/util/TypedValue;

    .line 311
    .line 312
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    const v5, 0x7f0404e7

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_9

    .line 327
    .line 328
    move-object v4, v0

    .line 329
    :cond_9
    if-eqz v4, :cond_b

    .line 330
    .line 331
    iget v0, v4, Landroid/util/TypedValue;->data:I

    .line 332
    .line 333
    invoke-virtual {p1, v0}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 344
    .line 345
    if-nez p2, :cond_a

    .line 346
    .line 347
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 348
    .line 349
    .line 350
    move-result p0

    .line 351
    if-nez p0, :cond_a

    .line 352
    .line 353
    move v2, v3

    .line 354
    :cond_a
    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_b
    const-string p0, "Attribute not found; ID=2130969831"

    .line 359
    .line 360
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :goto_6
    return-void

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
