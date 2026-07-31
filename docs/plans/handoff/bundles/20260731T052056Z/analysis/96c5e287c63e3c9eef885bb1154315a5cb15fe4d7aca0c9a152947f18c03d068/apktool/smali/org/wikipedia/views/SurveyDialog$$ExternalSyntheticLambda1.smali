.class public final synthetic Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    iget-object v8, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v9, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 21
    .line 22
    check-cast v9, Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    check-cast v8, Landroidx/appcompat/app/AlertDialog;

    .line 25
    .line 26
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 27
    .line 28
    check-cast v1, Landroid/widget/RadioGroup;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const v5, 0x7f0904a2

    .line 35
    .line 36
    .line 37
    if-ne v1, v5, :cond_1

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    :cond_0
    :goto_0
    move-object v2, v7

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const v4, 0x7f0904a0

    .line 46
    .line 47
    .line 48
    if-ne v1, v4, :cond_2

    .line 49
    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const v4, 0x7f09049f

    .line 56
    .line 57
    .line 58
    if-ne v1, v4, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x3

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const v4, 0x7f0904a1

    .line 67
    .line 68
    .line 69
    if-ne v1, v4, :cond_4

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const v3, 0x7f0904a3

    .line 77
    .line 78
    .line 79
    if-ne v1, v3, :cond_0

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    goto :goto_0

    .line 86
    :goto_1
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 87
    .line 88
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const-string v5, "feedback_choice"

    .line 99
    .line 100
    const/16 v1, 0x8e

    .line 101
    .line 102
    const-string v3, "feedback_submit_click"

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f120929

    .line 109
    .line 110
    .line 111
    invoke-static {v9, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_0
    check-cast v0, Lorg/wikipedia/views/NotificationActionsOverflowView;

    .line 119
    .line 120
    check-cast v9, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 121
    .line 122
    check-cast v8, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 123
    .line 124
    iget-object v1, v0, Lorg/wikipedia/views/NotificationActionsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 125
    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 129
    .line 130
    .line 131
    :cond_5
    iput-object v7, v0, Lorg/wikipedia/views/NotificationActionsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 132
    .line 133
    iget-object v0, v8, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-ne v0, v4, :cond_6

    .line 142
    .line 143
    move v5, v4

    .line 144
    :cond_6
    iget-object v0, v9, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 147
    .line 148
    iget-object v1, v9, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    .line 151
    .line 152
    invoke-static {v8}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    xor-int/2addr v4, v5

    .line 157
    iget v1, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->itemPosition:I

    .line 158
    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v0, v2, v4, v1, v3}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems$default(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;ZLjava/lang/Integer;I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_1
    check-cast v0, Landroid/net/Uri;

    .line 168
    .line 169
    check-cast v9, Lorg/wikipedia/views/NotificationActionsOverflowView;

    .line 170
    .line 171
    check-cast v8, Lorg/wikipedia/page/PageTitle;

    .line 172
    .line 173
    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->isAppSupportedLink(Landroid/net/Uri;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_7

    .line 178
    .line 179
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sget v1, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 184
    .line 185
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

    .line 193
    .line 194
    invoke-static {v1, v8, v2}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_7
    iget-object v1, v9, Lorg/wikipedia/views/NotificationActionsOverflowView;->linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 203
    .line 204
    if-eqz v1, :cond_8

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Lorg/wikipedia/notifications/NotificationLinkHandler;->onExternalLinkClicked(Landroid/net/Uri;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    return-void

    .line 210
    :cond_8
    const-string v0, "linkHandler"

    .line 211
    .line 212
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v7

    .line 216
    :pswitch_2
    check-cast v0, Lorg/wikipedia/views/CustomDatePicker;

    .line 217
    .line 218
    check-cast v9, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;

    .line 219
    .line 220
    check-cast v8, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 221
    .line 222
    iget-object v1, v0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 223
    .line 224
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    add-int/2addr v3, v4

    .line 229
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 230
    .line 231
    .line 232
    iget-object v2, v0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    .line 233
    .line 234
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    add-int/2addr v3, v4

    .line 243
    const/16 v4, 0x7e0

    .line 244
    .line 245
    invoke-virtual {v2, v4, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lorg/wikipedia/views/CustomDatePicker;->setDayString()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->getItemCount()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v8, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_3
    move-object v10, v0

    .line 260
    check-cast v10, Ljava/util/ArrayList;

    .line 261
    .line 262
    move-object v11, v9

    .line 263
    check-cast v11, Landroidx/appcompat/app/AppCompatActivity;

    .line 264
    .line 265
    move-object v12, v8

    .line 266
    check-cast v12, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 267
    .line 268
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 273
    .line 274
    new-instance v9, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 275
    .line 276
    const/4 v14, 0x2

    .line 277
    const/4 v13, 0x0

    .line 278
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;-><init>(Ljava/util/ArrayList;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v1, v13, v9, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :pswitch_4
    move-object v15, v0

    .line 286
    check-cast v15, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 287
    .line 288
    move-object/from16 v16, v9

    .line 289
    .line 290
    check-cast v16, Landroidx/appcompat/app/AppCompatActivity;

    .line 291
    .line 292
    move-object/from16 v17, v8

    .line 293
    .line 294
    check-cast v17, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 295
    .line 296
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 301
    .line 302
    new-instance v14, Lcoil3/RealImageLoader$execute$2;

    .line 303
    .line 304
    const/16 v19, 0x16

    .line 305
    .line 306
    const/16 v18, 0x0

    .line 307
    .line 308
    invoke-direct/range {v14 .. v19}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 309
    .line 310
    .line 311
    move-object/from16 v2, v18

    .line 312
    .line 313
    invoke-static {v0, v1, v2, v14, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :pswitch_5
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 318
    .line 319
    move-object v12, v9

    .line 320
    check-cast v12, Ljava/lang/String;

    .line 321
    .line 322
    move-object v13, v8

    .line 323
    check-cast v13, Ljava/lang/String;

    .line 324
    .line 325
    sget v1, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 326
    .line 327
    new-instance v10, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    move-object v11, v1

    .line 337
    check-cast v11, Landroid/app/Activity;

    .line 338
    .line 339
    iget-object v14, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 340
    .line 341
    if-eqz v14, :cond_9

    .line 342
    .line 343
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    check-cast v1, Lorg/wikipedia/media/AvPlayer;

    .line 349
    .line 350
    iget-object v1, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 353
    .line 354
    iget-object v15, v1, Lorg/wikipedia/descriptions/DescriptionEditFragment;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 355
    .line 356
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 357
    .line 358
    const/16 v2, 0xd

    .line 359
    .line 360
    invoke-direct {v1, v2, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v16, v1

    .line 364
    .line 365
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :cond_9
    const-string v0, "pageTitle"

    .line 373
    .line 374
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v7

    .line 378
    :pswitch_6
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 379
    .line 380
    check-cast v9, Landroidx/appcompat/app/AppCompatActivity;

    .line 381
    .line 382
    check-cast v8, Lorg/wikipedia/Constants$InvokeSource;

    .line 383
    .line 384
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    move-object/from16 v1, p1

    .line 388
    .line 389
    check-cast v1, Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v11

    .line 399
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    .line 402
    .line 403
    if-eqz v0, :cond_a

    .line 404
    .line 405
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 406
    .line 407
    .line 408
    :cond_a
    const v0, 0x7f120924

    .line 409
    .line 410
    .line 411
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_b

    .line 420
    .line 421
    invoke-static {v9, v8}, Lokio/Okio__JvmOkioKt;->showFeedbackSnackbarAndTooltip(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/Constants$InvokeSource;)V

    .line 422
    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_b
    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const v1, 0x7f0c017b

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 437
    .line 438
    new-instance v12, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 439
    .line 440
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 441
    .line 442
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v16

    .line 446
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 447
    .line 448
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v17

    .line 452
    const-string v18, "app_patroller_experience"

    .line 453
    .line 454
    const-string v13, "impression"

    .line 455
    .line 456
    const-string v14, "feedback_input_form"

    .line 457
    .line 458
    const-string v15, ""

    .line 459
    .line 460
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-static {v12}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 464
    .line 465
    .line 466
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 467
    .line 468
    invoke-direct {v1, v9, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 469
    .line 470
    .line 471
    const v2, 0x7f120544

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 475
    .line 476
    .line 477
    iget-object v2, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 480
    .line 481
    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 482
    .line 483
    new-instance v2, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;

    .line 484
    .line 485
    invoke-direct {v2, v0, v9, v8, v5}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 486
    .line 487
    .line 488
    const v0, 0x7f120928

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 495
    .line 496
    .line 497
    :goto_3
    const/16 v18, 0x0

    .line 498
    .line 499
    const/16 v19, 0x3fd

    .line 500
    .line 501
    const/4 v10, 0x0

    .line 502
    const/4 v12, 0x0

    .line 503
    const/4 v13, 0x0

    .line 504
    const/4 v14, 0x0

    .line 505
    const/4 v15, 0x0

    .line 506
    const/16 v16, 0x0

    .line 507
    .line 508
    const/16 v17, 0x0

    .line 509
    .line 510
    invoke-static/range {v10 .. v19}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    const-string v1, "feedback_selection"

    .line 515
    .line 516
    const-string v2, "feedback_form"

    .line 517
    .line 518
    invoke-static {v1, v2, v0}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    nop

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
