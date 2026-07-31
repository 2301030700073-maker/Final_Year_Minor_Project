.class public final synthetic Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "binding"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v0, v0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, v2, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v2, v4

    .line 32
    :goto_0
    if-eqz v2, :cond_a

    .line 33
    .line 34
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    sget-object v3, Lorg/wikipedia/gallery/GalleryActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    aget v2, v3, v2

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eq v2, v3, :cond_9

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    if-eq v2, v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/GalleryActivity;->startCaptionEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_a

    .line 64
    .line 65
    new-instance v8, Lorg/wikipedia/page/PageTitle;

    .line 66
    .line 67
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-object v5, v5, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 72
    .line 73
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-instance v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    iget-object v7, v7, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 84
    .line 85
    iget-object v7, v7, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 86
    .line 87
    const-string v9, "https://commons.wikimedia.org/"

    .line 88
    .line 89
    invoke-direct {v6, v9, v7}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v8, v5, v6, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Lorg/wikipedia/page/PageTitle;

    .line 96
    .line 97
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v1, v1, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 102
    .line 103
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 108
    .line 109
    iget-object v6, v0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v6, :cond_3

    .line 112
    .line 113
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 114
    .line 115
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    move-object v6, v3

    .line 126
    check-cast v6, Ljava/lang/String;

    .line 127
    .line 128
    :cond_3
    invoke-direct {v5, v9, v6}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v15, v1, v5, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v2, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 135
    .line 136
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget-object v3, v3, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 141
    .line 142
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Ljava/lang/String;

    .line 149
    .line 150
    const-string v3, ""

    .line 151
    .line 152
    if-nez v1, :cond_4

    .line 153
    .line 154
    move-object v1, v3

    .line 155
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_7

    .line 160
    .line 161
    iget-object v1, v2, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 162
    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    invoke-virtual {v1}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    goto :goto_1

    .line 170
    :cond_5
    move-object v1, v4

    .line 171
    :goto_1
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 172
    .line 173
    if-nez v1, :cond_6

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    move-object v3, v1

    .line 177
    :goto_2
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :cond_7
    move-object v10, v1

    .line 190
    new-instance v5, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 191
    .line 192
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    iget-object v1, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 197
    .line 198
    iget-object v7, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    iget-object v11, v2, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 205
    .line 206
    const/4 v13, 0x0

    .line 207
    const/16 v14, 0x7c0

    .line 208
    .line 209
    const/4 v12, 0x0

    .line 210
    invoke-direct/range {v5 .. v14}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    new-instance v10, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 214
    .line 215
    invoke-virtual {v15}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    iget-object v1, v15, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 220
    .line 221
    iget-object v12, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v15}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    iget-object v1, v2, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 228
    .line 229
    const/16 v18, 0x0

    .line 230
    .line 231
    const/16 v19, 0x7c0

    .line 232
    .line 233
    move-object v13, v15

    .line 234
    const/4 v15, 0x0

    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    move-object/from16 v16, v1

    .line 238
    .line 239
    invoke-direct/range {v10 .. v19}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->requestAddCaptionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 243
    .line 244
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_8

    .line 249
    .line 250
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 254
    .line 255
    :goto_3
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v6, Landroid/content/Intent;

    .line 264
    .line 265
    const-class v7, Lorg/wikipedia/descriptions/DescriptionEditActivity;

    .line 266
    .line 267
    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .line 269
    .line 270
    const-string v0, "title"

    .line 271
    .line 272
    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const-string v6, "highlightText"

    .line 277
    .line 278
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const-string v6, "sourceSummary"

    .line 283
    .line 284
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v5, "targetSummary"

    .line 289
    .line 290
    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const-string v5, "intentAction"

    .line 295
    .line 296
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v2, "invokeSource"

    .line 301
    .line 302
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v0, v4}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_9
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iget-object v1, v1, Lorg/wikipedia/gallery/GalleryItemViewModel;->mediaPage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 318
    .line 319
    if-eqz v1, :cond_a

    .line 320
    .line 321
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->requestAddImageTagsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 322
    .line 323
    sget v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->$r8$clinit:I

    .line 324
    .line 325
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 326
    .line 327
    invoke-static {v0, v1, v3}, Lorg/wikipedia/util/TabUtil;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v2, v0, v4}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 332
    .line 333
    .line 334
    :cond_a
    :goto_4
    return-void

    .line 335
    :pswitch_0
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 336
    .line 337
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    if-eqz v1, :cond_b

    .line 345
    .line 346
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    iget-object v2, v2, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_b
    move-object v2, v4

    .line 354
    :goto_5
    if-eqz v2, :cond_f

    .line 355
    .line 356
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    if-eqz v2, :cond_c

    .line 361
    .line 362
    iget-object v2, v2, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_c
    move-object v2, v4

    .line 366
    :goto_6
    if-nez v2, :cond_d

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    check-cast v2, Ljava/lang/Boolean;

    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_e

    .line 383
    .line 384
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 385
    .line 386
    invoke-direct {v1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 387
    .line 388
    .line 389
    iget-object v0, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 392
    .line 393
    iput-boolean v3, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 394
    .line 395
    const v0, 0x7f120537

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 399
    .line 400
    .line 401
    const v0, 0x7f120535

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 405
    .line 406
    .line 407
    const v0, 0x7f120703

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 414
    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_e
    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/GalleryActivity;->startCaptionEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 418
    .line 419
    .line 420
    :cond_f
    :goto_7
    return-void

    .line 421
    :pswitch_1
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 422
    .line 423
    if-eqz v1, :cond_10

    .line 424
    .line 425
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->errorView:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 428
    .line 429
    const/16 v2, 0x8

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryViewModel;->fetchGalleryItems()V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v4

    .line 446
    :pswitch_2
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 447
    .line 448
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 449
    .line 450
    if-eqz v1, :cond_12

    .line 451
    .line 452
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast v1, Landroid/widget/ImageView;

    .line 455
    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    if-eqz v1, :cond_11

    .line 461
    .line 462
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-static {v0, v1, v3}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 477
    .line 478
    .line 479
    :cond_11
    return-void

    .line 480
    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    throw v4

    .line 484
    :pswitch_3
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 485
    .line 486
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 491
    .line 492
    .line 493
    return-void

    .line 494
    nop

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
