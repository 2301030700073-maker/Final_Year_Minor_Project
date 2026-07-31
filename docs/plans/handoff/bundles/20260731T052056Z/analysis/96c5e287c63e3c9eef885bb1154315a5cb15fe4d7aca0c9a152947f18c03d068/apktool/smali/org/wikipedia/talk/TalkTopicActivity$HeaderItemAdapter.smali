.class public final Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_0
    const/4 p0, 0x1

    .line 22
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    .line 14
    .line 15
    sget v5, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 24
    .line 25
    move/from16 v5, p2

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast v5, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 42
    .line 43
    iget-object v6, v1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 44
    .line 45
    iget-object v7, v6, Lorg/wikipedia/talk/TalkTopicActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 46
    .line 47
    invoke-virtual {v6}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget-object v8, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v9, 0x4

    .line 54
    invoke-static {v5, v0, v7, v8, v9}, Lorg/wikipedia/talk/TalkThreadItemView;->bindItem$default(Lorg/wikipedia/talk/TalkThreadItemView;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Landroid/text/method/MovementMethod;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v6}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v7, v7, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v6}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v4, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const v4, 0x7f0404fb

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v4}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const v6, 0x7f0404e7

    .line 99
    .line 100
    .line 101
    invoke-static {v4, v6}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    new-instance v6, Landroid/animation/ArgbEvaluator;

    .line 106
    .line 107
    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const/4 v7, 0x2

    .line 119
    new-array v7, v7, [Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v0, v7, v3

    .line 122
    .line 123
    aput-object v4, v7, v2

    .line 124
    .line 125
    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-wide/16 v2, 0x3e8

    .line 130
    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    .line 133
    .line 134
    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;

    .line 135
    .line 136
    invoke-direct {v2, v9, v5}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 143
    .line 144
    .line 145
    :cond_0
    invoke-virtual {v5, v1}, Lorg/wikipedia/talk/TalkThreadItemView;->setCallback(Lorg/wikipedia/talk/TalkThreadItemView$Callback;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_0
    move-object/from16 v0, p1

    .line 150
    .line 151
    check-cast v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;

    .line 152
    .line 153
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;->view:Lorg/wikipedia/talk/TalkThreadHeaderView;

    .line 154
    .line 155
    iget-object v5, v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 156
    .line 157
    sget v6, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 158
    .line 159
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    iget-object v6, v6, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 164
    .line 165
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    iget-object v7, v7, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 170
    .line 171
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    iget-boolean v8, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->subscribed:Z

    .line 176
    .line 177
    iget-object v9, v5, Lorg/wikipedia/talk/TalkTopicActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 178
    .line 179
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v5, v5, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object v10, v1, Lorg/wikipedia/talk/TalkThreadHeaderView;->binding:Lokio/internal/DefaultSocket;

    .line 192
    .line 193
    iget-object v11, v10, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v11, Landroid/widget/TextView;

    .line 196
    .line 197
    iget-object v12, v10, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v12, Landroid/widget/TextView;

    .line 200
    .line 201
    iget-object v13, v10, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v13, Landroid/widget/TextView;

    .line 204
    .line 205
    iget-object v14, v10, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 208
    .line 209
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 210
    .line 211
    .line 212
    sget v11, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 213
    .line 214
    invoke-static {v6}, Lokhttp3/Headers$Companion;->getNonTalkPageTitle(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    sget-object v15, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 219
    .line 220
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v16

    .line 228
    if-nez v16, :cond_1

    .line 229
    .line 230
    iget-object v15, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 231
    .line 232
    iget-object v15, v15, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v15}, Lorg/wikipedia/staticdata/TalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    :cond_1
    invoke-virtual {v11}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v15, ": <a href=\'"

    .line 263
    .line 264
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v11, "\'>"

    .line 271
    .line 272
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v6, "</a>"

    .line 279
    .line 280
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget-object v6, v10, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v6, Landroid/widget/TextView;

    .line 294
    .line 295
    invoke-static {v6, v4, v5}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {v7}, Lorg/wikipedia/util/UriUtil;->isHeaderTemplate(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    const/16 v6, 0x8

    .line 303
    .line 304
    if-nez v4, :cond_2

    .line 305
    .line 306
    move v4, v3

    .line 307
    goto :goto_0

    .line 308
    :cond_2
    move v4, v6

    .line 309
    :goto_0
    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 313
    .line 314
    .line 315
    if-eqz v7, :cond_3

    .line 316
    .line 317
    iget-object v4, v7, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_3
    const/4 v4, 0x0

    .line 321
    :goto_1
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-eqz v10, :cond_4

    .line 330
    .line 331
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    const v10, 0x7f12094e

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    :cond_4
    invoke-static {v13, v4, v5}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-static {v7}, Lorg/wikipedia/util/UriUtil;->isSubscribable(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-eqz v4, :cond_a

    .line 353
    .line 354
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    if-eqz v8, :cond_5

    .line 359
    .line 360
    const v5, 0x7f12093e

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_5
    const v5, 0x7f12093d

    .line 365
    .line 366
    .line 367
    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    if-eqz v8, :cond_6

    .line 382
    .line 383
    const v5, 0x7f04054f

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_6
    const v5, 0x7f040520

    .line 388
    .line 389
    .line 390
    :goto_3
    new-instance v10, Landroid/util/TypedValue;

    .line 391
    .line 392
    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-virtual {v4, v5, v10, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_7

    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_7
    const/4 v10, 0x0

    .line 407
    :goto_4
    if-eqz v10, :cond_9

    .line 408
    .line 409
    iget v2, v10, Landroid/util/TypedValue;->data:I

    .line 410
    .line 411
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    .line 413
    .line 414
    if-eqz v8, :cond_8

    .line 415
    .line 416
    const v2, 0x7f0801b8

    .line 417
    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_8
    const v2, 0x7f0801b9

    .line 421
    .line 422
    .line 423
    :goto_5
    invoke-virtual {v14, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v14}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v14, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    goto :goto_6

    .line 437
    :cond_9
    const-string v0, "Attribute not found; ID="

    .line 438
    .line 439
    invoke-static {v5, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_a
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    .line 448
    .line 449
    .line 450
    :goto_6
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 451
    .line 452
    .line 453
    if-eqz v7, :cond_b

    .line 454
    .line 455
    iget-object v2, v7, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_b
    const/4 v2, 0x0

    .line 459
    :goto_7
    if-eqz v2, :cond_c

    .line 460
    .line 461
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-nez v2, :cond_d

    .line 466
    .line 467
    :cond_c
    move v3, v6

    .line 468
    :cond_d
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    if-eqz v7, :cond_e

    .line 472
    .line 473
    iget-object v4, v7, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 474
    .line 475
    goto :goto_8

    .line 476
    :cond_e
    const/4 v4, 0x0

    .line 477
    :goto_8
    if-nez v4, :cond_f

    .line 478
    .line 479
    const-string v4, ""

    .line 480
    .line 481
    :cond_f
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    sget-object v3, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 486
    .line 487
    invoke-static {v12, v2}, Lokhttp3/Headers$Companion;->fromHtml(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/Spanned;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v0}, Lorg/wikipedia/talk/TalkThreadHeaderView;->setCallback(Lorg/wikipedia/talk/TalkThreadHeaderView$Callback;)V

    .line 499
    .line 500
    .line 501
    :goto_9
    return-void

    .line 502
    nop

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    .line 9
    .line 10
    new-instance v0, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p1, v1}, Lorg/wikipedia/talk/TalkThreadItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/talk/TalkThreadItemView;)V

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :pswitch_0
    new-instance p1, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;

    .line 28
    .line 29
    new-instance p2, Lorg/wikipedia/talk/TalkThreadHeaderView;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lorg/wikipedia/talk/TalkThreadHeaderView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/talk/TalkThreadHeaderView;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
