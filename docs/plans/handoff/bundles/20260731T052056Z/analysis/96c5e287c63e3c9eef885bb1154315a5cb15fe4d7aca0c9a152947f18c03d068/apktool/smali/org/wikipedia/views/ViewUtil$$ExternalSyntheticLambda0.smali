.class public final synthetic Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v0, 0xee

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "close_click"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const-string v4, "feedback_choice"

    .line 19
    .line 20
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;

    .line 28
    .line 29
    iget-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->callback:Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->filter:Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;->onCheckedChanged(Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_1
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_2
    check-cast p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;

    .line 52
    .line 53
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->binding:Lokhttp3/Request$Builder;

    .line 54
    .line 55
    iget-object p0, p0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void

    .line 75
    :pswitch_3
    check-cast p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 76
    .line 77
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :pswitch_4
    check-cast p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 86
    .line 87
    iget-object p0, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->callback:Lretrofit2/OkHttpCall$1;

    .line 88
    .line 89
    iget p1, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 90
    .line 91
    const/16 v0, 0x1a

    .line 92
    .line 93
    const/16 v2, 0x1e

    .line 94
    .line 95
    const/16 v3, 0x23

    .line 96
    .line 97
    sparse-switch p1, :sswitch_data_0

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    new-instance v5, Landroidx/paging/HintHandler;

    .line 120
    .line 121
    invoke-direct {v5, v4}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    if-lt v4, v3, :cond_4

    .line 127
    .line 128
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 129
    .line 130
    invoke-direct {v0, p1, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    if-lt v4, v2, :cond_5

    .line 135
    .line 136
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 137
    .line 138
    invoke-direct {v0, p1, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    if-lt v4, v0, :cond_6

    .line 143
    .line 144
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 145
    .line 146
    invoke-direct {v0, p1, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 151
    .line 152
    invoke-direct {v0, p1, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 156
    .line 157
    .line 158
    sget p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity;->$r8$clinit:I

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v0, Landroid/content/Intent;

    .line 165
    .line 166
    const-class v2, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 167
    .line 168
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :sswitch_0
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 179
    .line 180
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->launchFilterActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 181
    .line 182
    sget-object v0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 183
    .line 184
    new-instance v0, Landroid/content/Intent;

    .line 185
    .line 186
    const-class v2, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 187
    .line 188
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0, v1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :sswitch_1
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 198
    .line 199
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->launchFilterActivity:Landroidx/fragment/app/Fragment$10;

    .line 200
    .line 201
    sget v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->$r8$clinit:I

    .line 202
    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    new-instance v0, Landroid/content/Intent;

    .line 208
    .line 209
    const-class v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 210
    .line 211
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :sswitch_2
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 221
    .line 222
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->showFilterOverflowMenu()V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :sswitch_3
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v4, Landroidx/paging/HintHandler;

    .line 242
    .line 243
    invoke-direct {v4, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 247
    .line 248
    if-lt v1, v3, :cond_7

    .line 249
    .line 250
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 251
    .line 252
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_7
    if-lt v1, v2, :cond_8

    .line 257
    .line 258
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 259
    .line 260
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 261
    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_8
    if-lt v1, v0, :cond_9

    .line 265
    .line 266
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 267
    .line 268
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_9
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 273
    .line 274
    invoke-direct {v0, p1, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 275
    .line 276
    .line 277
    :goto_1
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 278
    .line 279
    .line 280
    sget p1, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    .line 281
    .line 282
    new-instance p1, Landroid/content/Intent;

    .line 283
    .line 284
    const-class v0, Lorg/wikipedia/notifications/NotificationFilterActivity;

    .line 285
    .line 286
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 290
    .line 291
    .line 292
    :goto_2
    return-void

    .line 293
    :pswitch_5
    check-cast p0, Lorg/wikipedia/views/PageActionOverflowView;

    .line 294
    .line 295
    invoke-virtual {p0}, Lorg/wikipedia/views/PageActionOverflowView;->dismissPopupWindowHost()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lorg/wikipedia/views/PageActionOverflowView;->getCallback()Lorg/wikipedia/page/action/PageActionItem$Callback;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    check-cast p0, Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 303
    .line 304
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 305
    .line 306
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 307
    .line 308
    if-eqz p1, :cond_d

    .line 309
    .line 310
    iget-object v0, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 313
    .line 314
    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 319
    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    add-int/lit8 v0, v0, -0x1

    .line 325
    .line 326
    if-ge v1, v0, :cond_b

    .line 327
    .line 328
    iget-object v0, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 331
    .line 332
    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    iget-object v2, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 337
    .line 338
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    add-int/lit8 v2, v2, -0x1

    .line 343
    .line 344
    if-ge v1, v2, :cond_a

    .line 345
    .line 346
    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    add-int/lit8 v1, v1, 0x1

    .line 351
    .line 352
    iput v1, v0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 353
    .line 354
    :cond_a
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->loadFromBackStack()V

    .line 355
    .line 356
    .line 357
    :cond_b
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 358
    .line 359
    if-eqz p0, :cond_c

    .line 360
    .line 361
    const-string p1, "forward"

    .line 362
    .line 363
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_c
    return-void

    .line 367
    :cond_d
    const-string p0, "pageFragmentLoadState"

    .line 368
    .line 369
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v1

    .line 373
    :pswitch_6
    check-cast p0, Lorg/wikipedia/views/NotificationActionsOverflowView;

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    check-cast p1, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 383
    .line 384
    iget-object p1, p1, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 385
    .line 386
    iget-object v0, p0, Lorg/wikipedia/views/NotificationActionsOverflowView;->container:Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 387
    .line 388
    if-eqz v0, :cond_12

    .line 389
    .line 390
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 391
    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-lez v2, :cond_10

    .line 397
    .line 398
    if-eqz v0, :cond_10

    .line 399
    .line 400
    iget-object v0, p0, Lorg/wikipedia/views/NotificationActionsOverflowView;->linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 401
    .line 402
    const-string v2, "linkHandler"

    .line 403
    .line 404
    if-eqz v0, :cond_f

    .line 405
    .line 406
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 407
    .line 408
    invoke-direct {v3, p1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iput-object v3, v0, Lorg/wikipedia/notifications/NotificationLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 412
    .line 413
    iget-object v0, p0, Lorg/wikipedia/views/NotificationActionsOverflowView;->linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 414
    .line 415
    if-eqz v0, :cond_e

    .line 416
    .line 417
    const-string v2, ""

    .line 418
    .line 419
    invoke-virtual {v0, p1, v1, v2}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v1

    .line 427
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v1

    .line 431
    :cond_10
    :goto_3
    iget-object p1, p0, Lorg/wikipedia/views/NotificationActionsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 432
    .line 433
    if-eqz p1, :cond_11

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 436
    .line 437
    .line 438
    :cond_11
    iput-object v1, p0, Lorg/wikipedia/views/NotificationActionsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 439
    .line 440
    return-void

    .line 441
    :cond_12
    const-string p0, "container"

    .line 442
    .line 443
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v1

    .line 447
    :pswitch_7
    check-cast p0, Lorg/wikipedia/views/LanguageScrollView;

    .line 448
    .line 449
    iget-object p0, p0, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 450
    .line 451
    if-eqz p0, :cond_13

    .line 452
    .line 453
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchFragment;->onLangButtonClick()V

    .line 454
    .line 455
    .line 456
    :cond_13
    return-void

    .line 457
    :pswitch_8
    check-cast p0, Landroid/view/ActionMode;

    .line 458
    .line 459
    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x16 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method
