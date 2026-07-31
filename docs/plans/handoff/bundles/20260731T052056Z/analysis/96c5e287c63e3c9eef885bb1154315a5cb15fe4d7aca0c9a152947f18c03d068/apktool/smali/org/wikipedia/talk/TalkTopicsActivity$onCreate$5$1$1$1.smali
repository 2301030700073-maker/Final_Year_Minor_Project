.class public final Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState;

    .line 15
    .line 16
    instance-of v5, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$UndoEdit;

    .line 17
    .line 18
    iget-object v6, v0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$UndoEdit;

    .line 23
    .line 24
    iget-object v11, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$UndoEdit;->undoneSubject:Ljava/lang/CharSequence;

    .line 25
    .line 26
    iget-object v12, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$UndoEdit;->undoneBody:Ljava/lang/CharSequence;

    .line 27
    .line 28
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 29
    .line 30
    iget-object v0, v6, Lorg/wikipedia/talk/TalkTopicsActivity;->requestNewTopic:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 31
    .line 32
    sget-object v1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 33
    .line 34
    invoke-virtual {v6}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v7, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 39
    .line 40
    sget-object v10, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPICS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 41
    .line 42
    const/16 v19, 0x0

    .line 43
    .line 44
    const/16 v20, 0x1f80

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    const-wide/16 v14, 0x0

    .line 50
    .line 51
    const-wide/16 v16, 0x0

    .line 52
    .line 53
    const/16 v18, 0x0

    .line 54
    .line 55
    invoke-static/range {v6 .. v20}, Lorg/wikipedia/talk/UserTalkPopupHelper;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/wikipedia/talk/db/TalkTemplate;JJZZI)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1, v3}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    instance-of v0, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$DoWatch;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$DoWatch;

    .line 68
    .line 69
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$DoWatch;->message:Ljava/lang/String;

    .line 70
    .line 71
    sget v1, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 72
    .line 73
    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v6}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v3, v3, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 82
    .line 83
    invoke-virtual {v6}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-boolean v5, v5, Lorg/wikipedia/talk/TalkTopicsViewModel;->isWatched:Z

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    if-nez v5, :cond_1

    .line 96
    .line 97
    invoke-static {v6, v0, v4}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/16 v5, 0xc

    .line 102
    .line 103
    invoke-static {v6, v0, v4, v5}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v4, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;

    .line 108
    .line 109
    const/4 v5, 0x2

    .line 110
    invoke-direct {v4, v5, v1, v3}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const v1, 0x7f120a36

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    instance-of v0, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$OnError;

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$OnError;

    .line 131
    .line 132
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$OnError;->throwable:Ljava/lang/Throwable;

    .line 133
    .line 134
    invoke-static {v6, v0}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_1
    return-object v2

    .line 138
    :pswitch_0
    move-object/from16 v1, p1

    .line 139
    .line 140
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState;

    .line 141
    .line 142
    instance-of v5, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$UpdateNamespace;

    .line 143
    .line 144
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 145
    .line 146
    if-eqz v5, :cond_4

    .line 147
    .line 148
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$UpdateNamespace;

    .line 149
    .line 150
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$UpdateNamespace;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 151
    .line 152
    sget v3, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity;->setToolbarTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_b

    .line 158
    .line 159
    :cond_4
    instance-of v5, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadTopic;

    .line 160
    .line 161
    const/4 v6, 0x1

    .line 162
    const-string v7, "binding"

    .line 163
    .line 164
    const/16 v8, 0x8

    .line 165
    .line 166
    if-eqz v5, :cond_1c

    .line 167
    .line 168
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadTopic;

    .line 169
    .line 170
    iget-object v5, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadTopic;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 171
    .line 172
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadTopic;->threadItems:Ljava/util/List;

    .line 173
    .line 174
    sget v9, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 175
    .line 176
    iget-object v9, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->talkTopicItemAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 177
    .line 178
    iget-object v10, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 179
    .line 180
    if-eqz v10, :cond_1b

    .line 181
    .line 182
    iget-object v10, v10, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 185
    .line 186
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    if-nez v10, :cond_6

    .line 191
    .line 192
    iget-object v10, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 193
    .line 194
    if-eqz v10, :cond_5

    .line 195
    .line 196
    iget-object v10, v10, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 199
    .line 200
    iget-object v11, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->concatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 201
    .line 202
    iget-object v12, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->headerAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 203
    .line 204
    invoke-virtual {v11, v4, v12}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v11, v6, v9}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v3

    .line 218
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    const-string v11, "goToTopic"

    .line 223
    .line 224
    invoke-virtual {v10, v11, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_11

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v10, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    iget-object v10, v5, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 238
    .line 239
    if-eqz v10, :cond_d

    .line 240
    .line 241
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-nez v10, :cond_7

    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    move-object v11, v3

    .line 254
    move-object v12, v11

    .line 255
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-eqz v13, :cond_e

    .line 260
    .line 261
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    check-cast v13, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 266
    .line 267
    if-nez v11, :cond_c

    .line 268
    .line 269
    sget-object v14, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 270
    .line 271
    iget-object v14, v13, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v14}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v14

    .line 281
    invoke-static {v14}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    iget-object v15, v5, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    if-nez v14, :cond_b

    .line 292
    .line 293
    iget-object v14, v13, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 294
    .line 295
    iget-object v15, v5, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v14

    .line 301
    if-eqz v14, :cond_8

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_8
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    iget-object v12, v12, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 311
    .line 312
    invoke-static {v12}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    :goto_4
    invoke-virtual {v12}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v14

    .line 320
    if-eqz v14, :cond_a

    .line 321
    .line 322
    invoke-virtual {v12}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v14

    .line 326
    move-object v15, v14

    .line 327
    check-cast v15, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 328
    .line 329
    iget-object v15, v15, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 330
    .line 331
    iget-object v6, v5, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_9

    .line 338
    .line 339
    move-object v12, v14

    .line 340
    goto :goto_5

    .line 341
    :cond_9
    const/4 v6, 0x1

    .line 342
    goto :goto_4

    .line 343
    :cond_a
    move-object v12, v3

    .line 344
    :goto_5
    if-eqz v12, :cond_c

    .line 345
    .line 346
    :cond_b
    :goto_6
    move-object v11, v13

    .line 347
    :cond_c
    const/4 v6, 0x1

    .line 348
    goto :goto_3

    .line 349
    :cond_d
    :goto_7
    move-object v11, v3

    .line 350
    move-object v12, v11

    .line 351
    :cond_e
    if-eqz v11, :cond_11

    .line 352
    .line 353
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->requestGoToTopic:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 354
    .line 355
    iget-object v6, v11, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 356
    .line 357
    iget-object v7, v11, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 358
    .line 359
    check-cast v12, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 360
    .line 361
    if-eqz v12, :cond_f

    .line 362
    .line 363
    iget-object v8, v12, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_f
    move-object v8, v3

    .line 367
    :goto_8
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    iget-object v9, v9, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v10, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 374
    .line 375
    const-string v11, "invokeSource"

    .line 376
    .line 377
    if-eqz v10, :cond_10

    .line 378
    .line 379
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    new-instance v12, Landroid/content/Intent;

    .line 386
    .line 387
    const-class v13, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 388
    .line 389
    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .line 391
    .line 392
    const-string v13, "title"

    .line 393
    .line 394
    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    const-string/jumbo v12, "topicName"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    const-string/jumbo v6, "topicId"

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    const-string v6, "replyId"

    .line 413
    .line 414
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    const-string v6, "searchQuery"

    .line 419
    .line 420
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v5, v3}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_b

    .line 438
    .line 439
    :cond_10
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v3

    .line 443
    :cond_11
    iput-boolean v4, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->goToTopic:Z

    .line 444
    .line 445
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_12

    .line 450
    .line 451
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->updateOnEmpty()V

    .line 452
    .line 453
    .line 454
    goto :goto_a

    .line 455
    :cond_12
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 456
    .line 457
    if-eqz v1, :cond_1a

    .line 458
    .line 459
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 462
    .line 463
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 464
    .line 465
    .line 466
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 467
    .line 468
    if-eqz v1, :cond_19

    .line 469
    .line 470
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v1, Landroid/widget/FrameLayout;

    .line 473
    .line 474
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 478
    .line 479
    iget-object v6, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 480
    .line 481
    if-eqz v1, :cond_14

    .line 482
    .line 483
    if-eqz v6, :cond_13

    .line 484
    .line 485
    iget-object v1, v6, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 488
    .line 489
    const/4 v4, 0x1

    .line 490
    invoke-virtual {v1, v4}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    .line 491
    .line 492
    .line 493
    goto :goto_9

    .line 494
    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v3

    .line 498
    :cond_14
    if-eqz v6, :cond_18

    .line 499
    .line 500
    iget-object v1, v6, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 503
    .line 504
    invoke-virtual {v1, v4}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    .line 505
    .line 506
    .line 507
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 508
    .line 509
    if-eqz v1, :cond_17

    .line 510
    .line 511
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 514
    .line 515
    const/4 v4, 0x1

    .line 516
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 517
    .line 518
    .line 519
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 520
    .line 521
    if-eqz v1, :cond_16

    .line 522
    .line 523
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 526
    .line 527
    const/high16 v4, 0x3f800000    # 1.0f

    .line 528
    .line 529
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 530
    .line 531
    .line 532
    :goto_9
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 533
    .line 534
    .line 535
    :goto_a
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 536
    .line 537
    if-eqz v1, :cond_15

    .line 538
    .line 539
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v1, Landroid/widget/ProgressBar;

    .line 542
    .line 543
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v5}, Lorg/wikipedia/talk/TalkTopicsActivity;->setToolbarTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_b

    .line 553
    .line 554
    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v3

    .line 558
    :cond_16
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw v3

    .line 562
    :cond_17
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v3

    .line 566
    :cond_18
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v3

    .line 570
    :cond_19
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw v3

    .line 574
    :cond_1a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v3

    .line 578
    :cond_1b
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v3

    .line 582
    :cond_1c
    instance-of v5, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadError;

    .line 583
    .line 584
    if-eqz v5, :cond_25

    .line 585
    .line 586
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadError;

    .line 587
    .line 588
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadError;->throwable:Ljava/lang/Throwable;

    .line 589
    .line 590
    sget v5, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 591
    .line 592
    iget-object v5, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 593
    .line 594
    if-eqz v5, :cond_24

    .line 595
    .line 596
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v5, Landroid/widget/ProgressBar;

    .line 599
    .line 600
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 601
    .line 602
    .line 603
    iget-object v5, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 604
    .line 605
    if-eqz v5, :cond_23

    .line 606
    .line 607
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 610
    .line 611
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    if-eqz v5, :cond_1d

    .line 616
    .line 617
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 618
    .line 619
    .line 620
    :cond_1d
    instance-of v5, v1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 621
    .line 622
    if-eqz v5, :cond_1e

    .line 623
    .line 624
    move-object v5, v1

    .line 625
    check-cast v5, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 626
    .line 627
    iget v5, v5, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 628
    .line 629
    const/16 v6, 0x194

    .line 630
    .line 631
    if-ne v5, v6, :cond_1e

    .line 632
    .line 633
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->updateOnEmpty()V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 637
    .line 638
    .line 639
    goto :goto_b

    .line 640
    :cond_1e
    iget-object v5, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 641
    .line 642
    if-eqz v5, :cond_22

    .line 643
    .line 644
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 645
    .line 646
    check-cast v5, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 647
    .line 648
    const/4 v6, 0x1

    .line 649
    invoke-virtual {v5, v6}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    .line 650
    .line 651
    .line 652
    iget-object v5, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 653
    .line 654
    if-eqz v5, :cond_21

    .line 655
    .line 656
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 657
    .line 658
    check-cast v5, Landroid/widget/FrameLayout;

    .line 659
    .line 660
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 661
    .line 662
    .line 663
    iget-object v5, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 664
    .line 665
    if-eqz v5, :cond_20

    .line 666
    .line 667
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 670
    .line 671
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 672
    .line 673
    .line 674
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 675
    .line 676
    if-eqz v0, :cond_1f

    .line 677
    .line 678
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 681
    .line 682
    invoke-virtual {v0, v1, v3}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 683
    .line 684
    .line 685
    goto :goto_b

    .line 686
    :cond_1f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    throw v3

    .line 690
    :cond_20
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    throw v3

    .line 694
    :cond_21
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    throw v3

    .line 698
    :cond_22
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    throw v3

    .line 702
    :cond_23
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    throw v3

    .line 706
    :cond_24
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    throw v3

    .line 710
    :cond_25
    :goto_b
    return-object v2

    .line 711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
