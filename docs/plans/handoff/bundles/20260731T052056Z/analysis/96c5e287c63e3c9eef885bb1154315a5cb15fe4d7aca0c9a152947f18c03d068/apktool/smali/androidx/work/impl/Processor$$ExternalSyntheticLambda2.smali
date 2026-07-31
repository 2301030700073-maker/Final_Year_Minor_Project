.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final run$org$maplibre$android$snapshotter$MapSnapshotter$$ExternalSyntheticLambda0()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 20
    .line 21
    const-string v1, "binding"

    .line 22
    .line 23
    iput-boolean v6, v0, Lorg/wikipedia/talk/TalkReplyActivity;->shouldWatchText:Z

    .line 24
    .line 25
    iget-object v2, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 30
    .line 31
    check-cast v2, Lorg/wikipedia/views/PlainPasteEditText;

    .line 32
    .line 33
    iget-object v3, p0, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v1, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 43
    .line 44
    check-cast v1, Lorg/wikipedia/views/UserMentionInputView;

    .line 45
    .line 46
    invoke-virtual {v1}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object p0, p0, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iput-boolean v5, v0, Lorg/wikipedia/talk/TalkReplyActivity;->shouldWatchText:Z

    .line 56
    .line 57
    invoke-virtual {v0, v5}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v4

    .line 65
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v4

    .line 69
    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 72
    .line 73
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 76
    .line 77
    iput-object v4, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->exclusiveTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;->run()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void

    .line 90
    :pswitch_1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 105
    .line 106
    check-cast p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 107
    .line 108
    invoke-virtual {v0}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->saveChanges()Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v1, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 122
    .line 123
    invoke-virtual {v1}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v4, v2, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 128
    .line 129
    iget-object v7, v2, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->toolbarOrder:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_3

    .line 136
    .line 137
    invoke-static {v5}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_3

    .line 146
    .line 147
    invoke-static {v5}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    iget-object v2, v2, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->menuOrder:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_4

    .line 166
    .line 167
    invoke-static {v6}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_4

    .line 176
    .line 177
    invoke-static {v6}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    move v2, v3

    .line 190
    :goto_1
    if-ltz v2, :cond_5

    .line 191
    .line 192
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 193
    .line 194
    invoke-virtual {v4, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 195
    .line 196
    .line 197
    :cond_5
    invoke-virtual {v1}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iget-object v4, v2, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 202
    .line 203
    iget-object v7, v2, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->toolbarOrder:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-eqz v7, :cond_6

    .line 210
    .line 211
    invoke-static {v5}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-nez v7, :cond_6

    .line 220
    .line 221
    invoke-static {v5}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    move v3, v5

    .line 229
    goto :goto_2

    .line 230
    :cond_6
    iget-object v2, v2, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->menuOrder:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_7

    .line 237
    .line 238
    invoke-static {v6}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_7

    .line 247
    .line 248
    invoke-static {v6}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->emptyPlaceholderPair(Z)Lkotlin/Pair;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    add-int/lit8 v3, v2, -0x1

    .line 260
    .line 261
    :cond_7
    :goto_2
    if-ltz v3, :cond_8

    .line 262
    .line 263
    invoke-virtual {v1}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v1, v1, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    sub-int/2addr v1, v3

    .line 274
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 275
    .line 276
    .line 277
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_9

    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, Ljava/lang/Number;

    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    add-int/lit8 v2, v1, 0x1

    .line 298
    .line 299
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_9
    return-void

    .line 304
    :pswitch_2
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 307
    .line 308
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;

    .line 311
    .line 312
    iput-object v4, v0, Lorg/wikipedia/page/PageActivity;->exclusiveTooltipRunnable:Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;

    .line 313
    .line 314
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_a

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_a
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda12;->run()V

    .line 322
    .line 323
    .line 324
    :goto_4
    return-void

    .line 325
    :pswitch_3
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 328
    .line 329
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p0, Landroid/content/Intent;

    .line 332
    .line 333
    sget v1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 334
    .line 335
    invoke-virtual {v0, p0}, Lorg/wikipedia/page/PageActivity;->handleIntent$1(Landroid/content/Intent;)V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_4
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v0, Lorg/wikipedia/history/HistoryFragment;

    .line 342
    .line 343
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast p0, Lorg/wikipedia/views/WikiCardView;

    .line 346
    .line 347
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_b

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    if-eqz v1, :cond_d

    .line 359
    .line 360
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v0}, Lokio/Okio__OkioKt;->isLandscape(Landroid/content/Context;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_c

    .line 371
    .line 372
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    div-int/2addr v0, v2

    .line 377
    const/high16 v2, 0x41f00000    # 30.0f

    .line 378
    .line 379
    invoke-static {v2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    add-int/2addr v2, v0

    .line 384
    goto :goto_5

    .line 385
    :cond_c
    const/high16 v0, 0x41800000    # 16.0f

    .line 386
    .line 387
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    :goto_5
    const/high16 v0, 0x40400000    # 3.0f

    .line 392
    .line 393
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 400
    .line 401
    .line 402
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 403
    .line 404
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 405
    .line 406
    .line 407
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 408
    .line 409
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_d
    const-string p0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 414
    .line 415
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    :goto_6
    return-void

    .line 419
    :pswitch_5
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 422
    .line 423
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast p0, Ljava/lang/String;

    .line 426
    .line 427
    iget-object v0, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->yearInReviewRedDot:Landroid/view/View;

    .line 433
    .line 434
    check-cast v0, Landroid/widget/TextView;

    .line 435
    .line 436
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_6
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    .line 443
    .line 444
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast p0, Landroid/net/Uri;

    .line 447
    .line 448
    iget-object v0, v0, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 449
    .line 450
    invoke-static {v0, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 451
    .line 452
    .line 453
    return-void

    .line 454
    :pswitch_7
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 457
    .line 458
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast p0, Ljava/lang/String;

    .line 461
    .line 462
    sget v4, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 463
    .line 464
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_16

    .line 469
    .line 470
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 471
    .line 472
    iget-object v4, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 473
    .line 474
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditText:Lorg/wikipedia/views/PlainPasteEditText;

    .line 475
    .line 476
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->originalDescription:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    const-string v5, "\\s"

    .line 482
    .line 483
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 495
    .line 496
    .line 497
    move-result v7

    .line 498
    if-nez v7, :cond_e

    .line 499
    .line 500
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 505
    .line 506
    .line 507
    move-result-object p0

    .line 508
    goto :goto_7

    .line 509
    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    .line 513
    .line 514
    move v1, v6

    .line 515
    :cond_f
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    invoke-interface {p0, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 535
    .line 536
    .line 537
    move-result v8

    .line 538
    if-nez v8, :cond_f

    .line 539
    .line 540
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    invoke-interface {p0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 545
    .line 546
    .line 547
    move-result-object p0

    .line 548
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-object p0, v7

    .line 556
    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object p0

    .line 565
    :cond_10
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    if-eqz v5, :cond_11

    .line 570
    .line 571
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    move-object v7, v5

    .line 576
    check-cast v7, Ljava/lang/String;

    .line 577
    .line 578
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 579
    .line 580
    .line 581
    move-result v7

    .line 582
    if-nez v7, :cond_10

    .line 583
    .line 584
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    goto :goto_8

    .line 588
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    move v5, v6

    .line 593
    :goto_9
    move v7, v5

    .line 594
    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 595
    .line 596
    .line 597
    move-result v8

    .line 598
    if-eqz v8, :cond_14

    .line 599
    .line 600
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    check-cast v8, Ljava/lang/String;

    .line 605
    .line 606
    const/4 v9, 0x4

    .line 607
    invoke-static {v0, v8, v5, v6, v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    if-ne v5, v3, :cond_13

    .line 612
    .line 613
    goto :goto_a

    .line 614
    :cond_13
    if-nez v7, :cond_12

    .line 615
    .line 616
    goto :goto_9

    .line 617
    :cond_14
    :goto_a
    if-ne v5, v3, :cond_15

    .line 618
    .line 619
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object p0

    .line 623
    check-cast p0, Ljava/lang/String;

    .line 624
    .line 625
    invoke-static {v0, p0, v6, v6, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 626
    .line 627
    .line 628
    move-result v7

    .line 629
    move v5, v7

    .line 630
    :cond_15
    if-ltz v5, :cond_16

    .line 631
    .line 632
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object p0

    .line 636
    check-cast p0, Ljava/lang/String;

    .line 637
    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 639
    .line 640
    .line 641
    move-result p0

    .line 642
    add-int/2addr p0, v5

    .line 643
    invoke-virtual {v4, v7, p0}, Landroid/widget/EditText;->setSelection(II)V

    .line 644
    .line 645
    .line 646
    :cond_16
    :pswitch_8
    return-void

    .line 647
    :pswitch_9
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v0, Ljava/lang/Runnable;

    .line 650
    .line 651
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast p0, Ljava/lang/Runnable;

    .line 654
    .line 655
    if-eqz v0, :cond_17

    .line 656
    .line 657
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 658
    .line 659
    .line 660
    :cond_17
    if-eqz p0, :cond_18

    .line 661
    .line 662
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 663
    .line 664
    .line 665
    :cond_18
    return-void

    .line 666
    :pswitch_a
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 669
    .line 670
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast p0, Lkotlinx/coroutines/selects/OnTimeout;

    .line 673
    .line 674
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 675
    .line 676
    invoke-virtual {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_b
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 683
    .line 684
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast p0, Lkotlinx/coroutines/android/HandlerContext;

    .line 687
    .line 688
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 689
    .line 690
    .line 691
    return-void

    .line 692
    :pswitch_c
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaWebViewHelper$HCaptchaWebClient;

    .line 695
    .line 696
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast p0, Landroid/net/Uri;

    .line 699
    .line 700
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptchaWebViewHelper$HCaptchaWebClient;->this$0:Lcoil3/ImageLoader$Builder;

    .line 701
    .line 702
    iget-object v1, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v1, Lcom/hcaptcha/sdk/HCaptchaWebView;

    .line 705
    .line 706
    const-string v2, "JSInterface"

    .line 707
    .line 708
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    const-string v2, "JSDI"

    .line 712
    .line 713
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v0, Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 719
    .line 720
    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 721
    .line 722
    sget-object v2, Lcom/hcaptcha/sdk/HCaptchaError;->INSECURE_HTTP_REQUEST_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 723
    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    .line 725
    .line 726
    const-string v4, "Insecure resource "

    .line 727
    .line 728
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const-string p0, " requested"

    .line 735
    .line 736
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    invoke-direct {v1, v2, p0}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-interface {v0, v1}, Lcom/hcaptcha/sdk/tasks/OnFailureListener;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 747
    .line 748
    .line 749
    return-void

    .line 750
    :pswitch_d
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 751
    .line 752
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;

    .line 753
    .line 754
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 757
    .line 758
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->captchaVerifier:Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 759
    .line 760
    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 761
    .line 762
    invoke-direct {v1, p0, v4}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-interface {v0, v1}, Lcom/hcaptcha/sdk/tasks/OnFailureListener;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 766
    .line 767
    .line 768
    return-void

    .line 769
    :pswitch_e
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;

    .line 772
    .line 773
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast p0, Ljava/lang/String;

    .line 776
    .line 777
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->captchaVerifier:Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 778
    .line 779
    invoke-interface {v0, p0}, Lcom/hcaptcha/sdk/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    return-void

    .line 783
    :pswitch_f
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 784
    .line 785
    check-cast v0, Lcom/google/android/material/datepicker/SingleDateSelector$1;

    .line 786
    .line 787
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast p0, Ljava/lang/String;

    .line 790
    .line 791
    iget-object v1, v0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 792
    .line 793
    iget-object v2, v0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 794
    .line 795
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    const v4, 0x7f12042f

    .line 800
    .line 801
    .line 802
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    const v7, 0x7f120431

    .line 807
    .line 808
    .line 809
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v7

    .line 813
    const/16 v8, 0x20

    .line 814
    .line 815
    const/16 v9, 0xa0

    .line 816
    .line 817
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object p0

    .line 821
    new-array v10, v5, [Ljava/lang/Object;

    .line 822
    .line 823
    aput-object p0, v10, v6

    .line 824
    .line 825
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object p0

    .line 829
    const v7, 0x7f120430

    .line 830
    .line 831
    .line 832
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    new-instance v7, Ljava/util/Date;

    .line 837
    .line 838
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 839
    .line 840
    .line 841
    move-result-object v10

    .line 842
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 843
    .line 844
    .line 845
    move-result-wide v10

    .line 846
    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v2

    .line 857
    new-array v5, v5, [Ljava/lang/Object;

    .line 858
    .line 859
    aput-object v2, v5, v6

    .line 860
    .line 861
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    const-string v4, "\n"

    .line 874
    .line 875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object p0

    .line 891
    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 892
    .line 893
    .line 894
    iget-object p0, v0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->this$0:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 895
    .line 896
    iget-object v1, v0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->val$dateTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 897
    .line 898
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 899
    .line 900
    .line 901
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    iget-object p0, v0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/MaterialDatePicker$2;

    .line 905
    .line 906
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$2;->onIncompleteSelectionChanged()V

    .line 907
    .line 908
    .line 909
    return-void

    .line 910
    :pswitch_10
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 911
    .line 912
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 913
    .line 914
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 915
    .line 916
    check-cast p0, Ljava/lang/Runnable;

    .line 917
    .line 918
    sget-object v1, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    .line 919
    .line 920
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 921
    .line 922
    .line 923
    iget-object p0, v0, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 924
    .line 925
    if-eqz p0, :cond_19

    .line 926
    .line 927
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    .line 929
    .line 930
    iput-object v4, v0, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 931
    .line 932
    const/high16 p0, -0x31000000

    .line 933
    .line 934
    iput p0, v0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 935
    .line 936
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 937
    .line 938
    .line 939
    return-void

    .line 940
    :pswitch_11
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 943
    .line 944
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 945
    .line 946
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    .line 947
    .line 948
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    .line 954
    .line 955
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 956
    .line 957
    new-instance v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 958
    .line 959
    invoke-direct {v2, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 960
    .line 961
    .line 962
    invoke-static {v0, v5, v6, v2}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    check-cast v0, Ljava/util/List;

    .line 967
    .line 968
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 973
    .line 974
    .line 975
    move-result v1

    .line 976
    if-eqz v1, :cond_1a

    .line 977
    .line 978
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    check-cast v1, Ljava/lang/String;

    .line 983
    .line 984
    invoke-static {p0, v1}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    goto :goto_b

    .line 988
    :cond_1a
    return-void

    .line 989
    :pswitch_12
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 990
    .line 991
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 992
    .line 993
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast p0, Ljava/util/UUID;

    .line 996
    .line 997
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p0

    .line 1001
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    .line 1003
    .line 1004
    invoke-static {v0, p0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    return-void

    .line 1008
    :pswitch_13
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1009
    .line 1010
    check-cast v0, Ljava/util/List;

    .line 1011
    .line 1012
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1013
    .line 1014
    check-cast p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 1015
    .line 1016
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    if-eqz v1, :cond_1c

    .line 1025
    .line 1026
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    check-cast v1, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 1031
    .line 1032
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 1033
    .line 1034
    iget-object v3, v1, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->this$0:Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 1035
    .line 1036
    invoke-virtual {v3, v2}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->isConstrained(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v2

    .line 1040
    if-eqz v2, :cond_1b

    .line 1041
    .line 1042
    new-instance v2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 1043
    .line 1044
    invoke-virtual {v3}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->getReason()I

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    invoke-direct {v2, v3}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 1049
    .line 1050
    .line 1051
    goto :goto_d

    .line 1052
    :cond_1b
    sget-object v2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 1053
    .line 1054
    :goto_d
    iget-object v1, v1, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 1055
    .line 1056
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    goto :goto_c

    .line 1063
    :cond_1c
    return-void

    .line 1064
    :pswitch_14
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1065
    .line 1066
    check-cast v0, Lcoil3/ImageLoader$Builder;

    .line 1067
    .line 1068
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1069
    .line 1070
    check-cast p0, Landroidx/work/impl/StartStopToken;

    .line 1071
    .line 1072
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 1073
    .line 1074
    check-cast v0, Lcoil3/svg/internal/AndroidSvg;

    .line 1075
    .line 1076
    const/4 v1, 0x3

    .line 1077
    invoke-virtual {v0, p0, v1}, Lcoil3/svg/internal/AndroidSvg;->stopWork(Landroidx/work/impl/StartStopToken;I)V

    .line 1078
    .line 1079
    .line 1080
    return-void

    .line 1081
    :pswitch_15
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast v0, Ljava/lang/Runnable;

    .line 1084
    .line 1085
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1086
    .line 1087
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 1088
    .line 1089
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 1093
    .line 1094
    .line 1095
    return-void

    .line 1096
    :catchall_0
    move-exception v0

    .line 1097
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 1098
    .line 1099
    .line 1100
    throw v0

    .line 1101
    :pswitch_16
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1102
    .line 1103
    check-cast v0, Landroidx/core/content/res/CamUtils;

    .line 1104
    .line 1105
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1106
    .line 1107
    check-cast p0, Landroid/graphics/Typeface;

    .line 1108
    .line 1109
    invoke-virtual {v0, p0}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 1110
    .line 1111
    .line 1112
    return-void

    .line 1113
    :pswitch_17
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1114
    .line 1115
    check-cast v0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 1116
    .line 1117
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1118
    .line 1119
    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    .line 1120
    .line 1121
    iget-boolean v1, v0, Landroidx/compose/ui/platform/WrappedComposition;->disposed:Z

    .line 1122
    .line 1123
    if-nez v1, :cond_1d

    .line 1124
    .line 1125
    iput-object p0, v0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 1126
    .line 1127
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1128
    .line 1129
    .line 1130
    :cond_1d
    return-void

    .line 1131
    :pswitch_18
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1132
    .line 1133
    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 1134
    .line 1135
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1136
    .line 1137
    check-cast p0, Landroid/util/LongSparseArray;

    .line 1138
    .line 1139
    invoke-static {v0, p0}, Landroidx/core/view/DisplayCompat;->doTranslation(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :pswitch_19
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1144
    .line 1145
    check-cast v0, Landroidx/room/TransactionExecutor;

    .line 1146
    .line 1147
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1148
    .line 1149
    check-cast p0, Ljava/lang/Runnable;

    .line 1150
    .line 1151
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 1155
    .line 1156
    .line 1157
    return-void

    .line 1158
    :catchall_1
    move-exception p0

    .line 1159
    invoke-virtual {v0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 1160
    .line 1161
    .line 1162
    throw p0

    .line 1163
    :pswitch_1a
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1164
    .line 1165
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 1166
    .line 1167
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1168
    .line 1169
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    .line 1170
    .line 1171
    iget-object v1, v0, Landroidx/core/app/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 1172
    .line 1173
    new-instance v2, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda1;

    .line 1174
    .line 1175
    invoke-direct {v2, v5, p0, v0}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1179
    .line 1180
    .line 1181
    return-void

    .line 1182
    :pswitch_1b
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 1183
    .line 1184
    check-cast v0, Landroidx/work/impl/Processor;

    .line 1185
    .line 1186
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast p0, Landroidx/work/impl/model/WorkGenerationalId;

    .line 1189
    .line 1190
    iget-object v1, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 1191
    .line 1192
    monitor-enter v1

    .line 1193
    :try_start_2
    iget-object v0, v0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    .line 1194
    .line 1195
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1200
    .line 1201
    .line 1202
    move-result v2

    .line 1203
    if-eqz v2, :cond_1e

    .line 1204
    .line 1205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    check-cast v2, Landroidx/work/impl/ExecutionListener;

    .line 1210
    .line 1211
    invoke-interface {v2, p0, v6}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 1212
    .line 1213
    .line 1214
    goto :goto_e

    .line 1215
    :catchall_2
    move-exception p0

    .line 1216
    goto :goto_f

    .line 1217
    :cond_1e
    monitor-exit v1

    .line 1218
    return-void

    .line 1219
    :goto_f
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1220
    throw p0

    .line 1221
    :pswitch_data_0
    .packed-switch 0x0
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
