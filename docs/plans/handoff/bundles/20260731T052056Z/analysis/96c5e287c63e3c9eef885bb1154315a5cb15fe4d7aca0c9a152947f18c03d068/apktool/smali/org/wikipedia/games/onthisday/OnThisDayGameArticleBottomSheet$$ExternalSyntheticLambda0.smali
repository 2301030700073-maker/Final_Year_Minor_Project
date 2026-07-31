.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

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
    .locals 13

    .line 1
    iget p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/16 v1, 0x2b

    .line 5
    .line 6
    iget-object v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

    .line 7
    .line 8
    const-string v3, "pageSummary"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-boolean p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 v7, 0x0

    .line 25
    const/16 v5, 0x3d8

    .line 26
    .line 27
    const-string v8, "read_click"

    .line 28
    .line 29
    const-string v9, "game_play"

    .line 30
    .line 31
    const-string v10, "game_end_article"

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lorg/wikipedia/history/HistoryEntry;

    .line 39
    .line 40
    iget-object p1, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, v1, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 55
    .line 56
    .line 57
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1, p0, v0}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v2, p0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v4

    .line 79
    :pswitch_0
    invoke-virtual {v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-boolean p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 84
    .line 85
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const/4 v7, 0x0

    .line 90
    const/16 v5, 0x3d8

    .line 91
    .line 92
    const-string v8, "share_click"

    .line 93
    .line 94
    const-string v9, "game_play"

    .line 95
    .line 96
    const-string v10, "game_end_article"

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    const/4 v12, 0x0

    .line 100
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    iget-object p1, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 108
    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v4

    .line 129
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 136
    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const/4 v7, 0x0

    .line 142
    const/16 v5, 0x3d8

    .line 143
    .line 144
    const-string v8, "save_click"

    .line 145
    .line 146
    const-string v9, "game_play"

    .line 147
    .line 148
    const-string v10, "game_end_article"

    .line 149
    .line 150
    const/4 v11, 0x0

    .line 151
    const/4 v12, 0x0

    .line 152
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 161
    .line 162
    move-object v6, p1

    .line 163
    check-cast v6, Landroid/widget/ImageView;

    .line 164
    .line 165
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 166
    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 174
    .line 175
    invoke-virtual {v5, p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iget-object v2, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_2

    .line 190
    .line 191
    new-instance v0, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 192
    .line 193
    new-instance v2, Lokio/internal/DefaultSocket;

    .line 194
    .line 195
    const/16 v7, 0x1a

    .line 196
    .line 197
    move-object v3, p0

    .line 198
    move-object v4, p1

    .line 199
    invoke-direct/range {v2 .. v7}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 200
    .line 201
    .line 202
    move-object p0, v4

    .line 203
    const/16 v10, 0x1c

    .line 204
    .line 205
    const/4 v7, 0x0

    .line 206
    const/4 v8, 0x0

    .line 207
    move-object v5, v0

    .line 208
    move-object v9, v2

    .line 209
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 213
    .line 214
    invoke-direct {p1, v1, p0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_2
    move-object v3, p0

    .line 222
    move-object p0, p1

    .line 223
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 224
    .line 225
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_GAME_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 230
    .line 231
    invoke-static {p1, p0, v0, v1, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    const p0, 0x7f08012c

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->callback()Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    if-eqz p0, :cond_3

    .line 254
    .line 255
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 256
    .line 257
    invoke-virtual {p0, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->onPageBookmarkChanged(Lorg/wikipedia/dataclient/page/PageSummary;)V

    .line 258
    .line 259
    .line 260
    :cond_3
    :goto_0
    return-void

    .line 261
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v4

    .line 265
    :pswitch_2
    iget-object p0, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 266
    .line 267
    if-eqz p0, :cond_6

    .line 268
    .line 269
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getLeadImageName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    if-nez p0, :cond_5

    .line 274
    .line 275
    const-string p0, ""

    .line 276
    .line 277
    :cond_5
    :try_start_0
    const-string p1, "+"

    .line 278
    .line 279
    const-string v1, "%2B"

    .line 280
    .line 281
    invoke-static {p0, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    const-string v1, "UTF-8"

    .line 286
    .line 287
    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .line 293
    .line 294
    move-object p0, p1

    .line 295
    goto :goto_1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    move-object p0, v0

    .line 298
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :catch_1
    const-string p1, "URL decoding failed. String was: "

    .line 303
    .line 304
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :goto_1
    new-instance p1, Lorg/wikipedia/page/PageTitle;

    .line 312
    .line 313
    const-string v1, "File:"

    .line 314
    .line 315
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 324
    .line 325
    invoke-direct {p1, p0, v1, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    sget p0, Lorg/wikipedia/commons/FilePageActivity;->$r8$clinit:I

    .line 329
    .line 330
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-static {p0, p1, v0}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {v2, p0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 339
    .line 340
    .line 341
    :goto_2
    return-void

    .line 342
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v4

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
