.class public final synthetic Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "pt_edit"

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const-string v6, "pt_toolbar"

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    const-string v9, ""

    .line 15
    .line 16
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistExpiryDialog;

    .line 38
    .line 39
    invoke-direct {v2}, Lorg/wikipedia/watchlist/WatchlistExpiryDialog;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lkotlin/Pair;

    .line 43
    .line 44
    const-string v4, "pageTitle"

    .line 45
    .line 46
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-array v0, v8, [Lkotlin/Pair;

    .line 50
    .line 51
    aput-object v3, v0, v7

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_1
    const-string/jumbo v1, "warn_init"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v6, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 83
    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    new-instance v7, Lorg/wikipedia/page/PageTitle;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 93
    .line 94
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 95
    .line 96
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v2}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget-object v3, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 109
    .line 110
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 111
    .line 112
    invoke-direct {v7, v2, v1, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->requestTalk:Landroidx/fragment/app/Fragment$10;

    .line 116
    .line 117
    sget v2, Lorg/wikipedia/talk/template/TalkTemplatesActivity;->$r8$clinit:I

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-wide v8, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 128
    .line 129
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-wide v10, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 134
    .line 135
    const/4 v12, 0x4

    .line 136
    invoke-static/range {v6 .. v12}, Lokio/Path$Companion;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;JJI)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v1, v0, v5}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 141
    .line 142
    .line 143
    :cond_0
    return-void

    .line 144
    :pswitch_2
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-boolean v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 149
    .line 150
    if-eqz v1, :cond_1

    .line 151
    .line 152
    const-string/jumbo v1, "unwatch_init"

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    const-string/jumbo v1, "watch_init"

    .line 157
    .line 158
    .line 159
    :goto_0
    invoke-virtual {v0, v1, v6, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-boolean v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 171
    .line 172
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    new-instance v6, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 177
    .line 178
    const/4 v7, 0x7

    .line 179
    invoke-direct {v6, v1, v7}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 180
    .line 181
    .line 182
    new-instance v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 183
    .line 184
    invoke-direct {v7, v1, v0, v5, v3}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v6, v5, v7, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_3
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 196
    .line 197
    if-eqz v1, :cond_2

    .line 198
    .line 199
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_2

    .line 204
    .line 205
    move v1, v8

    .line 206
    goto :goto_1

    .line 207
    :cond_2
    move v1, v7

    .line 208
    :goto_1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_3

    .line 213
    .line 214
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iget-boolean v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->hasRollbackRights:Z

    .line 219
    .line 220
    if-eqz v2, :cond_3

    .line 221
    .line 222
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iget-boolean v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->canGoForward:Z

    .line 227
    .line 228
    if-nez v2, :cond_3

    .line 229
    .line 230
    move v7, v8

    .line 231
    :cond_3
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 232
    .line 233
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    iget-object v3, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 238
    .line 239
    const-string v4, "other"

    .line 240
    .line 241
    const-string v5, "saveIntent"

    .line 242
    .line 243
    invoke-static {v2, v3, v5, v4, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 244
    .line 245
    .line 246
    if-eqz v1, :cond_4

    .line 247
    .line 248
    if-eqz v7, :cond_4

    .line 249
    .line 250
    new-instance v1, Lokhttp3/Request$Builder;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget-object v3, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->undoLabel:Landroid/widget/TextView;

    .line 262
    .line 263
    const v4, 0x800005

    .line 264
    .line 265
    .line 266
    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Request$Builder;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 267
    .line 268
    .line 269
    new-instance v3, Landroidx/appcompat/view/SupportMenuInflater;

    .line 270
    .line 271
    invoke-direct {v3, v2}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 272
    .line 273
    .line 274
    iget-object v2, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 277
    .line 278
    const v4, 0x7f0e0007

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v2, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 287
    .line 288
    invoke-virtual {v2, v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;

    .line 292
    .line 293
    invoke-direct {v2, v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;)V

    .line 294
    .line 295
    .line 296
    iput-object v2, v1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 297
    .line 298
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->show()V

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_4
    if-eqz v1, :cond_5

    .line 303
    .line 304
    const-string/jumbo v1, "undo_init"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1, v6, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showUndoDialog()V

    .line 311
    .line 312
    .line 313
    :cond_5
    :goto_2
    return-void

    .line 314
    :pswitch_4
    const-string v1, "thank_init"

    .line 315
    .line 316
    invoke-virtual {v0, v1, v6, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Landroid/widget/FrameLayout;

    .line 320
    .line 321
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 326
    .line 327
    .line 328
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 329
    .line 330
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-direct {v2, v3, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 335
    .line 336
    .line 337
    iget-object v3, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 340
    .line 341
    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 342
    .line 343
    new-instance v3, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;

    .line 344
    .line 345
    invoke-direct {v3, v0, v7}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 346
    .line 347
    .line 348
    const v4, 0x7f1209b4

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    new-instance v3, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;

    .line 355
    .line 356
    invoke-direct {v3, v0, v8}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 357
    .line 358
    .line 359
    const v0, 0x7f1209b3

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    const v3, 0x7f0c05f8

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :pswitch_5
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 388
    .line 389
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameToButton:Lcom/google/android/material/button/MaterialButton;

    .line 395
    .line 396
    invoke-virtual {v0, v1, v7, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showUserPopupMenu(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;ZLandroid/view/View;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :pswitch_6
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 405
    .line 406
    iget-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameFromButton:Lcom/google/android/material/button/MaterialButton;

    .line 412
    .line 413
    invoke-virtual {v0, v1, v8, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showUserPopupMenu(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;ZLandroid/view/View;)V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :pswitch_7
    const-string v1, "edit_left_chevron_click"

    .line 418
    .line 419
    invoke-virtual {v0, v1, v2, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setLoadingState()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 426
    .line 427
    .line 428
    move-result-object v11

    .line 429
    iget-wide v12, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 430
    .line 431
    iput-wide v12, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 432
    .line 433
    invoke-static {v11}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    new-instance v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 438
    .line 439
    invoke-direct {v1, v11, v3}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 440
    .line 441
    .line 442
    new-instance v10, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 443
    .line 444
    const/16 v16, 0x0

    .line 445
    .line 446
    const-wide/16 v14, -0x1

    .line 447
    .line 448
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V

    .line 449
    .line 450
    .line 451
    invoke-static {v0, v1, v5, v10, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_8
    const-string v1, "edit_right_chevron_click"

    .line 456
    .line 457
    invoke-virtual {v0, v1, v2, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setLoadingState()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    iget-wide v12, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 468
    .line 469
    invoke-static {v11}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    new-instance v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 474
    .line 475
    const/4 v2, 0x4

    .line 476
    invoke-direct {v1, v11, v2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 477
    .line 478
    .line 479
    new-instance v10, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;

    .line 480
    .line 481
    const/4 v15, 0x0

    .line 482
    const/4 v14, 0x0

    .line 483
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JLkotlin/coroutines/Continuation;I)V

    .line 484
    .line 485
    .line 486
    invoke-static {v0, v1, v14, v10, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 487
    .line 488
    .line 489
    return-void

    .line 490
    :pswitch_9
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 495
    .line 496
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    sget-object v2, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 501
    .line 502
    if-eq v1, v2, :cond_a

    .line 503
    .line 504
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 509
    .line 510
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    sget-object v2, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 515
    .line 516
    if-ne v1, v2, :cond_6

    .line 517
    .line 518
    goto/16 :goto_4

    .line 519
    .line 520
    :cond_6
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 525
    .line 526
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    sget-object v2, Lorg/wikipedia/page/Namespace;->FILE:Lorg/wikipedia/page/Namespace;

    .line 531
    .line 532
    if-ne v1, v2, :cond_7

    .line 533
    .line 534
    sget v1, Lorg/wikipedia/commons/FilePageActivity;->$r8$clinit:I

    .line 535
    .line 536
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    iget-object v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 545
    .line 546
    invoke-static {v1, v2, v8}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :cond_7
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 560
    .line 561
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 562
    .line 563
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    const-string/jumbo v2, "wikidatawiki"

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    if-nez v1, :cond_9

    .line 575
    .line 576
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 581
    .line 582
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 583
    .line 584
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    const-string v2, "commonswiki"

    .line 589
    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    if-eqz v1, :cond_8

    .line 595
    .line 596
    goto :goto_3

    .line 597
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    .line 605
    .line 606
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 611
    .line 612
    const/16 v6, 0x21

    .line 613
    .line 614
    invoke-direct {v2, v6, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 615
    .line 616
    .line 617
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 618
    .line 619
    invoke-direct {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;-><init>()V

    .line 620
    .line 621
    .line 622
    new-instance v6, Lkotlin/Pair;

    .line 623
    .line 624
    const-string v9, "entry"

    .line 625
    .line 626
    invoke-direct {v6, v9, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    new-instance v2, Lkotlin/Pair;

    .line 630
    .line 631
    const-string v9, "location"

    .line 632
    .line 633
    invoke-direct {v2, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    new-instance v9, Lkotlin/Pair;

    .line 637
    .line 638
    const-string v10, "lastKnownLocation"

    .line 639
    .line 640
    invoke-direct {v9, v10, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    new-array v3, v3, [Lkotlin/Pair;

    .line 644
    .line 645
    aput-object v6, v3, v7

    .line 646
    .line 647
    aput-object v2, v3, v8

    .line 648
    .line 649
    aput-object v9, v3, v4

    .line 650
    .line 651
    invoke-static {v3}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 656
    .line 657
    .line 658
    invoke-static {v1, v0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 659
    .line 660
    .line 661
    goto :goto_5

    .line 662
    :cond_9
    :goto_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 671
    .line 672
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-static {v1, v0}, Lokio/Okio__JvmOkioKt;->openInCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    goto :goto_5

    .line 680
    :cond_a
    :goto_4
    sget v1, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 681
    .line 682
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    iget-object v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 691
    .line 692
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->DIFF_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 693
    .line 694
    invoke-static {v1, v2, v3}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 699
    .line 700
    .line 701
    :goto_5
    return-void

    .line 702
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 703
    .line 704
    .line 705
    move-result v1

    .line 706
    const v3, 0x7f0904a6

    .line 707
    .line 708
    .line 709
    if-ne v1, v3, :cond_b

    .line 710
    .line 711
    const-string v1, "quality_click"

    .line 712
    .line 713
    invoke-virtual {v0, v1, v2, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    goto :goto_6

    .line 717
    :cond_b
    const-string v1, "intent_click"

    .line 718
    .line 719
    invoke-virtual {v0, v1, v2, v9}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    :goto_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    const v2, 0x7f120707

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    invoke-static {v1, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 741
    .line 742
    .line 743
    return-void

    .line 744
    nop

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
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
