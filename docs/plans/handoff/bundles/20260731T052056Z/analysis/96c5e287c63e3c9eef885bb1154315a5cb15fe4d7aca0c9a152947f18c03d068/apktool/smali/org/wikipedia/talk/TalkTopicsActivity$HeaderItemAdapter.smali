.class public final Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

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
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortedThreadItems:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    instance-of v2, v1, Lorg/wikipedia/talk/TalkTopicHolder;

    .line 11
    .line 12
    if-eqz v2, :cond_2a

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/talk/TalkTopicHolder;

    .line 15
    .line 16
    sget v2, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortedThreadItems:Ljava/util/List;

    .line 25
    .line 26
    move/from16 v2, p2

    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 33
    .line 34
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    iget-object v6, v1, Lorg/wikipedia/talk/TalkTopicHolder;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 37
    .line 38
    iget-object v7, v1, Lorg/wikipedia/talk/TalkTopicHolder;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 39
    .line 40
    iget-object v8, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v8, Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v9, v1, Lorg/wikipedia/talk/TalkTopicHolder;->viewModel:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 48
    .line 49
    invoke-virtual {v9, v0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->topicSeen(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    iput-boolean v10, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 54
    .line 55
    iput-object v0, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 56
    .line 57
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 58
    .line 59
    sget-object v10, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 60
    .line 61
    const-string v10, ""

    .line 62
    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    move-object v0, v10

    .line 66
    :cond_0
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-nez v11, :cond_1

    .line 91
    .line 92
    const v0, 0x7f12094e

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-object v11, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v11, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    iget-object v12, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v12, Landroid/widget/ImageView;

    .line 109
    .line 110
    iget-object v13, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v13, Landroid/widget/ImageView;

    .line 113
    .line 114
    iget-object v14, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v14, Landroid/widget/TextView;

    .line 117
    .line 118
    iget-object v15, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v15, Landroid/widget/TextView;

    .line 121
    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    iget-object v4, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v4, Landroid/widget/TextView;

    .line 127
    .line 128
    iget-object v5, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v5, Landroid/widget/TextView;

    .line 131
    .line 132
    iget-object v3, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v8, v0, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 138
    .line 139
    const-string v3, "threadItem"

    .line 140
    .line 141
    if-eqz v0, :cond_29

    .line 142
    .line 143
    iget-boolean v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 144
    .line 145
    const v17, 0x7f04051a

    .line 146
    .line 147
    .line 148
    const v18, 0x1010212

    .line 149
    .line 150
    .line 151
    if-eqz v0, :cond_2

    .line 152
    .line 153
    move/from16 v0, v18

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    move/from16 v0, v17

    .line 157
    .line 158
    :goto_0
    invoke-static {v6, v0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 169
    .line 170
    if-eqz v0, :cond_28

    .line 171
    .line 172
    iget-boolean v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 173
    .line 174
    const v8, 0x7f120934

    .line 175
    .line 176
    .line 177
    if-nez v0, :cond_3

    .line 178
    .line 179
    const v0, 0x7f120940

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    const v0, 0x7f0801c4

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const v8, 0x7f120933

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_3
    const v0, 0x7f120941

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    const v0, 0x7f0801c5

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const v8, 0x7f120933

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :goto_1
    iget-object v0, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .line 230
    new-instance v2, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    const/16 v8, 0x1a

    .line 233
    .line 234
    invoke-direct {v2, v8, v1}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 241
    .line 242
    if-eqz v0, :cond_27

    .line 243
    .line 244
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    const-string v8, " "

    .line 257
    .line 258
    move/from16 p0, v2

    .line 259
    .line 260
    const-string v2, "\n"

    .line 261
    .line 262
    if-eqz p0, :cond_7

    .line 263
    .line 264
    move-object/from16 p0, v3

    .line 265
    .line 266
    const/16 v3, 0x8

    .line 267
    .line 268
    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 287
    .line 288
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 289
    .line 290
    if-eqz v0, :cond_6

    .line 291
    .line 292
    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->isHeaderTemplate(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_4

    .line 297
    .line 298
    const/4 v3, 0x0

    .line 299
    goto :goto_2

    .line 300
    :cond_4
    const/16 v3, 0x8

    .line 301
    .line 302
    :goto_2
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    if-eqz v0, :cond_2a

    .line 306
    .line 307
    iget-object v0, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Landroid/widget/TextView;

    .line 310
    .line 311
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 312
    .line 313
    if-eqz v1, :cond_5

    .line 314
    .line 315
    iget-object v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v1, v2, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iget-object v2, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_15

    .line 351
    .line 352
    :cond_5
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v16

    .line 356
    :cond_6
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v16

    .line 360
    :cond_7
    move-object/from16 p0, v3

    .line 361
    .line 362
    const/16 v3, 0x8

    .line 363
    .line 364
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    iget-object v3, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 368
    .line 369
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    sget-object v7, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 374
    .line 375
    if-ne v3, v7, :cond_8

    .line 376
    .line 377
    const/4 v3, 0x0

    .line 378
    goto :goto_3

    .line 379
    :cond_8
    const/16 v3, 0x8

    .line 380
    .line 381
    :goto_3
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    check-cast v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 389
    .line 390
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 391
    .line 392
    if-nez v3, :cond_9

    .line 393
    .line 394
    move-object v3, v10

    .line 395
    :cond_9
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-static {v3, v2, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    iget-object v3, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 420
    .line 421
    invoke-static {v14, v2, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v2, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 425
    .line 426
    if-eqz v2, :cond_26

    .line 427
    .line 428
    iget-boolean v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 429
    .line 430
    if-eqz v2, :cond_a

    .line 431
    .line 432
    move/from16 v2, v18

    .line 433
    .line 434
    goto :goto_4

    .line 435
    :cond_a
    move/from16 v2, v17

    .line 436
    .line 437
    :goto_4
    invoke-static {v6, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    .line 443
    .line 444
    new-instance v2, Ljava/util/ArrayList;

    .line 445
    .line 446
    const/16 v3, 0xa

    .line 447
    .line 448
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    .line 454
    .line 455
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    if-eqz v7, :cond_b

    .line 464
    .line 465
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    check-cast v7, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 470
    .line 471
    iget-object v7, v7, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    goto :goto_5

    .line 477
    :cond_b
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    const/4 v3, 0x1

    .line 490
    sub-int/2addr v2, v3

    .line 491
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v8

    .line 499
    if-nez v8, :cond_c

    .line 500
    .line 501
    move-object/from16 v8, v16

    .line 502
    .line 503
    goto :goto_7

    .line 504
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v11

    .line 512
    if-nez v11, :cond_d

    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_d
    move-object v11, v8

    .line 516
    check-cast v11, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 517
    .line 518
    iget-object v11, v11, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 519
    .line 520
    if-nez v11, :cond_e

    .line 521
    .line 522
    new-instance v11, Ljava/util/Date;

    .line 523
    .line 524
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 525
    .line 526
    .line 527
    :cond_e
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v14

    .line 531
    move-object v3, v14

    .line 532
    check-cast v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 533
    .line 534
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 535
    .line 536
    if-nez v3, :cond_f

    .line 537
    .line 538
    new-instance v3, Ljava/util/Date;

    .line 539
    .line 540
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 541
    .line 542
    .line 543
    :cond_f
    invoke-interface {v11, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 544
    .line 545
    .line 546
    move-result v17

    .line 547
    if-gez v17, :cond_10

    .line 548
    .line 549
    move-object v11, v3

    .line 550
    move-object v8, v14

    .line 551
    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    if-nez v3, :cond_25

    .line 556
    .line 557
    :goto_7
    check-cast v8, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 558
    .line 559
    if-eqz v8, :cond_11

    .line 560
    .line 561
    iget-object v3, v8, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 562
    .line 563
    goto :goto_8

    .line 564
    :cond_11
    move-object/from16 v3, v16

    .line 565
    .line 566
    :goto_8
    if-nez v3, :cond_12

    .line 567
    .line 568
    move-object v3, v10

    .line 569
    :cond_12
    const/4 v7, 0x1

    .line 570
    if-le v2, v7, :cond_13

    .line 571
    .line 572
    const-string v7, " +"

    .line 573
    .line 574
    invoke-static {v2, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v10

    .line 578
    :cond_13
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    iget-object v3, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 583
    .line 584
    if-eqz v3, :cond_24

    .line 585
    .line 586
    iget-boolean v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 587
    .line 588
    const v7, 0x7f0402dd

    .line 589
    .line 590
    .line 591
    if-eqz v3, :cond_14

    .line 592
    .line 593
    move v3, v7

    .line 594
    goto :goto_9

    .line 595
    :cond_14
    const v3, 0x7f040520

    .line 596
    .line 597
    .line 598
    :goto_9
    sget-object v8, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 599
    .line 600
    iget-object v8, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 601
    .line 602
    invoke-static {v5, v2, v8}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    iget-object v2, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 606
    .line 607
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    sget-object v8, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 612
    .line 613
    if-ne v2, v8, :cond_15

    .line 614
    .line 615
    const/4 v2, 0x0

    .line 616
    goto :goto_a

    .line 617
    :cond_15
    const/16 v2, 0x8

    .line 618
    .line 619
    :goto_a
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    iget-object v2, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 623
    .line 624
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    if-ne v2, v8, :cond_16

    .line 629
    .line 630
    const/4 v2, 0x0

    .line 631
    goto :goto_b

    .line 632
    :cond_16
    const/16 v2, 0x8

    .line 633
    .line 634
    :goto_b
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 635
    .line 636
    .line 637
    invoke-static {v6, v3}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    .line 643
    .line 644
    invoke-static {v6, v3}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 649
    .line 650
    .line 651
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    const/4 v3, 0x1

    .line 656
    sub-int/2addr v2, v3

    .line 657
    iget-object v3, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 658
    .line 659
    if-eqz v3, :cond_23

    .line 660
    .line 661
    iget-boolean v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 662
    .line 663
    const v5, 0x7f0404fb

    .line 664
    .line 665
    .line 666
    if-eqz v3, :cond_17

    .line 667
    .line 668
    move v3, v7

    .line 669
    goto :goto_c

    .line 670
    :cond_17
    move v3, v5

    .line 671
    :goto_c
    if-lez v2, :cond_18

    .line 672
    .line 673
    const/4 v8, 0x0

    .line 674
    goto :goto_d

    .line 675
    :cond_18
    const/16 v8, 0x8

    .line 676
    .line 677
    :goto_d
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 678
    .line 679
    .line 680
    if-lez v2, :cond_19

    .line 681
    .line 682
    const/4 v8, 0x0

    .line 683
    goto :goto_e

    .line 684
    :cond_19
    const/16 v8, 0x8

    .line 685
    .line 686
    :goto_e
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 687
    .line 688
    .line 689
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    .line 695
    .line 696
    invoke-static {v6, v3}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    .line 702
    .line 703
    invoke-static {v6, v3}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 708
    .line 709
    .line 710
    new-instance v2, Ljava/util/ArrayList;

    .line 711
    .line 712
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .line 714
    .line 715
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    :cond_1a
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    if-eqz v3, :cond_1b

    .line 724
    .line 725
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    check-cast v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 730
    .line 731
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 732
    .line 733
    if-eqz v3, :cond_1a

    .line 734
    .line 735
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    goto :goto_f

    .line 739
    :cond_1b
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/util/List;)Ljava/lang/Comparable;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    check-cast v0, Ljava/util/Date;

    .line 744
    .line 745
    if-eqz v0, :cond_1d

    .line 746
    .line 747
    sget-object v2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 748
    .line 749
    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_1c

    .line 754
    .line 755
    const-string v2, "MMM d, yyyy, HH:mm"

    .line 756
    .line 757
    goto :goto_10

    .line 758
    :cond_1c
    const-string v2, "MMM d, yyyy, hh:mm a"

    .line 759
    .line 760
    :goto_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    const/4 v14, 0x0

    .line 768
    invoke-static {v2, v3, v14, v14}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;ZZ)Ljava/text/SimpleDateFormat;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    goto :goto_11

    .line 780
    :cond_1d
    const/4 v14, 0x0

    .line 781
    move-object/from16 v0, v16

    .line 782
    .line 783
    :goto_11
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 784
    .line 785
    if-eqz v1, :cond_22

    .line 786
    .line 787
    iget-boolean v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 788
    .line 789
    if-eqz v1, :cond_1e

    .line 790
    .line 791
    goto :goto_12

    .line 792
    :cond_1e
    move v7, v5

    .line 793
    :goto_12
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    .line 795
    .line 796
    if-eqz v0, :cond_1f

    .line 797
    .line 798
    move v3, v14

    .line 799
    goto :goto_13

    .line 800
    :cond_1f
    const/16 v3, 0x8

    .line 801
    .line 802
    :goto_13
    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 803
    .line 804
    .line 805
    new-instance v0, Landroid/util/TypedValue;

    .line 806
    .line 807
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    const/4 v3, 0x1

    .line 815
    invoke-virtual {v1, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    if-eqz v1, :cond_20

    .line 820
    .line 821
    move-object v4, v0

    .line 822
    goto :goto_14

    .line 823
    :cond_20
    move-object/from16 v4, v16

    .line 824
    .line 825
    :goto_14
    if-eqz v4, :cond_21

    .line 826
    .line 827
    iget v0, v4, Landroid/util/TypedValue;->data:I

    .line 828
    .line 829
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 830
    .line 831
    .line 832
    goto :goto_15

    .line 833
    :cond_21
    const-string v0, "Attribute not found; ID="

    .line 834
    .line 835
    invoke-static {v7, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    goto :goto_15

    .line 843
    :cond_22
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    throw v16

    .line 847
    :cond_23
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    throw v16

    .line 851
    :cond_24
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    throw v16

    .line 855
    :cond_25
    const/4 v3, 0x1

    .line 856
    goto/16 :goto_6

    .line 857
    .line 858
    :cond_26
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    throw v16

    .line 862
    :cond_27
    move-object/from16 p0, v3

    .line 863
    .line 864
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    throw v16

    .line 868
    :cond_28
    move-object/from16 p0, v3

    .line 869
    .line 870
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    throw v16

    .line 874
    :cond_29
    move-object/from16 p0, v3

    .line 875
    .line 876
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    throw v16

    .line 880
    :cond_2a
    :goto_15
    return-void

    .line 881
    :pswitch_0
    const/4 v14, 0x0

    .line 882
    const/16 v16, 0x0

    .line 883
    .line 884
    move-object v0, v1

    .line 885
    check-cast v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;

    .line 886
    .line 887
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;->binding:Lretrofit2/Retrofit;

    .line 888
    .line 889
    iget-object v2, v1, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v2, Landroid/widget/FrameLayout;

    .line 892
    .line 893
    iget-object v3, v1, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 894
    .line 895
    check-cast v3, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 896
    .line 897
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 898
    .line 899
    sget v4, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 900
    .line 901
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    iget-object v4, v4, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 906
    .line 907
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 908
    .line 909
    .line 910
    move-result-object v4

    .line 911
    sget-object v5, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 912
    .line 913
    if-eq v4, v5, :cond_2b

    .line 914
    .line 915
    move v5, v14

    .line 916
    goto :goto_16

    .line 917
    :cond_2b
    const/16 v5, 0x8

    .line 918
    .line 919
    :goto_16
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    iget-object v2, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 927
    .line 928
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 929
    .line 930
    if-eqz v2, :cond_2c

    .line 931
    .line 932
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 933
    .line 934
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 939
    .line 940
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    const/16 v1, 0x3a

    .line 945
    .line 946
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 951
    .line 952
    .line 953
    const/16 v0, 0x3c0

    .line 954
    .line 955
    invoke-static {v0, v2}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    move-object/from16 v1, v16

    .line 964
    .line 965
    invoke-virtual {v3, v0, v1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 966
    .line 967
    .line 968
    goto :goto_17

    .line 969
    :cond_2c
    iget-object v0, v1, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v0, Landroid/widget/FrameLayout;

    .line 972
    .line 973
    const/16 v3, 0x8

    .line 974
    .line 975
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 976
    .line 977
    .line 978
    :goto_17
    return-void

    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->$r8$classId:I

    .line 6
    .line 7
    const-string v3, "Missing required view with ID: "

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v2, Lorg/wikipedia/talk/TalkTopicHolder;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const v7, 0x7f0c031c

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v4, 0x7f0904a9

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v9, v6

    .line 37
    check-cast v9, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    if-eqz v9, :cond_1

    .line 40
    .line 41
    const v4, 0x7f0904aa

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    move-object v10, v6

    .line 49
    check-cast v10, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v10, :cond_1

    .line 52
    .line 53
    const v4, 0x7f0906d9

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    const v4, 0x7f0906da

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    move-object v11, v6

    .line 72
    check-cast v11, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v11, :cond_1

    .line 75
    .line 76
    const v4, 0x7f0906db

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    move-object v12, v6

    .line 84
    check-cast v12, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v12, :cond_1

    .line 87
    .line 88
    const v4, 0x7f0906dc

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    move-object v13, v6

    .line 96
    check-cast v13, Landroid/widget/ImageView;

    .line 97
    .line 98
    if-eqz v13, :cond_1

    .line 99
    .line 100
    const v4, 0x7f0906dd

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    move-object v14, v6

    .line 108
    check-cast v14, Landroid/widget/ImageView;

    .line 109
    .line 110
    if-eqz v14, :cond_1

    .line 111
    .line 112
    const v4, 0x7f0906de

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    move-object v15, v6

    .line 120
    check-cast v15, Landroid/widget/TextView;

    .line 121
    .line 122
    if-eqz v15, :cond_1

    .line 123
    .line 124
    const v4, 0x7f0906df

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    move-object/from16 v16, v6

    .line 132
    .line 133
    check-cast v16, Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v16, :cond_1

    .line 136
    .line 137
    const v4, 0x7f0906e0

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    move-object/from16 v17, v6

    .line 145
    .line 146
    check-cast v17, Landroid/widget/ImageView;

    .line 147
    .line 148
    if-eqz v17, :cond_1

    .line 149
    .line 150
    const v4, 0x7f0906e1

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    move-object/from16 v18, v6

    .line 158
    .line 159
    check-cast v18, Landroid/widget/TextView;

    .line 160
    .line 161
    if-eqz v18, :cond_1

    .line 162
    .line 163
    new-instance v7, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 164
    .line 165
    move-object v8, v1

    .line 166
    check-cast v8, Landroid/widget/FrameLayout;

    .line 167
    .line 168
    invoke-direct/range {v7 .. v18}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iget-object v3, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 176
    .line 177
    if-eqz v3, :cond_0

    .line 178
    .line 179
    invoke-direct {v2, v7, v0, v1, v3}, Lorg/wikipedia/talk/TalkTopicHolder;-><init>(Lorg/wikipedia/databinding/ActivityLoginBinding;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/talk/TalkTopicsViewModel;Lorg/wikipedia/Constants$InvokeSource;)V

    .line 180
    .line 181
    .line 182
    move-object v5, v2

    .line 183
    goto :goto_0

    .line 184
    :cond_0
    const-string v0, "invokeSource"

    .line 185
    .line 186
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v5

    .line 190
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :goto_0
    return-object v5

    .line 206
    :pswitch_0
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    const v7, 0x7f0c05f6

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const v4, 0x7f0905c0

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    move-object v9, v6

    .line 227
    check-cast v9, Lorg/wikipedia/views/WikiCardView;

    .line 228
    .line 229
    if-eqz v9, :cond_2

    .line 230
    .line 231
    const v4, 0x7f090673

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    move-object v10, v6

    .line 239
    check-cast v10, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 240
    .line 241
    if-eqz v10, :cond_2

    .line 242
    .line 243
    const v4, 0x7f090674

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    move-object v11, v6

    .line 251
    check-cast v11, Landroid/widget/FrameLayout;

    .line 252
    .line 253
    if-eqz v11, :cond_2

    .line 254
    .line 255
    const v4, 0x7f090684

    .line 256
    .line 257
    .line 258
    invoke-static {v1, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    move-object v12, v6

    .line 263
    check-cast v12, Landroid/widget/ImageView;

    .line 264
    .line 265
    if-eqz v12, :cond_2

    .line 266
    .line 267
    new-instance v7, Lretrofit2/Retrofit;

    .line 268
    .line 269
    move-object v8, v1

    .line 270
    check-cast v8, Landroid/widget/LinearLayout;

    .line 271
    .line 272
    invoke-direct/range {v7 .. v12}, Lretrofit2/Retrofit;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 273
    .line 274
    .line 275
    invoke-direct {v2, v0, v7}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lretrofit2/Retrofit;)V

    .line 276
    .line 277
    .line 278
    move-object v5, v2

    .line 279
    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :goto_1
    return-object v5

    .line 296
    nop

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
