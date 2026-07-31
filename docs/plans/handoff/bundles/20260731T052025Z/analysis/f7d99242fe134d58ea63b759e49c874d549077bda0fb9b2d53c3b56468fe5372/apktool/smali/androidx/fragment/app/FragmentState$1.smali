.class public final Landroidx/fragment/app/FragmentState$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/FragmentState$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Landroidx/fragment/app/FragmentState$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    const-class v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_0
    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_1
    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 53
    .line 54
    const/4 v1, -0x2

    .line 55
    invoke-direct {p0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 59
    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    .line 62
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 63
    .line 64
    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    .line 66
    .line 67
    const/high16 v0, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    .line 70
    .line 71
    const v0, 0xffffff

    .line 72
    .line 73
    .line 74
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 75
    .line 76
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    .line 132
    move v2, v3

    .line 133
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 170
    .line 171
    return-object p0

    .line 172
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    new-instance p0, Lcom/fsck/k9/ui/messageview/MessageTopView$SavedState;

    .line 176
    .line 177
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_1

    .line 185
    .line 186
    move v2, v3

    .line 187
    :cond_1
    iput-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$SavedState;->showPicturesButtonClicked:Z

    .line 188
    .line 189
    return-object p0

    .line 190
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance p0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 194
    .line 195
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/os/Parcel;)V

    .line 196
    .line 197
    .line 198
    return-object p0

    .line 199
    :pswitch_4
    new-instance p0, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 200
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iput v0, p0, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->centerX:I

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, p0, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->centerY:I

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    iput v0, p0, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->width:I

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    iput v0, p0, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->height:I

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    iput p1, p0, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->colorAccent:I

    .line 233
    .line 234
    return-object p0

    .line 235
    :pswitch_5
    new-instance p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;

    .line 236
    .line 237
    invoke-direct {p0, p1}, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;-><init>(Landroid/os/Parcel;)V

    .line 238
    .line 239
    .line 240
    return-object p0

    .line 241
    :pswitch_6
    new-instance p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 242
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    new-instance v2, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v2, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->keyBreadcrumbs:Ljava/util/ArrayList;

    .line 252
    .line 253
    iput v0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->lastScore:F

    .line 254
    .line 255
    iput-object v1, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->lastKeyword:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->title:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->summary:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->key:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->breadcrumbs:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->keywords:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    iput p1, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->resId:I

    .line 292
    .line 293
    return-object p0

    .line 294
    :pswitch_7
    new-instance p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 295
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iput v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 304
    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    iput v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 310
    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-ne p1, v3, :cond_2

    .line 316
    .line 317
    move v2, v3

    .line 318
    :cond_2
    iput-boolean v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 319
    .line 320
    return-object p0

    .line 321
    :pswitch_8
    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    .line 322
    .line 323
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 324
    .line 325
    .line 326
    return-object p0

    .line 327
    :pswitch_9
    new-instance p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;

    .line 328
    .line 329
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 330
    .line 331
    .line 332
    return-object p0

    .line 333
    :pswitch_a
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 334
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 343
    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 355
    .line 356
    if-lez v0, :cond_3

    .line 357
    .line 358
    new-array v0, v0, [I

    .line 359
    .line 360
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 363
    .line 364
    .line 365
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 370
    .line 371
    if-lez v0, :cond_4

    .line 372
    .line 373
    new-array v0, v0, [I

    .line 374
    .line 375
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 376
    .line 377
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 378
    .line 379
    .line 380
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-ne v0, v3, :cond_5

    .line 385
    .line 386
    move v0, v3

    .line 387
    goto :goto_0

    .line 388
    :cond_5
    move v0, v2

    .line 389
    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 390
    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-ne v0, v3, :cond_6

    .line 396
    .line 397
    move v0, v3

    .line 398
    goto :goto_1

    .line 399
    :cond_6
    move v0, v2

    .line 400
    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 401
    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-ne v0, v3, :cond_7

    .line 407
    .line 408
    move v2, v3

    .line 409
    :cond_7
    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 410
    .line 411
    const-class v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/ArrayList;

    .line 422
    .line 423
    return-object p0

    .line 424
    :pswitch_b
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 425
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-ne v0, v3, :cond_8

    .line 446
    .line 447
    move v2, v3

    .line 448
    :cond_8
    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 449
    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-lez v0, :cond_9

    .line 455
    .line 456
    new-array v0, v0, [I

    .line 457
    .line 458
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 459
    .line 460
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 461
    .line 462
    .line 463
    :cond_9
    return-object p0

    .line 464
    :pswitch_c
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 465
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 474
    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 480
    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    if-ne p1, v3, :cond_a

    .line 486
    .line 487
    move v2, v3

    .line 488
    :cond_a
    iput-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 489
    .line 490
    return-object p0

    .line 491
    :pswitch_d
    new-instance p0, Landroidx/preference/TwoStatePreference$SavedState;

    .line 492
    .line 493
    invoke-direct {p0, p1}, Landroidx/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 494
    .line 495
    .line 496
    return-object p0

    .line 497
    :pswitch_e
    new-instance p0, Landroidx/preference/SeekBarPreference$SavedState;

    .line 498
    .line 499
    invoke-direct {p0, p1}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 500
    .line 501
    .line 502
    return-object p0

    .line 503
    :pswitch_f
    new-instance p0, Landroidx/preference/PreferenceGroup$SavedState;

    .line 504
    .line 505
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 506
    .line 507
    .line 508
    return-object p0

    .line 509
    :pswitch_10
    new-instance p0, Landroidx/preference/Preference$BaseSavedState;

    .line 510
    .line 511
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 512
    .line 513
    .line 514
    return-object p0

    .line 515
    :pswitch_11
    new-instance p0, Landroidx/preference/MultiSelectListPreference$SavedState;

    .line 516
    .line 517
    invoke-direct {p0, p1}, Landroidx/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 518
    .line 519
    .line 520
    return-object p0

    .line 521
    :pswitch_12
    new-instance p0, Landroidx/preference/ListPreference$SavedState;

    .line 522
    .line 523
    invoke-direct {p0, p1}, Landroidx/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 524
    .line 525
    .line 526
    return-object p0

    .line 527
    :pswitch_13
    new-instance p0, Landroidx/preference/EditTextPreference$SavedState;

    .line 528
    .line 529
    invoke-direct {p0, p1}, Landroidx/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 530
    .line 531
    .line 532
    return-object p0

    .line 533
    :pswitch_14
    new-instance p0, Landroidx/fragment/app/FragmentManagerState;

    .line 534
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    .line 537
    .line 538
    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 539
    .line 540
    new-instance v0, Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .line 544
    .line 545
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    .line 546
    .line 547
    new-instance v0, Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .line 551
    .line 552
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    .line 553
    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 565
    .line 566
    sget-object v0, Landroidx/fragment/app/BackStackRecordState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 567
    .line 568
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    check-cast v0, [Landroidx/fragment/app/BackStackRecordState;

    .line 573
    .line 574
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    .line 575
    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    iput v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 581
    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    .line 593
    .line 594
    sget-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 595
    .line 596
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    .line 601
    .line 602
    sget-object v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 603
    .line 604
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    .line 609
    .line 610
    return-object p0

    .line 611
    :pswitch_15
    new-instance p0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 612
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    .line 621
    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    iput p1, p0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    .line 627
    .line 628
    return-object p0

    .line 629
    :pswitch_16
    new-instance p0, Landroidx/fragment/app/BackStackState;

    .line 630
    .line 631
    invoke-direct {p0, p1}, Landroidx/fragment/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    .line 632
    .line 633
    .line 634
    return-object p0

    .line 635
    :pswitch_17
    new-instance p0, Landroidx/fragment/app/BackStackRecordState;

    .line 636
    .line 637
    invoke-direct {p0, p1}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroid/os/Parcel;)V

    .line 638
    .line 639
    .line 640
    return-object p0

    .line 641
    :pswitch_18
    new-instance p0, Landroidx/core/widget/NestedScrollView$SavedState;

    .line 642
    .line 643
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 647
    .line 648
    .line 649
    move-result p1

    .line 650
    iput p1, p0, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 651
    .line 652
    return-object p0

    .line 653
    :pswitch_19
    new-instance p0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 654
    .line 655
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 659
    .line 660
    .line 661
    move-result p1

    .line 662
    if-eqz p1, :cond_b

    .line 663
    .line 664
    move v2, v3

    .line 665
    :cond_b
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    .line 666
    .line 667
    return-object p0

    .line 668
    :pswitch_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    new-instance p0, Landroidx/activity/result/IntentSenderRequest;

    .line 672
    .line 673
    const-class v0, Landroid/content/IntentSender;

    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    check-cast v0, Landroid/content/IntentSender;

    .line 687
    .line 688
    const-class v1, Landroid/content/Intent;

    .line 689
    .line 690
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    check-cast v1, Landroid/content/Intent;

    .line 699
    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 705
    .line 706
    .line 707
    move-result p1

    .line 708
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 709
    .line 710
    .line 711
    return-object p0

    .line 712
    :pswitch_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    new-instance p0, Landroidx/activity/result/ActivityResult;

    .line 716
    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    if-nez v2, :cond_c

    .line 726
    .line 727
    goto :goto_2

    .line 728
    :cond_c
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 729
    .line 730
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    move-object v1, p1

    .line 735
    check-cast v1, Landroid/content/Intent;

    .line 736
    .line 737
    :goto_2
    invoke-direct {p0, v1, v0}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    .line 738
    .line 739
    .line 740
    return-object p0

    .line 741
    :pswitch_1c
    new-instance p0, Landroidx/fragment/app/FragmentState;

    .line 742
    .line 743
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    .line 744
    .line 745
    .line 746
    return-object p0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/fragment/app/FragmentState$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lcom/fsck/k9/ui/messageview/MessageTopView$SavedState;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lcom/fsck/k9/activity/misc/Attachment;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager$SavedState;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$SavedState;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Landroidx/preference/TwoStatePreference$SavedState;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Landroidx/preference/SeekBarPreference$SavedState;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Landroidx/preference/PreferenceGroup$SavedState;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Landroidx/preference/Preference$BaseSavedState;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    new-array p0, p1, [Landroidx/preference/MultiSelectListPreference$SavedState;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    new-array p0, p1, [Landroidx/preference/ListPreference$SavedState;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    new-array p0, p1, [Landroidx/preference/EditTextPreference$SavedState;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_14
    new-array p0, p1, [Landroidx/fragment/app/FragmentManagerState;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_15
    new-array p0, p1, [Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_16
    new-array p0, p1, [Landroidx/fragment/app/BackStackState;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_17
    new-array p0, p1, [Landroidx/fragment/app/BackStackRecordState;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_18
    new-array p0, p1, [Landroidx/core/widget/NestedScrollView$SavedState;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_19
    new-array p0, p1, [Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1a
    new-array p0, p1, [Landroidx/activity/result/IntentSenderRequest;

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1b
    new-array p0, p1, [Landroidx/activity/result/ActivityResult;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1c
    new-array p0, p1, [Landroidx/fragment/app/FragmentState;

    .line 94
    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
