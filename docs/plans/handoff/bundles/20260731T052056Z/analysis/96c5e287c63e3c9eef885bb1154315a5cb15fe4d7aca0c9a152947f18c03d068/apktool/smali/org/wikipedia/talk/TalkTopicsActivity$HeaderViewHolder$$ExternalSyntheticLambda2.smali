.class public final synthetic Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 6
    .line 7
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget p0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    sget p0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget p0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 27
    .line 28
    if-ne p0, v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->loadTopics()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :pswitch_1
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 44
    .line 45
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 46
    .line 47
    iget-object v4, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 48
    .line 49
    if-ne p1, v2, :cond_7

    .line 50
    .line 51
    const-wide/16 p0, 0x0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-string v2, "newRevisionId"

    .line 56
    .line 57
    invoke-virtual {v0, v2, p0, p1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    move-wide v5, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-wide v5, p0

    .line 64
    :goto_0
    const-string v2, ""

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const-string v3, "subject"

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v7, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    move-object v7, v2

    .line 80
    :goto_2
    if-eqz v0, :cond_5

    .line 81
    .line 82
    const-string v3, "body"

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move-object v8, v0

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    :goto_3
    move-object v8, v2

    .line 94
    :goto_4
    cmp-long p0, v5, p0

    .line 95
    .line 96
    if-lez p0, :cond_8

    .line 97
    .line 98
    const p0, 0x7f12094d

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/16 p1, 0xc

    .line 109
    .line 110
    invoke-static {v4, p0, v1, p1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    iget-object p1, v4, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;

    .line 126
    .line 127
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    const p1, 0x7f120962

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;

    .line 137
    .line 138
    const/4 v0, 0x3

    .line 139
    invoke-direct {p1, v4, v0}, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;-><init>(Landroid/app/Activity;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->loadTopics()V

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_6
    const-string p0, "binding"

    .line 157
    .line 158
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    throw p0

    .line 163
    :cond_7
    invoke-virtual {v4}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->loadTopics()V

    .line 168
    .line 169
    .line 170
    :cond_8
    :goto_5
    return-void

    .line 171
    :pswitch_2
    sget p0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iget p0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 177
    .line 178
    const/4 v0, -0x1

    .line 179
    if-ne p0, v0, :cond_b

    .line 180
    .line 181
    iget-object p0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 182
    .line 183
    if-eqz p0, :cond_b

    .line 184
    .line 185
    const-string p1, "activity_result_lang_position_data"

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_b

    .line 192
    .line 193
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 198
    .line 199
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-ge p0, p1, :cond_b

    .line 210
    .line 211
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 216
    .line 217
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    sget-object v0, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 222
    .line 223
    if-ne p1, v0, :cond_9

    .line 224
    .line 225
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {p1}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    :goto_6
    move-object v5, p1

    .line 242
    goto :goto_7

    .line 243
    :cond_9
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 248
    .line 249
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    sget-object v0, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 254
    .line 255
    if-ne p1, v0, :cond_a

    .line 256
    .line 257
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    check-cast p1, Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {p1}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    goto :goto_6

    .line 274
    :cond_a
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 279
    .line 280
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    goto :goto_6

    .line 285
    :goto_7
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 286
    .line 287
    sget-object p1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 288
    .line 289
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 294
    .line 295
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    const/16 v0, 0x3a

    .line 300
    .line 301
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    sget-object p1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 306
    .line 307
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    check-cast p0, Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-static {p0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    const/4 v11, 0x0

    .line 327
    const/4 v12, 0x0

    .line 328
    const/4 v8, 0x0

    .line 329
    const/4 v9, 0x0

    .line 330
    const/4 v10, 0x0

    .line 331
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->resetViews()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-static {v4}, Lorg/wikipedia/page/PageTitle;->copy$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 346
    .line 347
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->loadTopics()V

    .line 348
    .line 349
    .line 350
    :cond_b
    return-void

    .line 351
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->resetViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->loadTopics()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "binding"

    .line 27
    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget p1, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->goToPage()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public sortByClicked(I)V
    .locals 2

    .line 1
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput p1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSortMode:I

    .line 10
    .line 11
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    const v1, 0x7f120695

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortAndFilterThreadItems()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->talkTopicItemAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
