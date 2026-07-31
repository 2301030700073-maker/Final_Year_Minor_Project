.class public final Lorg/wikipedia/gallery/GalleryActivity$onCreate$10$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10$1$1$1;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget p2, p0, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10$1$1$1;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "binding"

    .line 12
    .line 13
    packed-switch p2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 17
    .line 18
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    sget-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->progressBar:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v2

    .line 41
    :cond_1
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 42
    .line 43
    if-eqz p2, :cond_a

    .line 44
    .line 45
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 46
    .line 47
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkotlin/Pair;

    .line 50
    .line 51
    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 62
    .line 63
    sget-object v3, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 64
    .line 65
    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 66
    .line 67
    if-eqz v3, :cond_9

    .line 68
    .line 69
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityGalleryBinding;->progressBar:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 91
    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getLabels()Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    check-cast v4, Ljava/lang/Iterable;

    .line 108
    .line 109
    const/16 v5, 0xa

    .line 110
    .line 111
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    const/16 v6, 0x10

    .line 120
    .line 121
    if-ge v5, v6, :cond_2

    .line 122
    .line 123
    move v5, v6

    .line 124
    :cond_2
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_4

    .line 138
    .line 139
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 144
    .line 145
    iget-object v7, v5, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->language:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v5, v5, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    move-object v6, v2

    .line 154
    :cond_4
    if-nez v6, :cond_5

    .line 155
    .line 156
    move-object v6, v3

    .line 157
    :cond_5
    iput-object v6, v1, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 158
    .line 159
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 160
    .line 161
    .line 162
    if-eqz p1, :cond_7

    .line 163
    .line 164
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getStatements()Ljava/util/Map;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :cond_7
    if-nez v2, :cond_8

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    move-object v3, v2

    .line 172
    :goto_1
    invoke-static {v3}, Lorg/wikipedia/commons/ImageTagsProvider;->getDepictsClaims(Ljava/util/Map;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/gallery/GalleryActivity;->updateGalleryDescription(IZ)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v2

    .line 188
    :cond_a
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 189
    .line 190
    if-eqz p2, :cond_b

    .line 191
    .line 192
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 193
    .line 194
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 195
    .line 196
    sget-object p2, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 197
    .line 198
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v3, v3}, Lorg/wikipedia/gallery/GalleryActivity;->updateGalleryDescription(IZ)V

    .line 202
    .line 203
    .line 204
    :cond_b
    :goto_2
    return-object v0

    .line 205
    :pswitch_0
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 206
    .line 207
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 208
    .line 209
    if-eqz p2, :cond_d

    .line 210
    .line 211
    sget-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 212
    .line 213
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 214
    .line 215
    if-eqz p0, :cond_c

    .line 216
    .line 217
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->progressBar:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 220
    .line 221
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v2

    .line 230
    :cond_d
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 231
    .line 232
    if-eqz p2, :cond_18

    .line 233
    .line 234
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 235
    .line 236
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p1, Lorg/wikipedia/gallery/MediaList;

    .line 239
    .line 240
    const-string p2, "image"

    .line 241
    .line 242
    const-string/jumbo v5, "video"

    .line 243
    .line 244
    .line 245
    filled-new-array {p2, v5}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p1, p2}, Lorg/wikipedia/gallery/MediaList;->getItems([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    sget-object p2, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 254
    .line 255
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 256
    .line 257
    if-eqz p2, :cond_17

    .line 258
    .line 259
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->progressBar:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 262
    .line 263
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    iget-object v6, p2, Lorg/wikipedia/gallery/GalleryViewModel;->initialFilename:Ljava/lang/String;

    .line 271
    .line 272
    const/4 p2, -0x1

    .line 273
    if-eqz v6, :cond_10

    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_f

    .line 284
    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    check-cast v5, Lorg/wikipedia/gallery/MediaListItem;

    .line 290
    .line 291
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 292
    .line 293
    iget-object v7, v5, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v7}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    const/16 v8, 0x3a

    .line 300
    .line 301
    invoke-static {v6, v8}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_e

    .line 310
    .line 311
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    goto :goto_3

    .line 316
    :cond_f
    move v1, p2

    .line 317
    :goto_3
    if-ne v1, p2, :cond_11

    .line 318
    .line 319
    new-instance v5, Lorg/wikipedia/gallery/MediaListItem;

    .line 320
    .line 321
    const/4 v10, 0x0

    .line 322
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 323
    .line 324
    const-string v7, ""

    .line 325
    .line 326
    const/4 v8, 0x0

    .line 327
    const/4 v9, 0x0

    .line 328
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/gallery/MediaListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/TextInfo;ZILjava/util/List;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    move v1, v3

    .line 335
    goto :goto_4

    .line 336
    :cond_10
    move v1, p2

    .line 337
    :cond_11
    :goto_4
    iget-object v5, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    .line 338
    .line 339
    const-string v6, "galleryAdapter"

    .line 340
    .line 341
    if-eqz v5, :cond_16

    .line 342
    .line 343
    iget-object v7, v5, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 352
    .line 353
    .line 354
    if-eq v1, p2, :cond_13

    .line 355
    .line 356
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 357
    .line 358
    if-eqz p0, :cond_12

    .line 359
    .line 360
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 363
    .line 364
    invoke-virtual {p0, v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v2

    .line 372
    :cond_13
    iget p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    .line 373
    .line 374
    if-ltz p1, :cond_19

    .line 375
    .line 376
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    .line 377
    .line 378
    if-eqz p2, :cond_15

    .line 379
    .line 380
    iget-object p2, p2, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    if-ge p1, p2, :cond_19

    .line 387
    .line 388
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 389
    .line 390
    if-eqz p1, :cond_14

    .line 391
    .line 392
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 395
    .line 396
    iget p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    .line 397
    .line 398
    invoke-virtual {p1, p0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_14
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v2

    .line 406
    :cond_15
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v2

    .line 410
    :cond_16
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v2

    .line 414
    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v2

    .line 418
    :cond_18
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 419
    .line 420
    if-eqz p2, :cond_19

    .line 421
    .line 422
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 423
    .line 424
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 425
    .line 426
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->onError(Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    :cond_19
    :goto_5
    return-object v0

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
