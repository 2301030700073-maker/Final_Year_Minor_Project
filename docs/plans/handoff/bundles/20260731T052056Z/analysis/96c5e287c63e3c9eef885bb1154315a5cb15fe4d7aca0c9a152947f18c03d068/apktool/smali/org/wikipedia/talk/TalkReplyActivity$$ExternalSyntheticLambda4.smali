.class public final synthetic Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkReplyActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 13
    .line 14
    const-string v1, "learn_click"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f120981

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    sget-object v1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 38
    .line 39
    iget-object v5, v0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 40
    .line 41
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 42
    .line 43
    const-string v1, "binding"

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz v0, :cond_17

    .line 47
    .line 48
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 49
    .line 50
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 69
    .line 70
    if-eqz v0, :cond_16

    .line 71
    .line 72
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 73
    .line 74
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 75
    .line 76
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    new-instance v0, Landroid/content/Intent;

    .line 97
    .line 98
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v3, "subject"

    .line 102
    .line 103
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const-string v3, "body"

    .line 107
    .line 108
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->messagePreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 112
    .line 113
    if-eqz v0, :cond_15

    .line 114
    .line 115
    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v3, 0x2

    .line 120
    const/4 v4, 0x0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 124
    .line 125
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    iget-object v6, v6, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 130
    .line 131
    const-string/jumbo v8, "wikitext"

    .line 132
    .line 133
    .line 134
    const-string v9, "saveAttempt"

    .line 135
    .line 136
    invoke-static {v0, v6, v9, v8, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "publish_message_click"

    .line 140
    .line 141
    invoke-virtual {v5, v0, v2}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 145
    .line 146
    if-eqz v0, :cond_0

    .line 147
    .line 148
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 149
    .line 150
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 151
    .line 152
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v4}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 156
    .line 157
    .line 158
    move-object v9, v7

    .line 159
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getWikitextBody()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v7}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v1, Lorg/wikipedia/talk/TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1;

    .line 175
    .line 176
    invoke-direct {v1, v7, v4}, Lorg/wikipedia/talk/TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkReplyViewModel;I)V

    .line 177
    .line 178
    .line 179
    new-instance v6, Lcoil3/RealImageLoader$execute$2;

    .line 180
    .line 181
    const/16 v11, 0x1d

    .line 182
    .line 183
    invoke-direct/range {v6 .. v11}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v1, v10, v6, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 187
    .line 188
    .line 189
    goto/16 :goto_5

    .line 190
    .line 191
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v10

    .line 195
    :cond_1
    move-object v9, v7

    .line 196
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isNewTopic:Z

    .line 201
    .line 202
    if-eqz v0, :cond_4

    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_4

    .line 209
    .line 210
    const-string v0, "publish_error_subject"

    .line 211
    .line 212
    invoke-virtual {v5, v0, v2}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 216
    .line 217
    if-eqz v0, :cond_3

    .line 218
    .line 219
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 220
    .line 221
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 222
    .line 223
    const v2, 0x7f120964

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 234
    .line 235
    if-eqz v0, :cond_2

    .line 236
    .line 237
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 238
    .line 239
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 242
    .line 243
    .line 244
    goto/16 :goto_5

    .line 245
    .line 246
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v10

    .line 250
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v10

    .line 254
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_7

    .line 259
    .line 260
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 261
    .line 262
    if-eqz v0, :cond_6

    .line 263
    .line 264
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 265
    .line 266
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 267
    .line 268
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const v2, 0x7f120948

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 283
    .line 284
    if-eqz v0, :cond_5

    .line 285
    .line 286
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 287
    .line 288
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 289
    .line 290
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 295
    .line 296
    .line 297
    goto/16 :goto_5

    .line 298
    .line 299
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v10

    .line 303
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v10

    .line 307
    :cond_7
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 312
    .line 313
    const/4 v1, 0x1

    .line 314
    const-string v7, "message_review_next_click"

    .line 315
    .line 316
    if-eqz v0, :cond_13

    .line 317
    .line 318
    iget-boolean v0, v5, Lorg/wikipedia/talk/TalkReplyActivity;->subjectOrBodyModified:Z

    .line 319
    .line 320
    if-eqz v0, :cond_13

    .line 321
    .line 322
    invoke-virtual {v5, v4}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    new-instance v11, Landroidx/paging/HintHandler;

    .line 337
    .line 338
    invoke-direct {v11, v8}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 342
    .line 343
    const/16 v12, 0x23

    .line 344
    .line 345
    if-lt v8, v12, :cond_8

    .line 346
    .line 347
    new-instance v8, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 348
    .line 349
    invoke-direct {v8, v0, v11}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 350
    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_8
    const/16 v12, 0x1e

    .line 354
    .line 355
    if-lt v8, v12, :cond_9

    .line 356
    .line 357
    new-instance v8, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 358
    .line 359
    invoke-direct {v8, v0, v11}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 360
    .line 361
    .line 362
    goto :goto_0

    .line 363
    :cond_9
    const/16 v12, 0x1a

    .line 364
    .line 365
    if-lt v8, v12, :cond_a

    .line 366
    .line 367
    new-instance v8, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 368
    .line 369
    invoke-direct {v8, v0, v11}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 370
    .line 371
    .line 372
    goto :goto_0

    .line 373
    :cond_a
    new-instance v8, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 374
    .line 375
    invoke-direct {v8, v0, v11}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 376
    .line 377
    .line 378
    :goto_0
    invoke-virtual {v8}, Lcoil3/util/UtilsKt;->hide()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->templateManagementMode:Z

    .line 386
    .line 387
    if-eqz v0, :cond_c

    .line 388
    .line 389
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 394
    .line 395
    if-eqz v0, :cond_b

    .line 396
    .line 397
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isExampleTemplate:Z

    .line 402
    .line 403
    if-nez v0, :cond_b

    .line 404
    .line 405
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 410
    .line 411
    if-eqz v0, :cond_14

    .line 412
    .line 413
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iget-object v2, v0, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v1, v2, v9, v6, v0}, Lorg/wikipedia/talk/TalkReplyViewModel;->updateTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/talk/db/TalkTemplate;)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :cond_b
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0, v9, v6}, Lorg/wikipedia/talk/TalkReplyViewModel;->saveTemplate(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_5

    .line 432
    .line 433
    :cond_c
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 438
    .line 439
    if-eqz v0, :cond_f

    .line 440
    .line 441
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 446
    .line 447
    if-eqz v0, :cond_d

    .line 448
    .line 449
    iget-object v0, v0, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 450
    .line 451
    goto :goto_1

    .line 452
    :cond_d
    move-object v0, v10

    .line 453
    :goto_1
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_f

    .line 458
    .line 459
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 464
    .line 465
    if-eqz v0, :cond_e

    .line 466
    .line 467
    iget-object v0, v0, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 468
    .line 469
    goto :goto_2

    .line 470
    :cond_e
    move-object v0, v10

    .line 471
    :goto_2
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-eqz v0, :cond_f

    .line 476
    .line 477
    invoke-virtual {v5, v7, v2}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->showEditPreview()V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_5

    .line 484
    .line 485
    :cond_f
    new-instance v0, Lorg/wikipedia/views/TextInputDialog;

    .line 486
    .line 487
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    iget-boolean v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->isExampleTemplate:Z

    .line 492
    .line 493
    if-nez v2, :cond_10

    .line 494
    .line 495
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    iget-object v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 500
    .line 501
    if-eqz v2, :cond_10

    .line 502
    .line 503
    move v2, v1

    .line 504
    goto :goto_3

    .line 505
    :cond_10
    move v2, v4

    .line 506
    :goto_3
    const v7, 0x7f13000e

    .line 507
    .line 508
    .line 509
    invoke-direct {v0, v5, v7, v1}, Lorg/wikipedia/views/TextInputDialog;-><init>(Landroid/content/Context;II)V

    .line 510
    .line 511
    .line 512
    iget-object v7, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v7, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 515
    .line 516
    iget-object v8, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 517
    .line 518
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    const v11, 0x7f0c0188

    .line 523
    .line 524
    .line 525
    invoke-virtual {v8, v11, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    const v10, 0x7f0901b3

    .line 530
    .line 531
    .line 532
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    move-object v14, v11

    .line 537
    check-cast v14, Landroid/widget/RadioButton;

    .line 538
    .line 539
    if-eqz v14, :cond_12

    .line 540
    .line 541
    const v10, 0x7f0901b4

    .line 542
    .line 543
    .line 544
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object v11

    .line 548
    move-object v15, v11

    .line 549
    check-cast v15, Landroid/widget/RadioButton;

    .line 550
    .line 551
    if-eqz v15, :cond_12

    .line 552
    .line 553
    const v10, 0x7f090634

    .line 554
    .line 555
    .line 556
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object v11

    .line 560
    move-object/from16 v16, v11

    .line 561
    .line 562
    check-cast v16, Lorg/wikipedia/views/PlainPasteEditText;

    .line 563
    .line 564
    if-eqz v16, :cond_12

    .line 565
    .line 566
    const v10, 0x7f090635

    .line 567
    .line 568
    .line 569
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v11

    .line 573
    move-object/from16 v17, v11

    .line 574
    .line 575
    check-cast v17, Lcom/google/android/material/textfield/TextInputLayout;

    .line 576
    .line 577
    if-eqz v17, :cond_12

    .line 578
    .line 579
    new-instance v12, Lokio/internal/DefaultSocket;

    .line 580
    .line 581
    move-object v13, v8

    .line 582
    check-cast v13, Landroid/widget/ScrollView;

    .line 583
    .line 584
    const/16 v18, 0xd

    .line 585
    .line 586
    invoke-direct/range {v12 .. v18}, Lokio/internal/DefaultSocket;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v11, v16

    .line 590
    .line 591
    iput-object v12, v0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 592
    .line 593
    iput-object v13, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 594
    .line 595
    new-instance v8, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;

    .line 596
    .line 597
    invoke-direct {v8, v0, v4}, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/TextInputDialog;I)V

    .line 598
    .line 599
    .line 600
    const v10, 0x7f120974

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0, v10, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 604
    .line 605
    .line 606
    new-instance v8, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;

    .line 607
    .line 608
    invoke-direct {v8, v0, v1}, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/TextInputDialog;I)V

    .line 609
    .line 610
    .line 611
    const v1, 0x7f120983

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v1, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 615
    .line 616
    .line 617
    new-instance v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;

    .line 618
    .line 619
    invoke-direct {v1, v3, v0}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    iput-object v1, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 623
    .line 624
    new-instance v1, Landroidx/appcompat/widget/SearchView$10;

    .line 625
    .line 626
    const/16 v3, 0xb

    .line 627
    .line 628
    invoke-direct {v1, v3, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 632
    .line 633
    .line 634
    if-eqz v2, :cond_11

    .line 635
    .line 636
    goto :goto_4

    .line 637
    :cond_11
    const/16 v4, 0x8

    .line 638
    .line 639
    :goto_4
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 640
    .line 641
    .line 642
    new-instance v1, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 643
    .line 644
    const/4 v2, 0x6

    .line 645
    invoke-direct {v1, v2, v0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v15, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 649
    .line 650
    .line 651
    new-instance v3, Lokio/internal/DefaultSocket;

    .line 652
    .line 653
    const/16 v8, 0x1c

    .line 654
    .line 655
    move-object v4, v0

    .line 656
    move-object v7, v9

    .line 657
    invoke-direct/range {v3 .. v8}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 658
    .line 659
    .line 660
    iput-object v3, v4, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 661
    .line 662
    const v0, 0x7f120989

    .line 663
    .line 664
    .line 665
    invoke-virtual {v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v4}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 669
    .line 670
    .line 671
    goto :goto_5

    .line 672
    :cond_12
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    const-string v1, "Missing required view with ID: "

    .line 681
    .line 682
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    goto :goto_5

    .line 690
    :cond_13
    invoke-virtual {v5, v7, v2}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkReplyActivity;->showEditPreview()V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v5, v1}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 697
    .line 698
    .line 699
    :cond_14
    :goto_5
    return-void

    .line 700
    :cond_15
    const-string v0, "messagePreviewFragment"

    .line 701
    .line 702
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    throw v10

    .line 706
    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    throw v10

    .line 710
    :cond_17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    throw v10

    .line 714
    nop

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
