.class public final synthetic Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

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
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const-string v5, "saveFailure"

    .line 10
    .line 11
    const-string v6, "pt_edit"

    .line 12
    .line 13
    const-string v7, "other"

    .line 14
    .line 15
    const/4 v8, 0x3

    .line 16
    const/16 v9, 0xc

    .line 17
    .line 18
    const/4 v10, 0x2

    .line 19
    const/16 v11, 0x8

    .line 20
    .line 21
    const/4 v12, 0x1

    .line 22
    const/4 v13, 0x0

    .line 23
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 26
    .line 27
    const/4 v15, 0x0

    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    move-object/from16 v1, p1

    .line 32
    .line 33
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 44
    .line 45
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v3, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v7}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setLoadingState()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 74
    .line 75
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lorg/wikipedia/edit/Edit;

    .line 78
    .line 79
    iget-object v3, v1, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-wide v3, v3, Lorg/wikipedia/edit/Edit$Result;->newRevId:J

    .line 85
    .line 86
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    new-instance v7, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 91
    .line 92
    invoke-direct {v7, v2, v8}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 93
    .line 94
    .line 95
    new-instance v16, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 96
    .line 97
    const/16 v22, 0x0

    .line 98
    .line 99
    const-wide/16 v20, -0x1

    .line 100
    .line 101
    move-object/from16 v17, v2

    .line 102
    .line 103
    move-wide/from16 v18, v3

    .line 104
    .line 105
    invoke-direct/range {v16 .. v22}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    move-object/from16 v2, v16

    .line 109
    .line 110
    invoke-static {v5, v7, v13, v2, v10}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 111
    .line 112
    .line 113
    iget-object v1, v1, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 114
    .line 115
    iget-wide v1, v1, Lorg/wikipedia/edit/Edit$Result;->newRevId:J

    .line 116
    .line 117
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    const/16 v24, 0x0

    .line 122
    .line 123
    const/16 v25, 0x3fe

    .line 124
    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    const/16 v18, 0x0

    .line 128
    .line 129
    const/16 v19, 0x0

    .line 130
    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    const/16 v21, 0x0

    .line 134
    .line 135
    const/16 v23, 0x0

    .line 136
    .line 137
    invoke-static/range {v16 .. v25}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const-string/jumbo v2, "undo_success"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2, v6, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const v2, 0x7f1205a6

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v2, v15, v9}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;

    .line 166
    .line 167
    invoke-direct {v2, v0, v15}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 171
    .line 172
    .line 173
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    .line 192
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;->publish()V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_0
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 197
    .line 198
    if-eqz v2, :cond_1

    .line 199
    .line 200
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 201
    .line 202
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    iget-object v3, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 207
    .line 208
    invoke-static {v2, v3, v5, v7, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 209
    .line 210
    .line 211
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 212
    .line 213
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    :cond_1
    :goto_0
    return-object v14

    .line 226
    :pswitch_0
    move-object/from16 v1, p1

    .line 227
    .line 228
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 234
    .line 235
    if-eqz v2, :cond_3

    .line 236
    .line 237
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 238
    .line 239
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v1, Lkotlin/Pair;

    .line 242
    .line 243
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v1, Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v0, v15}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->updateWatchButton(Z)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    iget-boolean v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 255
    .line 256
    const-string v3, "pt_watchlist"

    .line 257
    .line 258
    if-nez v2, :cond_2

    .line 259
    .line 260
    const-string/jumbo v2, "unwatch_success_toast"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2, v3, v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v2, v1, v15, v9}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;

    .line 275
    .line 276
    invoke-direct {v2, v0, v8}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 280
    .line 281
    .line 282
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-boolean v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 301
    .line 302
    if-eqz v2, :cond_4

    .line 303
    .line 304
    const-string/jumbo v2, "watch_success_toast"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v2, v3, v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {v2, v1, v15, v9}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 319
    .line 320
    const/16 v3, 0xb

    .line 321
    .line 322
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 323
    .line 324
    .line 325
    const v3, 0x7f120a36

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;

    .line 332
    .line 333
    const/4 v3, 0x4

    .line 334
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 338
    .line 339
    .line 340
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 351
    .line 352
    .line 353
    goto :goto_1

    .line 354
    :cond_3
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 355
    .line 356
    if-eqz v2, :cond_4

    .line 357
    .line 358
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 359
    .line 360
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setErrorState(Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 370
    .line 371
    .line 372
    return-object v14

    .line 373
    :pswitch_1
    move-object/from16 v1, p1

    .line 374
    .line 375
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 381
    .line 382
    if-eqz v2, :cond_6

    .line 383
    .line 384
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankIcon:Landroid/widget/ImageView;

    .line 390
    .line 391
    const v2, 0x7f080175

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    .line 396
    .line 397
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankButton:Landroid/widget/FrameLayout;

    .line 403
    .line 404
    invoke-virtual {v1, v15}, Landroid/view/View;->setEnabled(Z)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    iget-object v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 416
    .line 417
    if-eqz v2, :cond_5

    .line 418
    .line 419
    iget-object v13, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 420
    .line 421
    :cond_5
    new-array v2, v12, [Ljava/lang/Object;

    .line 422
    .line 423
    aput-object v13, v2, v15

    .line 424
    .line 425
    const v3, 0x7f1209b8

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-static {v1, v2, v15, v9}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;

    .line 440
    .line 441
    invoke-direct {v2, v0, v10}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 458
    .line 459
    .line 460
    const-string v1, "thank_success"

    .line 461
    .line 462
    const-string v2, "pt_thank"

    .line 463
    .line 464
    invoke-virtual {v0, v1, v2, v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto :goto_2

    .line 468
    :cond_6
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 469
    .line 470
    if-eqz v2, :cond_7

    .line 471
    .line 472
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 473
    .line 474
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 475
    .line 476
    invoke-virtual {v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setErrorState(Ljava/lang/Throwable;)V

    .line 477
    .line 478
    .line 479
    :cond_7
    :goto_2
    return-object v14

    .line 480
    :pswitch_2
    move-object/from16 v1, p1

    .line 481
    .line 482
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 483
    .line 484
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 485
    .line 486
    if-eqz v2, :cond_8

    .line 487
    .line 488
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 489
    .line 490
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 494
    .line 495
    new-instance v3, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 496
    .line 497
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 502
    .line 503
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v1, Lorg/wikipedia/dataclient/restbase/Revision;

    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    new-instance v5, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;

    .line 511
    .line 512
    invoke-direct {v5}, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;-><init>()V

    .line 513
    .line 514
    .line 515
    new-instance v6, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;

    .line 516
    .line 517
    iget-object v1, v1, Lorg/wikipedia/dataclient/restbase/Revision;->source:Ljava/lang/String;

    .line 518
    .line 519
    invoke-static {v5}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-direct {v6, v1, v5}, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 524
    .line 525
    .line 526
    new-instance v1, Lorg/wikipedia/diff/DiffUtil$DiffLine;

    .line 527
    .line 528
    invoke-direct {v1, v4, v6}, Lorg/wikipedia/diff/DiffUtil$DiffLine;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;)V

    .line 529
    .line 530
    .line 531
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-direct {v3, v1}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(Ljava/util/List;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 539
    .line 540
    .line 541
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 542
    .line 543
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 547
    .line 548
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 549
    .line 550
    .line 551
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 557
    .line 558
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .line 560
    .line 561
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 567
    .line 568
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 569
    .line 570
    .line 571
    goto :goto_3

    .line 572
    :cond_8
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 573
    .line 574
    if-eqz v2, :cond_9

    .line 575
    .line 576
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 577
    .line 578
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 579
    .line 580
    invoke-virtual {v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setErrorState(Ljava/lang/Throwable;)V

    .line 581
    .line 582
    .line 583
    :cond_9
    :goto_3
    return-object v14

    .line 584
    :pswitch_3
    move-object/from16 v1, p1

    .line 585
    .line 586
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 587
    .line 588
    instance-of v4, v1, Lorg/wikipedia/util/Resource$Success;

    .line 589
    .line 590
    if-eqz v4, :cond_18

    .line 591
    .line 592
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    iget-object v4, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 597
    .line 598
    iget-object v5, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 599
    .line 600
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    if-eqz v4, :cond_a

    .line 604
    .line 605
    iget v4, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 606
    .line 607
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    iget v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 613
    .line 614
    sub-int/2addr v4, v1

    .line 615
    goto :goto_4

    .line 616
    :cond_a
    iget v4, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->size:I

    .line 617
    .line 618
    :goto_4
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffCharacterCountView:Landroid/widget/TextView;

    .line 624
    .line 625
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 626
    .line 627
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-static {v5, v4}, Lorg/wikipedia/util/StringUtil;->getDiffBytesText(Landroid/content/Context;I)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .line 637
    .line 638
    if-ltz v4, :cond_e

    .line 639
    .line 640
    if-lez v4, :cond_b

    .line 641
    .line 642
    const v1, 0x7f0405d1

    .line 643
    .line 644
    .line 645
    goto :goto_5

    .line 646
    :cond_b
    const v1, 0x7f04054f

    .line 647
    .line 648
    .line 649
    :goto_5
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 650
    .line 651
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffCharacterCountView:Landroid/widget/TextView;

    .line 655
    .line 656
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 657
    .line 658
    .line 659
    move-result-object v5

    .line 660
    new-instance v6, Landroid/util/TypedValue;

    .line 661
    .line 662
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    invoke-virtual {v5, v1, v6, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 670
    .line 671
    .line 672
    move-result v5

    .line 673
    if-eqz v5, :cond_c

    .line 674
    .line 675
    goto :goto_6

    .line 676
    :cond_c
    move-object v6, v13

    .line 677
    :goto_6
    if-eqz v6, :cond_d

    .line 678
    .line 679
    iget v1, v6, Landroid/util/TypedValue;->data:I

    .line 680
    .line 681
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    .line 683
    .line 684
    goto :goto_8

    .line 685
    :cond_d
    const-string v0, "Attribute not found; ID="

    .line 686
    .line 687
    invoke-static {v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_e

    .line 695
    .line 696
    :cond_e
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 697
    .line 698
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffCharacterCountView:Landroid/widget/TextView;

    .line 702
    .line 703
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    new-instance v5, Landroid/util/TypedValue;

    .line 708
    .line 709
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    const v6, 0x7f0401c3

    .line 717
    .line 718
    .line 719
    invoke-virtual {v4, v6, v5, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    if-eqz v4, :cond_f

    .line 724
    .line 725
    goto :goto_7

    .line 726
    :cond_f
    move-object v5, v13

    .line 727
    :goto_7
    if-eqz v5, :cond_17

    .line 728
    .line 729
    iget v4, v5, Landroid/util/TypedValue;->data:I

    .line 730
    .line 731
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    .line 733
    .line 734
    :goto_8
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->openQualityAndIntentFiltersPage:Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 735
    .line 736
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 737
    .line 738
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    .line 740
    .line 741
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->articleTitleView:Landroid/widget/TextView;

    .line 742
    .line 743
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 744
    .line 745
    .line 746
    move-result-object v5

    .line 747
    iget-object v5, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 748
    .line 749
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 754
    .line 755
    .line 756
    move-result-object v5

    .line 757
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 761
    .line 762
    .line 763
    move-result-object v4

    .line 764
    iget-object v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 765
    .line 766
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 767
    .line 768
    if-eqz v4, :cond_10

    .line 769
    .line 770
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    iget-object v4, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameFromButton:Lcom/google/android/material/button/MaterialButton;

    .line 774
    .line 775
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    iget-object v5, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 780
    .line 781
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    iget-object v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 785
    .line 786
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    .line 788
    .line 789
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 790
    .line 791
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromTimestamp:Landroid/widget/TextView;

    .line 795
    .line 796
    sget-object v5, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 797
    .line 798
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 799
    .line 800
    .line 801
    move-result-object v5

    .line 802
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 803
    .line 804
    .line 805
    move-result-object v6

    .line 806
    iget-object v6, v6, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 807
    .line 808
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 812
    .line 813
    invoke-static {v5, v6}, Lorg/wikipedia/util/DateUtil;->getTimeAndDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    .line 819
    .line 820
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 821
    .line 822
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromEditComment:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 826
    .line 827
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 828
    .line 829
    .line 830
    move-result-object v5

    .line 831
    iget-object v5, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 832
    .line 833
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    .line 835
    .line 836
    iget-object v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parsedcomment:Ljava/lang/String;

    .line 837
    .line 838
    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    .line 852
    .line 853
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 854
    .line 855
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromTimestamp:Landroid/widget/TextView;

    .line 859
    .line 860
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 861
    .line 862
    .line 863
    move-result-object v5

    .line 864
    const v6, 0x7f040520

    .line 865
    .line 866
    .line 867
    invoke-static {v5, v6}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 868
    .line 869
    .line 870
    move-result v5

    .line 871
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 872
    .line 873
    .line 874
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 875
    .line 876
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    .line 878
    .line 879
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->overlayRevisionFromTimestamp:Landroid/widget/TextView;

    .line 880
    .line 881
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 882
    .line 883
    .line 884
    move-result-object v5

    .line 885
    invoke-static {v5, v6}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 886
    .line 887
    .line 888
    move-result v5

    .line 889
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 890
    .line 891
    .line 892
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 893
    .line 894
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameFromButton:Lcom/google/android/material/button/MaterialButton;

    .line 898
    .line 899
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 900
    .line 901
    .line 902
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 903
    .line 904
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromEditComment:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 908
    .line 909
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 910
    .line 911
    .line 912
    goto :goto_9

    .line 913
    :cond_10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    .line 915
    .line 916
    iget-object v4, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameFromButton:Lcom/google/android/material/button/MaterialButton;

    .line 917
    .line 918
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 919
    .line 920
    .line 921
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 922
    .line 923
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 924
    .line 925
    .line 926
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromEditComment:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 927
    .line 928
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 929
    .line 930
    .line 931
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 932
    .line 933
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    .line 935
    .line 936
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromTimestamp:Landroid/widget/TextView;

    .line 937
    .line 938
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    const v6, 0x7f0404fb

    .line 943
    .line 944
    .line 945
    invoke-static {v5, v6}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 946
    .line 947
    .line 948
    move-result v5

    .line 949
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    .line 951
    .line 952
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 953
    .line 954
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->overlayRevisionFromTimestamp:Landroid/widget/TextView;

    .line 958
    .line 959
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 960
    .line 961
    .line 962
    move-result-object v5

    .line 963
    invoke-static {v5, v6}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 964
    .line 965
    .line 966
    move-result v5

    .line 967
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 968
    .line 969
    .line 970
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 971
    .line 972
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromTimestamp:Landroid/widget/TextView;

    .line 976
    .line 977
    const v5, 0x7f120836

    .line 978
    .line 979
    .line 980
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v5

    .line 984
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    .line 986
    .line 987
    :goto_9
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 988
    .line 989
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    .line 991
    .line 992
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->overlayRevisionFromTimestamp:Landroid/widget/TextView;

    .line 993
    .line 994
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 995
    .line 996
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 997
    .line 998
    .line 999
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionFromTimestamp:Landroid/widget/TextView;

    .line 1000
    .line 1001
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v5

    .line 1005
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1009
    .line 1010
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    .line 1012
    .line 1013
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresDamagingButton:Lcom/google/android/material/button/MaterialButton;

    .line 1014
    .line 1015
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    .line 1017
    .line 1018
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1019
    .line 1020
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresGoodFaithButton:Lcom/google/android/material/button/MaterialButton;

    .line 1024
    .line 1025
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v4

    .line 1032
    iget-object v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 1033
    .line 1034
    if-eqz v4, :cond_14

    .line 1035
    .line 1036
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1037
    .line 1038
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameToButton:Lcom/google/android/material/button/MaterialButton;

    .line 1042
    .line 1043
    iget-object v6, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 1044
    .line 1045
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    .line 1047
    .line 1048
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1049
    .line 1050
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1051
    .line 1052
    .line 1053
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionToTimestamp:Landroid/widget/TextView;

    .line 1054
    .line 1055
    sget-object v6, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1056
    .line 1057
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v6

    .line 1061
    iget-object v7, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 1062
    .line 1063
    invoke-static {v6, v7}, Lorg/wikipedia/util/DateUtil;->getTimeAndDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v6

    .line 1067
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    .line 1069
    .line 1070
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1071
    .line 1072
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1073
    .line 1074
    .line 1075
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->overlayRevisionToTimestamp:Landroid/widget/TextView;

    .line 1076
    .line 1077
    iget-object v6, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1078
    .line 1079
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1080
    .line 1081
    .line 1082
    iget-object v6, v6, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionToTimestamp:Landroid/widget/TextView;

    .line 1083
    .line 1084
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v6

    .line 1088
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    .line 1090
    .line 1091
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1092
    .line 1093
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionToEditComment:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 1097
    .line 1098
    iget-object v6, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parsedcomment:Ljava/lang/String;

    .line 1099
    .line 1100
    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v6

    .line 1104
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v6

    .line 1108
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v6

    .line 1112
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getOres()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v5

    .line 1119
    if-eqz v5, :cond_14

    .line 1120
    .line 1121
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v5

    .line 1125
    iget-boolean v5, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 1126
    .line 1127
    if-eqz v5, :cond_14

    .line 1128
    .line 1129
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1130
    .line 1131
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    .line 1133
    .line 1134
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresDamagingButton:Lcom/google/android/material/button/MaterialButton;

    .line 1135
    .line 1136
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    .line 1138
    .line 1139
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1140
    .line 1141
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1142
    .line 1143
    .line 1144
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresDamagingButton:Lcom/google/android/material/button/MaterialButton;

    .line 1145
    .line 1146
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getOres()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v6

    .line 1150
    const/4 v7, 0x0

    .line 1151
    if-eqz v6, :cond_11

    .line 1152
    .line 1153
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;->damaging:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;

    .line 1154
    .line 1155
    if-eqz v6, :cond_11

    .line 1156
    .line 1157
    iget v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->trueProb:F

    .line 1158
    .line 1159
    goto :goto_a

    .line 1160
    :cond_11
    move v6, v7

    .line 1161
    :goto_a
    const/high16 v8, 0x42c80000    # 100.0f

    .line 1162
    .line 1163
    mul-float/2addr v6, v8

    .line 1164
    float-to-int v6, v6

    .line 1165
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    const-string v6, "%"

    .line 1174
    .line 1175
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v9

    .line 1182
    new-array v10, v12, [Ljava/lang/Object;

    .line 1183
    .line 1184
    aput-object v9, v10, v15

    .line 1185
    .line 1186
    const v9, 0x7f12019a

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v0, v9, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v9

    .line 1193
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    .line 1195
    .line 1196
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1197
    .line 1198
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1199
    .line 1200
    .line 1201
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresDamagingButton:Lcom/google/android/material/button/MaterialButton;

    .line 1202
    .line 1203
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    .line 1205
    .line 1206
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1207
    .line 1208
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1209
    .line 1210
    .line 1211
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresGoodFaithButton:Lcom/google/android/material/button/MaterialButton;

    .line 1212
    .line 1213
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    .line 1215
    .line 1216
    iget-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1217
    .line 1218
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresGoodFaithButton:Lcom/google/android/material/button/MaterialButton;

    .line 1222
    .line 1223
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getOres()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v4

    .line 1227
    if-eqz v4, :cond_12

    .line 1228
    .line 1229
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;->goodfaith:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;

    .line 1230
    .line 1231
    if-eqz v4, :cond_12

    .line 1232
    .line 1233
    iget v7, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->trueProb:F

    .line 1234
    .line 1235
    :cond_12
    mul-float/2addr v7, v8

    .line 1236
    float-to-int v4, v7

    .line 1237
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    new-array v6, v12, [Ljava/lang/Object;

    .line 1253
    .line 1254
    aput-object v4, v6, v15

    .line 1255
    .line 1256
    const v4, 0x7f12019e

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v4

    .line 1263
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    .line 1265
    .line 1266
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1267
    .line 1268
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1269
    .line 1270
    .line 1271
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresGoodFaithButton:Lcom/google/android/material/button/MaterialButton;

    .line 1272
    .line 1273
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1274
    .line 1275
    .line 1276
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sequentialTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 1277
    .line 1278
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1279
    .line 1280
    new-array v4, v15, [Ljava/lang/Object;

    .line 1281
    .line 1282
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1283
    .line 1284
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v5

    .line 1288
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v5

    .line 1292
    const v6, 0x7f120687

    .line 1293
    .line 1294
    .line 1295
    invoke-static {v4, v15, v5, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v4

    .line 1299
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v5

    .line 1303
    invoke-static {v5, v15, v4, v12}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 1304
    .line 1305
    .line 1306
    move-result v4

    .line 1307
    if-eqz v4, :cond_14

    .line 1308
    .line 1309
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v4

    .line 1313
    iget-boolean v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 1314
    .line 1315
    if-eqz v4, :cond_14

    .line 1316
    .line 1317
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1318
    .line 1319
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1320
    .line 1321
    .line 1322
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresDamagingButton:Lcom/google/android/material/button/MaterialButton;

    .line 1323
    .line 1324
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 1325
    .line 1326
    .line 1327
    move-result v4

    .line 1328
    if-nez v4, :cond_14

    .line 1329
    .line 1330
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1331
    .line 1332
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    .line 1334
    .line 1335
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresGoodFaithButton:Lcom/google/android/material/button/MaterialButton;

    .line 1336
    .line 1337
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 1338
    .line 1339
    .line 1340
    move-result v4

    .line 1341
    if-nez v4, :cond_14

    .line 1342
    .line 1343
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1344
    .line 1345
    invoke-static {v0}, Lorg/jsoup/nodes/NodeUtils;->getAncestor(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v5

    .line 1349
    check-cast v5, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 1350
    .line 1351
    if-eqz v5, :cond_13

    .line 1352
    .line 1353
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v13

    .line 1357
    :cond_13
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v4

    .line 1361
    if-eqz v4, :cond_14

    .line 1362
    .line 1363
    invoke-static {v6, v15}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 1364
    .line 1365
    .line 1366
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1367
    .line 1368
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    .line 1370
    .line 1371
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1372
    .line 1373
    invoke-virtual {v4, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1374
    .line 1375
    .line 1376
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1377
    .line 1378
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1379
    .line 1380
    .line 1381
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1382
    .line 1383
    const-wide/16 v5, 0x1f4

    .line 1384
    .line 1385
    invoke-virtual {v4, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1386
    .line 1387
    .line 1388
    :cond_14
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1389
    .line 1390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1391
    .line 1392
    .line 1393
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->olderIdButton:Landroid/widget/ImageView;

    .line 1394
    .line 1395
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    .line 1397
    .line 1398
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1399
    .line 1400
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    .line 1402
    .line 1403
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->newerIdButton:Landroid/widget/ImageView;

    .line 1404
    .line 1405
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    .line 1407
    .line 1408
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1409
    .line 1410
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1411
    .line 1412
    .line 1413
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->newerIdButton:Landroid/widget/ImageView;

    .line 1414
    .line 1415
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v4

    .line 1419
    iget-boolean v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->canGoForward:Z

    .line 1420
    .line 1421
    xor-int/2addr v4, v12

    .line 1422
    invoke-virtual {v0, v1, v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setEnableDisableTint(Landroid/widget/ImageView;Z)V

    .line 1423
    .line 1424
    .line 1425
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1426
    .line 1427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1428
    .line 1429
    .line 1430
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->olderIdButton:Landroid/widget/ImageView;

    .line 1431
    .line 1432
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v4

    .line 1436
    iget-wide v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 1437
    .line 1438
    cmp-long v4, v4, v2

    .line 1439
    .line 1440
    if-nez v4, :cond_15

    .line 1441
    .line 1442
    move v4, v12

    .line 1443
    goto :goto_b

    .line 1444
    :cond_15
    move v4, v15

    .line 1445
    :goto_b
    invoke-virtual {v0, v1, v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setEnableDisableTint(Landroid/widget/ImageView;Z)V

    .line 1446
    .line 1447
    .line 1448
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1449
    .line 1450
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1451
    .line 1452
    .line 1453
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->newerIdButton:Landroid/widget/ImageView;

    .line 1454
    .line 1455
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v4

    .line 1459
    iget-boolean v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->canGoForward:Z

    .line 1460
    .line 1461
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1462
    .line 1463
    .line 1464
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1465
    .line 1466
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1467
    .line 1468
    .line 1469
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->olderIdButton:Landroid/widget/ImageView;

    .line 1470
    .line 1471
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v4

    .line 1475
    iget-wide v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 1476
    .line 1477
    cmp-long v2, v4, v2

    .line 1478
    .line 1479
    if-eqz v2, :cond_16

    .line 1480
    .line 1481
    goto :goto_c

    .line 1482
    :cond_16
    move v12, v15

    .line 1483
    :goto_c
    invoke-virtual {v1, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 1484
    .line 1485
    .line 1486
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1487
    .line 1488
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1489
    .line 1490
    .line 1491
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankIcon:Landroid/widget/ImageView;

    .line 1492
    .line 1493
    const v2, 0x7f080176

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1497
    .line 1498
    .line 1499
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1500
    .line 1501
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1502
    .line 1503
    .line 1504
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionDetailsView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1505
    .line 1506
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    .line 1508
    .line 1509
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1510
    .line 1511
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1512
    .line 1513
    .line 1514
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 1515
    .line 1516
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1517
    .line 1518
    .line 1519
    goto :goto_d

    .line 1520
    :cond_17
    const-string v0, "Attribute not found; ID=2130969027"

    .line 1521
    .line 1522
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    goto :goto_e

    .line 1526
    :cond_18
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 1527
    .line 1528
    if-eqz v2, :cond_19

    .line 1529
    .line 1530
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 1531
    .line 1532
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 1533
    .line 1534
    invoke-virtual {v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setErrorState(Ljava/lang/Throwable;)V

    .line 1535
    .line 1536
    .line 1537
    :cond_19
    :goto_d
    move-object v13, v14

    .line 1538
    :goto_e
    return-object v13

    .line 1539
    :pswitch_4
    move-object/from16 v1, p1

    .line 1540
    .line 1541
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 1542
    .line 1543
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 1544
    .line 1545
    if-eqz v2, :cond_20

    .line 1546
    .line 1547
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1548
    .line 1549
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1550
    .line 1551
    .line 1552
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1553
    .line 1554
    new-instance v3, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 1555
    .line 1556
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v4

    .line 1560
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 1561
    .line 1562
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 1563
    .line 1564
    check-cast v1, Lorg/wikipedia/dataclient/restbase/DiffResponse;

    .line 1565
    .line 1566
    iget-object v1, v1, Lorg/wikipedia/dataclient/restbase/DiffResponse;->diff:Ljava/util/List;

    .line 1567
    .line 1568
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1569
    .line 1570
    .line 1571
    new-instance v5, Ljava/util/ArrayList;

    .line 1572
    .line 1573
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .line 1575
    .line 1576
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v1

    .line 1580
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1581
    .line 1582
    .line 1583
    move-result v6

    .line 1584
    if-eqz v6, :cond_1f

    .line 1585
    .line 1586
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v6

    .line 1590
    check-cast v6, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;

    .line 1591
    .line 1592
    new-instance v7, Lorg/wikipedia/diff/DiffUtil$DiffLine;

    .line 1593
    .line 1594
    invoke-direct {v7, v4, v6}, Lorg/wikipedia/diff/DiffUtil$DiffLine;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;)V

    .line 1595
    .line 1596
    .line 1597
    iget v8, v6, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->type:I

    .line 1598
    .line 1599
    if-eqz v13, :cond_1e

    .line 1600
    .line 1601
    iget v6, v6, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->lineNumber:I

    .line 1602
    .line 1603
    iget-object v9, v13, Lorg/wikipedia/diff/DiffUtil$DiffLine;->diff:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;

    .line 1604
    .line 1605
    iget v11, v9, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->lineNumber:I

    .line 1606
    .line 1607
    iget v9, v9, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->type:I

    .line 1608
    .line 1609
    sub-int v11, v6, v11

    .line 1610
    .line 1611
    if-ne v11, v12, :cond_1a

    .line 1612
    .line 1613
    if-ne v9, v12, :cond_1a

    .line 1614
    .line 1615
    if-eq v8, v12, :cond_1c

    .line 1616
    .line 1617
    :cond_1a
    if-ne v11, v12, :cond_1b

    .line 1618
    .line 1619
    if-nez v9, :cond_1b

    .line 1620
    .line 1621
    if-eqz v8, :cond_1c

    .line 1622
    .line 1623
    :cond_1b
    if-ne v9, v10, :cond_1e

    .line 1624
    .line 1625
    if-ne v8, v10, :cond_1e

    .line 1626
    .line 1627
    :cond_1c
    iget v8, v13, Lorg/wikipedia/diff/DiffUtil$DiffLine;->lineEnd:I

    .line 1628
    .line 1629
    if-le v6, v8, :cond_1d

    .line 1630
    .line 1631
    iput v6, v13, Lorg/wikipedia/diff/DiffUtil$DiffLine;->lineEnd:I

    .line 1632
    .line 1633
    :cond_1d
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .line 1634
    .line 1635
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1636
    .line 1637
    .line 1638
    iget-object v8, v13, Lorg/wikipedia/diff/DiffUtil$DiffLine;->parsedText:Landroid/text/SpannedString;

    .line 1639
    .line 1640
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v8

    .line 1644
    const/16 v9, 0xa

    .line 1645
    .line 1646
    invoke-interface {v8, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1647
    .line 1648
    .line 1649
    iget-object v7, v7, Lorg/wikipedia/diff/DiffUtil$DiffLine;->parsedText:Landroid/text/SpannedString;

    .line 1650
    .line 1651
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1652
    .line 1653
    .line 1654
    new-instance v7, Landroid/text/SpannedString;

    .line 1655
    .line 1656
    invoke-direct {v7, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 1657
    .line 1658
    .line 1659
    iput-object v7, v13, Lorg/wikipedia/diff/DiffUtil$DiffLine;->parsedText:Landroid/text/SpannedString;

    .line 1660
    .line 1661
    goto :goto_10

    .line 1662
    :cond_1e
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    .line 1664
    .line 1665
    move-object v13, v7

    .line 1666
    :goto_10
    const/16 v11, 0x8

    .line 1667
    .line 1668
    goto :goto_f

    .line 1669
    :cond_1f
    invoke-direct {v3, v5}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(Ljava/util/List;)V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1673
    .line 1674
    .line 1675
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1676
    .line 1677
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1678
    .line 1679
    .line 1680
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1681
    .line 1682
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->updateActionButtons()V

    .line 1686
    .line 1687
    .line 1688
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1689
    .line 1690
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1691
    .line 1692
    .line 1693
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 1694
    .line 1695
    const/16 v2, 0x8

    .line 1696
    .line 1697
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    .line 1699
    .line 1700
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1701
    .line 1702
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1703
    .line 1704
    .line 1705
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 1706
    .line 1707
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    .line 1709
    .line 1710
    goto :goto_11

    .line 1711
    :cond_20
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 1712
    .line 1713
    if-eqz v2, :cond_22

    .line 1714
    .line 1715
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 1716
    .line 1717
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 1718
    .line 1719
    instance-of v2, v1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 1720
    .line 1721
    if-eqz v2, :cond_21

    .line 1722
    .line 1723
    move-object v2, v1

    .line 1724
    check-cast v2, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 1725
    .line 1726
    iget v2, v2, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 1727
    .line 1728
    const/16 v3, 0x193

    .line 1729
    .line 1730
    if-ne v2, v3, :cond_21

    .line 1731
    .line 1732
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1733
    .line 1734
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1735
    .line 1736
    .line 1737
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 1738
    .line 1739
    const/16 v2, 0x8

    .line 1740
    .line 1741
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    .line 1743
    .line 1744
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1745
    .line 1746
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1747
    .line 1748
    .line 1749
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1750
    .line 1751
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    .line 1753
    .line 1754
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1755
    .line 1756
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1757
    .line 1758
    .line 1759
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->undoButton:Landroid/widget/FrameLayout;

    .line 1760
    .line 1761
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1762
    .line 1763
    .line 1764
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1765
    .line 1766
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1767
    .line 1768
    .line 1769
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankButton:Landroid/widget/FrameLayout;

    .line 1770
    .line 1771
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    .line 1773
    .line 1774
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1775
    .line 1776
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1777
    .line 1778
    .line 1779
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffUnavailableContainer:Landroid/widget/LinearLayout;

    .line 1780
    .line 1781
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    .line 1783
    .line 1784
    goto :goto_11

    .line 1785
    :cond_21
    invoke-virtual {v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setErrorState(Ljava/lang/Throwable;)V

    .line 1786
    .line 1787
    .line 1788
    :cond_22
    :goto_11
    return-object v14

    .line 1789
    :pswitch_5
    move-object/from16 v1, p1

    .line 1790
    .line 1791
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 1792
    .line 1793
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1794
    .line 1795
    .line 1796
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1797
    .line 1798
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1799
    .line 1800
    .line 1801
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 1802
    .line 1803
    const/16 v11, 0x8

    .line 1804
    .line 1805
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1806
    .line 1807
    .line 1808
    instance-of v4, v1, Lorg/wikipedia/util/Resource$Success;

    .line 1809
    .line 1810
    if-eqz v4, :cond_25

    .line 1811
    .line 1812
    sget-object v4, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 1813
    .line 1814
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v5

    .line 1818
    iget-object v5, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1819
    .line 1820
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1821
    .line 1822
    .line 1823
    invoke-static {v5, v7}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 1824
    .line 1825
    .line 1826
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setLoadingState()V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v4

    .line 1833
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 1834
    .line 1835
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 1836
    .line 1837
    check-cast v1, Lorg/wikipedia/dataclient/rollback/RollbackPostResponse;

    .line 1838
    .line 1839
    iget-object v5, v1, Lorg/wikipedia/dataclient/rollback/RollbackPostResponse;->rollback:Lorg/wikipedia/dataclient/rollback/Rollback;

    .line 1840
    .line 1841
    if-eqz v5, :cond_23

    .line 1842
    .line 1843
    iget-wide v2, v5, Lorg/wikipedia/dataclient/rollback/Rollback;->revision:J

    .line 1844
    .line 1845
    move-wide/from16 v18, v2

    .line 1846
    .line 1847
    goto :goto_12

    .line 1848
    :cond_23
    const-wide/16 v18, 0x0

    .line 1849
    .line 1850
    :goto_12
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v2

    .line 1854
    new-instance v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 1855
    .line 1856
    invoke-direct {v3, v4, v8}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 1857
    .line 1858
    .line 1859
    new-instance v16, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 1860
    .line 1861
    const/16 v22, 0x0

    .line 1862
    .line 1863
    const-wide/16 v20, -0x1

    .line 1864
    .line 1865
    move-object/from16 v17, v4

    .line 1866
    .line 1867
    invoke-direct/range {v16 .. v22}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V

    .line 1868
    .line 1869
    .line 1870
    move-object/from16 v4, v16

    .line 1871
    .line 1872
    invoke-static {v2, v3, v13, v4, v10}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1873
    .line 1874
    .line 1875
    iget-object v1, v1, Lorg/wikipedia/dataclient/rollback/RollbackPostResponse;->rollback:Lorg/wikipedia/dataclient/rollback/Rollback;

    .line 1876
    .line 1877
    if-eqz v1, :cond_24

    .line 1878
    .line 1879
    iget-wide v2, v1, Lorg/wikipedia/dataclient/rollback/Rollback;->revision:J

    .line 1880
    .line 1881
    goto :goto_13

    .line 1882
    :cond_24
    const-wide/16 v2, 0x0

    .line 1883
    .line 1884
    :goto_13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v16

    .line 1888
    const/16 v24, 0x0

    .line 1889
    .line 1890
    const/16 v25, 0x3fe

    .line 1891
    .line 1892
    const/16 v17, 0x0

    .line 1893
    .line 1894
    const/16 v18, 0x0

    .line 1895
    .line 1896
    const/16 v19, 0x0

    .line 1897
    .line 1898
    const/16 v20, 0x0

    .line 1899
    .line 1900
    const/16 v21, 0x0

    .line 1901
    .line 1902
    const/16 v22, 0x0

    .line 1903
    .line 1904
    const/16 v23, 0x0

    .line 1905
    .line 1906
    invoke-static/range {v16 .. v25}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v1

    .line 1910
    const-string v2, "rollback_success"

    .line 1911
    .line 1912
    invoke-virtual {v0, v2, v6, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v1

    .line 1919
    const v2, 0x7f1205a4

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v2

    .line 1926
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1927
    .line 1928
    .line 1929
    invoke-static {v1, v2, v15, v9}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v1

    .line 1933
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;

    .line 1934
    .line 1935
    invoke-direct {v2, v0, v12}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$showUndoSnackbar$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 1936
    .line 1937
    .line 1938
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 1939
    .line 1940
    .line 1941
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1942
    .line 1943
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1944
    .line 1945
    .line 1946
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 1947
    .line 1948
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v0

    .line 1958
    if-eqz v0, :cond_26

    .line 1959
    .line 1960
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;->publish()V

    .line 1961
    .line 1962
    .line 1963
    goto :goto_14

    .line 1964
    :cond_25
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 1965
    .line 1966
    if-eqz v2, :cond_26

    .line 1967
    .line 1968
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 1969
    .line 1970
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v3

    .line 1974
    iget-object v3, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1975
    .line 1976
    invoke-static {v2, v3, v5, v7, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 1977
    .line 1978
    .line 1979
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 1980
    .line 1981
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 1982
    .line 1983
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1984
    .line 1985
    .line 1986
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v0

    .line 1990
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 1991
    .line 1992
    .line 1993
    :cond_26
    :goto_14
    return-object v14

    .line 1994
    :pswitch_6
    move-object/from16 v1, p1

    .line 1995
    .line 1996
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 1997
    .line 1998
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 1999
    .line 2000
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2001
    .line 2002
    .line 2003
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 2004
    .line 2005
    const/16 v11, 0x8

    .line 2006
    .line 2007
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2008
    .line 2009
    .line 2010
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 2011
    .line 2012
    if-eqz v2, :cond_27

    .line 2013
    .line 2014
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->updateActionButtons()V

    .line 2015
    .line 2016
    .line 2017
    goto :goto_15

    .line 2018
    :cond_27
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 2019
    .line 2020
    if-eqz v2, :cond_28

    .line 2021
    .line 2022
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 2023
    .line 2024
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 2025
    .line 2026
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2027
    .line 2028
    .line 2029
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v0

    .line 2033
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 2034
    .line 2035
    .line 2036
    :cond_28
    :goto_15
    return-object v14

    .line 2037
    :pswitch_7
    move-object/from16 v1, p1

    .line 2038
    .line 2039
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 2040
    .line 2041
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 2042
    .line 2043
    if-eqz v2, :cond_2b

    .line 2044
    .line 2045
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 2046
    .line 2047
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 2048
    .line 2049
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2050
    .line 2051
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watchlistExpiry:Ljava/lang/String;

    .line 2052
    .line 2053
    if-eqz v1, :cond_29

    .line 2054
    .line 2055
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2056
    .line 2057
    .line 2058
    move-result v1

    .line 2059
    if-nez v1, :cond_2a

    .line 2060
    .line 2061
    :cond_29
    move v15, v12

    .line 2062
    :cond_2a
    xor-int/lit8 v1, v15, 0x1

    .line 2063
    .line 2064
    invoke-virtual {v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->updateWatchButton(Z)V

    .line 2065
    .line 2066
    .line 2067
    goto :goto_16

    .line 2068
    :cond_2b
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 2069
    .line 2070
    if-eqz v2, :cond_2c

    .line 2071
    .line 2072
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 2073
    .line 2074
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 2075
    .line 2076
    invoke-virtual {v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setErrorState(Ljava/lang/Throwable;)V

    .line 2077
    .line 2078
    .line 2079
    :cond_2c
    :goto_16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v0

    .line 2083
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2084
    .line 2085
    .line 2086
    return-object v14

    .line 2087
    :pswitch_data_0
    .packed-switch 0x0
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
