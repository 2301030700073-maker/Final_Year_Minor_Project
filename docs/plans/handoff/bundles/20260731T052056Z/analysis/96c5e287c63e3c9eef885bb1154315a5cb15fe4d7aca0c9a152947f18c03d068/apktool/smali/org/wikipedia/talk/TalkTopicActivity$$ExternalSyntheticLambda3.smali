.class public final synthetic Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Success;

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    iget-object p1, p1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->undoTopicId:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v2, v1

    .line 76
    check-cast v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 77
    .line 78
    iget-object v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    move-object v4, v1

    .line 87
    :cond_1
    check-cast v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 88
    .line 89
    :cond_2
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->undoSubject:Ljava/lang/CharSequence;

    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->undoBody:Ljava/lang/CharSequence;

    .line 102
    .line 103
    invoke-virtual {p0, v4, p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->startReplyActivity(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->loadTopics()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v4

    .line 114
    :cond_5
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Error;

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 119
    .line 120
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 121
    .line 122
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    :goto_0
    return-object v5

    .line 126
    :pswitch_0
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Success;

    .line 132
    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 136
    .line 137
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    const p1, 0x7f12097b

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    const p1, 0x7f12097c

    .line 152
    .line 153
    .line 154
    :goto_1
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_8

    .line 180
    .line 181
    const v0, 0x7f12094e

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    :cond_8
    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    .line 193
    aput-object v0, v1, v6

    .line 194
    .line 195
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {p0, p1, v6}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 203
    .line 204
    .line 205
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->headerAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 206
    .line 207
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_9
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Error;

    .line 212
    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 216
    .line 217
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 218
    .line 219
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    :cond_a
    :goto_2
    return-object v5

    .line 223
    :pswitch_1
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 224
    .line 225
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Success;

    .line 226
    .line 227
    if-eqz v0, :cond_17

    .line 228
    .line 229
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 230
    .line 231
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p1, Ljava/util/List;

    .line 234
    .line 235
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->threadAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 236
    .line 237
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->headerAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 238
    .line 239
    iget-object v7, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 240
    .line 241
    if-eqz v7, :cond_16

    .line 242
    .line 243
    iget-object v7, v7, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v7, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 246
    .line 247
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    iget-object v3, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 251
    .line 252
    if-eqz v3, :cond_15

    .line 253
    .line 254
    iget-object v3, v3, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v3, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 257
    .line 258
    invoke-virtual {v3, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 259
    .line 260
    .line 261
    iget-object v3, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 262
    .line 263
    if-eqz v3, :cond_14

    .line 264
    .line 265
    iget-object v3, v3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 268
    .line 269
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-nez v3, :cond_c

    .line 274
    .line 275
    iget-object v3, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 276
    .line 277
    if-eqz v3, :cond_b

    .line 278
    .line 279
    iget-object v3, v3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 282
    .line 283
    new-instance v7, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 284
    .line 285
    new-array v8, v6, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 286
    .line 287
    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v4

    .line 304
    :cond_c
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 308
    .line 309
    .line 310
    :goto_3
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 315
    .line 316
    if-eqz p1, :cond_11

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-nez p1, :cond_d

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_d
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    move v0, v6

    .line 336
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_f

    .line 341
    .line 342
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 347
    .line 348
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    iget-object v7, v7, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 355
    .line 356
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-eqz v3, :cond_e

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_f
    const/4 v0, -0x1

    .line 367
    :goto_5
    add-int/2addr v1, v0

    .line 368
    if-ltz v1, :cond_11

    .line 369
    .line 370
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 371
    .line 372
    if-eqz p1, :cond_10

    .line 373
    .line 374
    iget-object p1, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 377
    .line 378
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;

    .line 379
    .line 380
    invoke-direct {v0, v1, v6, p0}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v4

    .line 391
    :cond_11
    :goto_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    if-eqz p1, :cond_13

    .line 396
    .line 397
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 398
    .line 399
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 404
    .line 405
    if-eqz v0, :cond_12

    .line 406
    .line 407
    iget-object v4, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 408
    .line 409
    :cond_12
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {p1, v0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    :cond_13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 417
    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v4

    .line 424
    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v4

    .line 428
    :cond_16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    throw v4

    .line 432
    :cond_17
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Error;

    .line 433
    .line 434
    if-eqz v0, :cond_1c

    .line 435
    .line 436
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 437
    .line 438
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 439
    .line 440
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 441
    .line 442
    if-eqz v0, :cond_1b

    .line 443
    .line 444
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 447
    .line 448
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 452
    .line 453
    if-eqz v0, :cond_1a

    .line 454
    .line 455
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 458
    .line 459
    invoke-virtual {v0, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 460
    .line 461
    .line 462
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 463
    .line 464
    if-eqz v0, :cond_19

    .line 465
    .line 466
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 469
    .line 470
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 474
    .line 475
    if-eqz p0, :cond_18

    .line 476
    .line 477
    iget-object p0, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 480
    .line 481
    invoke-virtual {p0, p1, v4}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 482
    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v4

    .line 489
    :cond_19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v4

    .line 493
    :cond_1a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v4

    .line 497
    :cond_1b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v4

    .line 501
    :cond_1c
    :goto_7
    return-object v5

    .line 502
    nop

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
