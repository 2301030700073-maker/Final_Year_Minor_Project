.class public final synthetic Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v0, v0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/views/EditNoticesDialog;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/wikipedia/views/EditNoticesDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribItemView;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserContribItemView;->listener:Lorg/wikipedia/usercontrib/UserContribItemView$Listener;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;

    .line 34
    .line 35
    iget-object v9, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 36
    .line 37
    sget-object v8, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 38
    .line 39
    new-instance v10, Lorg/wikipedia/page/PageTitle;

    .line 40
    .line 41
    iget-object v1, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;->contrib:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 42
    .line 43
    const-string v2, "contrib"

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 48
    .line 49
    sget v3, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 50
    .line 51
    invoke-virtual {v9}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v10, v1, v3, v7}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribListItemHolder;->contrib:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget v11, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    .line 67
    .line 68
    iget-wide v14, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 69
    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    const/16 v17, 0x28

    .line 73
    .line 74
    const-wide/16 v12, 0x0

    .line 75
    .line 76
    invoke-static/range {v8 .. v17}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v7

    .line 88
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v7

    .line 92
    :cond_3
    :goto_0
    return-void

    .line 93
    :pswitch_1
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;

    .line 94
    .line 95
    iget-object v1, v0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->callback:Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->item:Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 100
    .line 101
    invoke-interface {v1, v0}, Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;->onSelected(Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void

    .line 105
    :pswitch_2
    check-cast v0, Lorg/wikipedia/talk/TalkTopicHolder;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v2, v0, Lorg/wikipedia/talk/TalkTopicHolder;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 111
    .line 112
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v3, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 117
    .line 118
    invoke-direct {v3, v0}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicHolder;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 122
    .line 123
    const/4 v6, 0x7

    .line 124
    invoke-direct {v4, v0, v1, v7, v6}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v3, v7, v4, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_3
    check-cast v0, Lorg/wikipedia/talk/TalkThreadHeaderView;

    .line 132
    .line 133
    iget-object v0, v0, Lorg/wikipedia/talk/TalkThreadHeaderView;->callback:Lorg/wikipedia/talk/TalkThreadHeaderView$Callback;

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    check-cast v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;

    .line 138
    .line 139
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    sget v1, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;

    .line 158
    .line 159
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicViewModel;I)V

    .line 160
    .line 161
    .line 162
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 163
    .line 164
    const/16 v4, 0x11

    .line 165
    .line 166
    invoke-direct {v3, v4, v0, v7}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v2, v7, v3, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 174
    .line 175
    invoke-direct {v1, v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 176
    .line 177
    .line 178
    const v2, 0x7f120944

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 182
    .line 183
    .line 184
    const v2, 0x7f120943

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 191
    .line 192
    const/16 v3, 0xd

    .line 193
    .line 194
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    const v0, 0x7f12034f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    const v0, 0x7f120511

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_1
    return-void

    .line 213
    :pswitch_4
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-interface {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;->open(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_5
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;

    .line 223
    .line 224
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->callback:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;

    .line 225
    .line 226
    if-eqz v1, :cond_7

    .line 227
    .line 228
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->filter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;

    .line 229
    .line 230
    invoke-interface {v1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;->onCheckedChanged(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    return-void

    .line 234
    :pswitch_6
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;

    .line 235
    .line 236
    sget v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;->$r8$clinit:I

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_7
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsOnboardingActivity;

    .line 246
    .line 247
    sget v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsOnboardingActivity;->$r8$clinit:I

    .line 248
    .line 249
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 250
    .line 251
    const-string v2, "onboarding_step_1_dialog"

    .line 252
    .line 253
    const/16 v4, 0xc

    .line 254
    .line 255
    const-string v5, "next"

    .line 256
    .line 257
    invoke-static {v1, v5, v2, v7, v4}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_8
    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 268
    .line 269
    new-instance v1, Landroid/content/Intent;

    .line 270
    .line 271
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    const-class v3, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;

    .line 276
    .line 277
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .line 279
    .line 280
    const/16 v2, 0x3b

    .line 281
    .line 282
    invoke-virtual {v0, v1, v2, v7}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 286
    .line 287
    if-eqz v0, :cond_8

    .line 288
    .line 289
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 290
    .line 291
    .line 292
    :cond_8
    return-void

    .line 293
    :pswitch_9
    check-cast v0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 294
    .line 295
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 296
    .line 297
    invoke-virtual {v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_a
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    sget v3, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 308
    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-static {v1, v0}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_b
    check-cast v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 325
    .line 326
    const/4 v13, 0x0

    .line 327
    const/16 v14, 0xfc

    .line 328
    .line 329
    const-string v7, "setting_click"

    .line 330
    .line 331
    const-string v8, "reminder_milestone"

    .line 332
    .line 333
    const/4 v9, 0x0

    .line 334
    const/4 v10, 0x0

    .line 335
    const/4 v11, 0x0

    .line 336
    const/4 v12, 0x0

    .line 337
    invoke-static/range {v7 .. v14}, Lokhttp3/Cache$Companion;->logDonationReminderAction$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 341
    .line 342
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    sget v2, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 347
    .line 348
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0, v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->newIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :pswitch_c
    check-cast v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 361
    .line 362
    invoke-virtual {v0}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v1, v6}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->setupDefaultOrder(Z)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->preProcessList()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->saveChanges()Ljava/util/ArrayList;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->setupRecyclerView$1()V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :pswitch_d
    check-cast v0, Lorg/wikipedia/notifications/NotificationFilterItemView;

    .line 380
    .line 381
    iget-object v1, v0, Lorg/wikipedia/notifications/NotificationFilterItemView;->callback:Lorg/wikipedia/notifications/NotificationFilterItemView$Callback;

    .line 382
    .line 383
    if-eqz v1, :cond_9

    .line 384
    .line 385
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationFilterItemView;->filter:Lorg/wikipedia/notifications/NotificationFilterActivity$Filter;

    .line 386
    .line 387
    invoke-interface {v1, v0}, Lorg/wikipedia/notifications/NotificationFilterItemView$Callback;->onCheckedChanged(Lorg/wikipedia/notifications/NotificationFilterActivity$Filter;)V

    .line 388
    .line 389
    .line 390
    :cond_9
    return-void

    .line 391
    :pswitch_e
    check-cast v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    iget-object v2, v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 397
    .line 398
    new-instance v3, Lorg/wikipedia/views/NotificationActionsOverflowView;

    .line 399
    .line 400
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    const v9, 0x7f0c05d7

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8, v9, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    .line 416
    .line 417
    move-object v9, v8

    .line 418
    check-cast v9, Lorg/wikipedia/views/WikiCardView;

    .line 419
    .line 420
    const v9, 0x7f0904b4

    .line 421
    .line 422
    .line 423
    invoke-static {v8, v9}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    check-cast v10, Landroid/widget/TextView;

    .line 428
    .line 429
    if-eqz v10, :cond_13

    .line 430
    .line 431
    const v9, 0x7f0904b5

    .line 432
    .line 433
    .line 434
    invoke-static {v8, v9}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v11

    .line 438
    check-cast v11, Landroid/widget/TextView;

    .line 439
    .line 440
    if-eqz v11, :cond_13

    .line 441
    .line 442
    const v9, 0x7f0904b6

    .line 443
    .line 444
    .line 445
    invoke-static {v8, v9}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v12

    .line 449
    check-cast v12, Landroid/widget/TextView;

    .line 450
    .line 451
    if-eqz v12, :cond_13

    .line 452
    .line 453
    const v9, 0x7f0904b7

    .line 454
    .line 455
    .line 456
    invoke-static {v8, v9}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object v13

    .line 460
    check-cast v13, Landroid/widget/TextView;

    .line 461
    .line 462
    if-eqz v13, :cond_13

    .line 463
    .line 464
    const v9, 0x7f0904b8

    .line 465
    .line 466
    .line 467
    invoke-static {v8, v9}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v14

    .line 471
    check-cast v14, Landroid/widget/TextView;

    .line 472
    .line 473
    if-eqz v14, :cond_13

    .line 474
    .line 475
    new-instance v8, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 476
    .line 477
    invoke-direct {v8, v5, v3}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    iput-object v3, v2, Lorg/wikipedia/notifications/NotificationActivity;->notificationActionOverflowView:Lorg/wikipedia/views/NotificationActionsOverflowView;

    .line 481
    .line 482
    invoke-virtual {v0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    new-instance v9, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 487
    .line 488
    const/16 v15, 0x8

    .line 489
    .line 490
    invoke-direct {v9, v15, v2, v0}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    iput-object v5, v3, Lorg/wikipedia/views/NotificationActionsOverflowView;->container:Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 494
    .line 495
    new-instance v0, Landroid/widget/PopupWindow;

    .line 496
    .line 497
    const/4 v2, -0x2

    .line 498
    invoke-direct {v0, v3, v2, v2, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 499
    .line 500
    .line 501
    iput-object v0, v3, Lorg/wikipedia/views/NotificationActionsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 502
    .line 503
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 504
    .line 505
    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 512
    .line 513
    .line 514
    const v2, 0x800005

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 518
    .line 519
    .line 520
    iget-object v0, v5, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 521
    .line 522
    if-eqz v0, :cond_e

    .line 523
    .line 524
    iget-object v2, v0, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 525
    .line 526
    if-eqz v2, :cond_e

    .line 527
    .line 528
    iget-object v2, v2, Lorg/wikipedia/notifications/db/Notification$Contents;->links:Lorg/wikipedia/notifications/db/Notification$Links;

    .line 529
    .line 530
    sget-object v15, Lorg/wikipedia/notifications/NotificationCategory;->Companion:Lorg/wikipedia/notifications/NotificationCategory$Companion;

    .line 531
    .line 532
    iget-object v7, v0, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 533
    .line 534
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    invoke-static {v7}, Lorg/wikipedia/notifications/NotificationCategory$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/notifications/NotificationCategory;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 542
    .line 543
    .line 544
    move-result-object v15

    .line 545
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 546
    .line 547
    .line 548
    move-result-object v17

    .line 549
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7}, Lorg/wikipedia/notifications/NotificationCategory;->getIconColor()I

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    new-instance v6, Landroid/util/TypedValue;

    .line 557
    .line 558
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    move-object/from16 p0, v5

    .line 566
    .line 567
    const/4 v5, 0x1

    .line 568
    invoke-virtual {v1, v4, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-eqz v1, :cond_a

    .line 573
    .line 574
    goto :goto_2

    .line 575
    :cond_a
    const/4 v6, 0x0

    .line 576
    :goto_2
    if-eqz v6, :cond_d

    .line 577
    .line 578
    iget v1, v6, Landroid/util/TypedValue;->resourceId:I

    .line 579
    .line 580
    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    new-instance v4, Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 585
    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    invoke-direct {v4, v5, v7}, Lorg/wikipedia/notifications/NotificationLinkHandler;-><init>(Landroid/content/Context;Lorg/wikipedia/notifications/NotificationCategory;)V

    .line 594
    .line 595
    .line 596
    iput-object v4, v3, Lorg/wikipedia/views/NotificationActionsOverflowView;->linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 597
    .line 598
    if-eqz v2, :cond_b

    .line 599
    .line 600
    invoke-virtual {v2}, Lorg/wikipedia/notifications/db/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/db/Notification$Link;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    if-eqz v4, :cond_b

    .line 605
    .line 606
    invoke-virtual {v7}, Lorg/wikipedia/notifications/NotificationCategory;->getIconResId()I

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    invoke-static {v11, v4, v5, v1, v1}, Lorg/wikipedia/views/NotificationActionsOverflowView;->setUpViewForLink(Landroid/widget/TextView;Lorg/wikipedia/notifications/db/Notification$Link;III)V

    .line 611
    .line 612
    .line 613
    const/4 v1, 0x0

    .line 614
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    .line 616
    .line 617
    :cond_b
    if-eqz v2, :cond_f

    .line 618
    .line 619
    iget-object v1, v2, Lorg/wikipedia/notifications/db/Notification$Links;->secondary:Ljava/util/List;

    .line 620
    .line 621
    if-eqz v1, :cond_f

    .line 622
    .line 623
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    if-nez v2, :cond_f

    .line 628
    .line 629
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    check-cast v2, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 634
    .line 635
    invoke-static {v3, v12, v2}, Lorg/wikipedia/views/NotificationActionsOverflowView;->setUpViewForLink$default(Lorg/wikipedia/views/NotificationActionsOverflowView;Landroid/widget/TextView;Lorg/wikipedia/notifications/db/Notification$Link;)V

    .line 636
    .line 637
    .line 638
    const/4 v2, 0x0

    .line 639
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 640
    .line 641
    .line 642
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    check-cast v2, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 647
    .line 648
    iget-object v2, v2, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 649
    .line 650
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    sget-object v4, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 655
    .line 656
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    new-instance v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 660
    .line 661
    invoke-direct {v5, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    invoke-static {v2, v5}, Lorg/wikipedia/page/PageTitle$Companion;->titleForUri(Landroid/net/Uri;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    sget-object v6, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 679
    .line 680
    if-ne v5, v6, :cond_c

    .line 681
    .line 682
    const/4 v5, 0x0

    .line 683
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    .line 684
    .line 685
    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 694
    .line 695
    iget-object v7, v0, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 696
    .line 697
    invoke-static {v7}, Lorg/wikipedia/util/StringUtil;->dbNameToLangCode(Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v7

    .line 701
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v15

    .line 705
    check-cast v15, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 706
    .line 707
    iget-object v15, v15, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 708
    .line 709
    move/from16 v18, v5

    .line 710
    .line 711
    move-object/from16 v16, v15

    .line 712
    .line 713
    const/4 v5, 0x1

    .line 714
    new-array v15, v5, [Ljava/lang/Object;

    .line 715
    .line 716
    aput-object v16, v15, v18

    .line 717
    .line 718
    const v5, 0x7f120499

    .line 719
    .line 720
    .line 721
    invoke-static {v6, v7, v5, v15}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    .line 727
    .line 728
    new-instance v5, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;

    .line 729
    .line 730
    const/4 v6, 0x5

    .line 731
    invoke-direct {v5, v2, v3, v4, v6}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v13, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    .line 736
    .line 737
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    const/4 v5, 0x1

    .line 742
    if-le v2, v5, :cond_f

    .line 743
    .line 744
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    check-cast v1, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 749
    .line 750
    invoke-static {v3, v14, v1}, Lorg/wikipedia/views/NotificationActionsOverflowView;->setUpViewForLink$default(Lorg/wikipedia/views/NotificationActionsOverflowView;Landroid/widget/TextView;Lorg/wikipedia/notifications/db/Notification$Link;)V

    .line 751
    .line 752
    .line 753
    const/4 v1, 0x0

    .line 754
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    .line 756
    .line 757
    goto :goto_3

    .line 758
    :cond_d
    const-string v0, "Attribute not found; ID="

    .line 759
    .line 760
    invoke-static {v4, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    goto :goto_7

    .line 768
    :cond_e
    move-object/from16 p0, v5

    .line 769
    .line 770
    :cond_f
    :goto_3
    if-eqz v0, :cond_12

    .line 771
    .line 772
    invoke-virtual {v0}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 784
    .line 785
    iget-object v0, v0, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 786
    .line 787
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->dbNameToLangCode(Ljava/lang/String;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    if-eqz v1, :cond_10

    .line 792
    .line 793
    const v4, 0x7f120496

    .line 794
    .line 795
    .line 796
    :goto_4
    const/4 v5, 0x0

    .line 797
    goto :goto_5

    .line 798
    :cond_10
    const v4, 0x7f120497

    .line 799
    .line 800
    .line 801
    goto :goto_4

    .line 802
    :goto_5
    new-array v6, v5, [Ljava/lang/Object;

    .line 803
    .line 804
    invoke-static {v2, v0, v4, v6}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    .line 810
    .line 811
    if-eqz v1, :cond_11

    .line 812
    .line 813
    const v0, 0x7f0801c8

    .line 814
    .line 815
    .line 816
    goto :goto_6

    .line 817
    :cond_11
    const v0, 0x7f0801c4

    .line 818
    .line 819
    .line 820
    :goto_6
    invoke-virtual {v10, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 821
    .line 822
    .line 823
    :cond_12
    invoke-virtual {v11, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v12, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v14, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    .line 831
    .line 832
    new-instance v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;

    .line 833
    .line 834
    const/4 v1, 0x6

    .line 835
    move-object/from16 v2, p0

    .line 836
    .line 837
    invoke-direct {v0, v3, v9, v2, v1}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    .line 842
    .line 843
    goto :goto_7

    .line 844
    :cond_13
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    const-string v1, "Missing required view with ID: "

    .line 853
    .line 854
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    :goto_7
    return-void

    .line 862
    :pswitch_f
    check-cast v0, Lorg/wikipedia/games/GamesHubActivity;

    .line 863
    .line 864
    sget v1, Lorg/wikipedia/games/GamesHubActivity;->$r8$clinit:I

    .line 865
    .line 866
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    if-eqz v1, :cond_14

    .line 871
    .line 872
    new-instance v1, Landroid/content/Intent;

    .line 873
    .line 874
    const-class v2, Lorg/wikipedia/notifications/NotificationActivity;

    .line 875
    .line 876
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 880
    .line 881
    .line 882
    :cond_14
    return-void

    .line 883
    :pswitch_10
    check-cast v0, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 884
    .line 885
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    if-nez v1, :cond_15

    .line 890
    .line 891
    goto :goto_8

    .line 892
    :cond_15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    check-cast v0, Lorg/wikipedia/gallery/GalleryActivity;

    .line 897
    .line 898
    iget-boolean v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 899
    .line 900
    const/16 v19, 0x1

    .line 901
    .line 902
    xor-int/lit8 v1, v1, 0x1

    .line 903
    .line 904
    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/GalleryActivity;->setControlsShowing(Z)V

    .line 905
    .line 906
    .line 907
    :goto_8
    return-void

    .line 908
    :pswitch_11
    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 909
    .line 910
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 911
    .line 912
    iget-object v2, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 913
    .line 914
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    iget-object v3, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 918
    .line 919
    invoke-virtual {v2, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 920
    .line 921
    .line 922
    move-result-object v2

    .line 923
    const/16 v3, 0x18

    .line 924
    .line 925
    invoke-direct {v1, v3, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 926
    .line 927
    .line 928
    iget-object v2, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 929
    .line 930
    iget-object v0, v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 931
    .line 932
    const/4 v3, 0x1

    .line 933
    new-array v4, v3, [Landroid/view/View;

    .line 934
    .line 935
    const/16 v18, 0x0

    .line 936
    .line 937
    aput-object v0, v4, v18

    .line 938
    .line 939
    invoke-static {v2, v4}, Lokhttp3/Cookie$Companion;->getSharedElements(Landroid/content/Context;[Landroid/view/View;)[Landroid/util/Pair;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    array-length v3, v0

    .line 944
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    check-cast v3, [Landroid/util/Pair;

    .line 949
    .line 950
    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 951
    .line 952
    .line 953
    move-result-object v3

    .line 954
    sget v4, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 955
    .line 956
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 957
    .line 958
    .line 959
    move-result-object v4

    .line 960
    invoke-static {v2, v1, v4}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    array-length v4, v0

    .line 965
    if-nez v4, :cond_16

    .line 966
    .line 967
    goto :goto_9

    .line 968
    :cond_16
    const-string v4, "hasTransitionAnim"

    .line 969
    .line 970
    const/4 v6, 0x1

    .line 971
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 972
    .line 973
    .line 974
    :goto_9
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 979
    .line 980
    .line 981
    move-result-object v4

    .line 982
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 983
    .line 984
    if-ne v4, v5, :cond_17

    .line 985
    .line 986
    goto :goto_a

    .line 987
    :cond_17
    array-length v0, v0

    .line 988
    if-nez v0, :cond_18

    .line 989
    .line 990
    :goto_a
    const/4 v7, 0x0

    .line 991
    goto :goto_b

    .line 992
    :cond_18
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 993
    .line 994
    .line 995
    move-result-object v7

    .line 996
    :goto_b
    invoke-virtual {v2, v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 997
    .line 998
    .line 999
    return-void

    .line 1000
    :pswitch_12
    check-cast v0, Lokhttp3/MultipartBody$Builder;

    .line 1001
    .line 1002
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 1003
    .line 1004
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 1005
    .line 1006
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1007
    .line 1008
    .line 1009
    return-void

    .line 1010
    :pswitch_13
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    .line 1011
    .line 1012
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->callback:Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;

    .line 1013
    .line 1014
    if-eqz v0, :cond_1d

    .line 1015
    .line 1016
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;

    .line 1017
    .line 1018
    const/4 v5, 0x1

    .line 1019
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v1

    .line 1023
    const-class v2, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;

    .line 1024
    .line 1025
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v1

    .line 1029
    if-eqz v1, :cond_19

    .line 1030
    .line 1031
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v7

    .line 1035
    goto :goto_c

    .line 1036
    :cond_19
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1037
    .line 1038
    if-eqz v1, :cond_1b

    .line 1039
    .line 1040
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v1

    .line 1044
    if-eqz v1, :cond_1a

    .line 1045
    .line 1046
    iget-object v7, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1047
    .line 1048
    goto :goto_c

    .line 1049
    :cond_1a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1054
    .line 1055
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v1

    .line 1059
    if-eqz v1, :cond_1b

    .line 1060
    .line 1061
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    iget-object v7, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1066
    .line 1067
    goto :goto_c

    .line 1068
    :cond_1b
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v1

    .line 1076
    if-eqz v1, :cond_1c

    .line 1077
    .line 1078
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v7

    .line 1082
    goto :goto_c

    .line 1083
    :cond_1c
    const/4 v7, 0x0

    .line 1084
    :goto_c
    check-cast v7, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;

    .line 1085
    .line 1086
    if-eqz v7, :cond_1d

    .line 1087
    .line 1088
    check-cast v7, Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;

    .line 1089
    .line 1090
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    const/4 v5, 0x1

    .line 1095
    invoke-virtual {v7, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 1099
    .line 1100
    .line 1101
    :cond_1d
    return-void

    .line 1102
    :pswitch_14
    check-cast v0, Lorg/wikipedia/commons/ImagePreviewDialog;

    .line 1103
    .line 1104
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 1105
    .line 1106
    .line 1107
    return-void

    .line 1108
    :pswitch_15
    check-cast v0, Lorg/wikipedia/commons/FilePageFragment;

    .line 1109
    .line 1110
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1115
    .line 1116
    .line 1117
    return-void

    .line 1118
    :pswitch_16
    check-cast v0, Lorg/wikipedia/categories/CategoryDialog;

    .line 1119
    .line 1120
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 1121
    .line 1122
    .line 1123
    return-void

    .line 1124
    :pswitch_17
    check-cast v0, Lorg/wikipedia/captcha/CaptchaHandler;

    .line 1125
    .line 1126
    iget-object v1, v0, Lorg/wikipedia/captcha/CaptchaHandler;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1127
    .line 1128
    if-eqz v1, :cond_1e

    .line 1129
    .line 1130
    const/4 v7, 0x0

    .line 1131
    const/16 v8, 0xfe

    .line 1132
    .line 1133
    const-string v2, "fancy_captcha_request_new"

    .line 1134
    .line 1135
    const/4 v3, 0x0

    .line 1136
    const/4 v4, 0x0

    .line 1137
    const/4 v5, 0x0

    .line 1138
    const/4 v6, 0x0

    .line 1139
    invoke-static/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1140
    .line 1141
    .line 1142
    :cond_1e
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->requestNewCaptcha()V

    .line 1143
    .line 1144
    .line 1145
    return-void

    .line 1146
    :pswitch_18
    check-cast v0, Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 1147
    .line 1148
    sget v1, Lorg/wikipedia/activity/SingleWebViewActivity;->$r8$clinit:I

    .line 1149
    .line 1150
    invoke-virtual {v0}, Lorg/wikipedia/activity/SingleWebViewActivity;->goBack()V

    .line 1151
    .line 1152
    .line 1153
    return-void

    .line 1154
    :pswitch_19
    move/from16 v18, v4

    .line 1155
    .line 1156
    move v5, v6

    .line 1157
    check-cast v0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 1158
    .line 1159
    iget-object v1, v0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 1160
    .line 1161
    if-nez v1, :cond_1f

    .line 1162
    .line 1163
    goto :goto_f

    .line 1164
    :cond_1f
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 1165
    .line 1166
    .line 1167
    move-result v1

    .line 1168
    iget-object v2, v0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 1169
    .line 1170
    if-eqz v2, :cond_20

    .line 1171
    .line 1172
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 1177
    .line 1178
    if-eqz v2, :cond_20

    .line 1179
    .line 1180
    move v4, v5

    .line 1181
    goto :goto_d

    .line 1182
    :cond_20
    move/from16 v4, v18

    .line 1183
    .line 1184
    :goto_d
    iget-object v2, v0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 1185
    .line 1186
    if-eqz v4, :cond_21

    .line 1187
    .line 1188
    const/4 v3, 0x0

    .line 1189
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1190
    .line 1191
    .line 1192
    goto :goto_e

    .line 1193
    :cond_21
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v3

    .line 1197
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1198
    .line 1199
    .line 1200
    :goto_e
    if-ltz v1, :cond_22

    .line 1201
    .line 1202
    iget-object v2, v0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 1203
    .line 1204
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1205
    .line 1206
    .line 1207
    :cond_22
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 1208
    .line 1209
    .line 1210
    :goto_f
    return-void

    .line 1211
    :pswitch_1a
    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 1212
    .line 1213
    invoke-virtual {v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 1214
    .line 1215
    .line 1216
    return-void

    .line 1217
    :pswitch_1b
    check-cast v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 1218
    .line 1219
    iget-object v1, v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 1220
    .line 1221
    if-nez v1, :cond_23

    .line 1222
    .line 1223
    goto :goto_10

    .line 1224
    :cond_23
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v2

    .line 1232
    if-eqz v2, :cond_24

    .line 1233
    .line 1234
    iget-object v2, v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 1235
    .line 1236
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1237
    .line 1238
    .line 1239
    :cond_24
    if-eqz v1, :cond_25

    .line 1240
    .line 1241
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1242
    .line 1243
    .line 1244
    :cond_25
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 1245
    .line 1246
    .line 1247
    :goto_10
    return-void

    .line 1248
    :pswitch_1c
    check-cast v0, Lorg/wikipedia/diff/DiffLineView;

    .line 1249
    .line 1250
    invoke-static {v0}, Lorg/wikipedia/diff/DiffLineView;->_init_$lambda$0(Lorg/wikipedia/diff/DiffLineView;)V

    .line 1251
    .line 1252
    .line 1253
    return-void

    .line 1254
    nop

    .line 1255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
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
