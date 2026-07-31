.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

    .line 5
    .line 6
    const-string v3, "Deleting item failed"

    .line 7
    .line 8
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 17
    .line 18
    sget v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 19
    .line 20
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 21
    .line 22
    invoke-direct {v0, p1, v4, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 30
    .line 31
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 42
    .line 43
    invoke-static {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$lambda$_nKY-_qzNUEIiNoFyBa7FXIRdwc(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    .line 48
    .line 49
    sget v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 50
    .line 51
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 52
    .line 53
    invoke-direct {v0, p1, v4, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    .line 61
    .line 62
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    .line 73
    .line 74
    sget p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 75
    .line 76
    const p1, 0x7f130515

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showTextError(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_6
    check-cast p1, Landroid/content/Intent;

    .line 88
    .line 89
    sget v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_7
    check-cast p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 105
    .line 106
    invoke-virtual {p0, v5}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 110
    .line 111
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->addInfoItemList(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->errors:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_1

    .line 123
    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 125
    .line 126
    iget-object v7, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->errors:Ljava/util/List;

    .line 127
    .line 128
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 129
    .line 130
    sget-object v8, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    .line 131
    .line 132
    const-string v2, "\""

    .line 133
    .line 134
    if-nez v0, :cond_0

    .line 135
    .line 136
    new-instance v6, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 137
    .line 138
    const-string v0, "\" \u2192 nextPage == null"

    .line 139
    .line 140
    invoke-static {v2, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 145
    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-direct/range {v6 .. v11}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v6}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_0
    new-instance v6, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 162
    .line 163
    const-string v0, "\" \u2192 pageUrl: "

    .line 164
    .line 165
    invoke-static {v2, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 170
    .line 171
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, ", pageIds: "

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 184
    .line 185
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", pageCookies: "

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 198
    .line 199
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Page;->getCookies()Ljava/util/Map;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 211
    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    invoke-direct/range {v6 .. v11}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v6}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 224
    .line 225
    .line 226
    :cond_1
    :goto_0
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 227
    .line 228
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 229
    .line 230
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 231
    .line 232
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :pswitch_8
    check-cast p1, Ljava/lang/Throwable;

    .line 237
    .line 238
    sget v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 239
    .line 240
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 241
    .line 242
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 243
    .line 244
    iget v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 245
    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-direct {v0, p1, v2, v1, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_9
    check-cast p1, Lio/reactivex/rxjava3/core/Notification;

    .line 258
    .line 259
    sget v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 260
    .line 261
    iget-object v0, p1, Lio/reactivex/rxjava3/core/Notification;->value:Ljava/lang/Object;

    .line 262
    .line 263
    iget-object v3, p1, Lio/reactivex/rxjava3/core/Notification;->value:Ljava/lang/Object;

    .line 264
    .line 265
    if-eqz v0, :cond_2

    .line 266
    .line 267
    instance-of v4, v0, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 268
    .line 269
    if-nez v4, :cond_2

    .line 270
    .line 271
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_6

    .line 276
    .line 277
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Ljava/util/List;

    .line 282
    .line 283
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 284
    .line 285
    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda21;

    .line 286
    .line 287
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 291
    .line 292
    .line 293
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 294
    .line 295
    if-eqz p1, :cond_6

    .line 296
    .line 297
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 298
    .line 299
    iget-object p1, p1, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-nez p1, :cond_6

    .line 306
    .line 307
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideLoading()V

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_2
    instance-of p1, v0, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 312
    .line 313
    if-eqz p1, :cond_6

    .line 314
    .line 315
    instance-of p1, v0, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 316
    .line 317
    const/4 v4, 0x0

    .line 318
    if-eqz p1, :cond_3

    .line 319
    .line 320
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    goto :goto_1

    .line 325
    :cond_3
    move-object p1, v4

    .line 326
    :goto_1
    if-eqz p1, :cond_6

    .line 327
    .line 328
    instance-of p1, v3, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 329
    .line 330
    if-eqz p1, :cond_4

    .line 331
    .line 332
    invoke-static {v3}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    goto :goto_2

    .line 337
    :cond_4
    move-object p1, v4

    .line 338
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    const/4 v0, 0x2

    .line 342
    new-array v6, v0, [Ljava/lang/Class;

    .line 343
    .line 344
    const-class v7, Ljava/io/InterruptedIOException;

    .line 345
    .line 346
    aput-object v7, v6, v5

    .line 347
    .line 348
    const-class v7, Ljava/lang/InterruptedException;

    .line 349
    .line 350
    aput-object v7, v6, v1

    .line 351
    .line 352
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, [Ljava/lang/Class;

    .line 357
    .line 358
    invoke-static {p1, v5, v0}, Lkotlin/text/CharsKt;->hasCause(Ljava/lang/Throwable;Z[Ljava/lang/Class;)Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-nez p1, :cond_6

    .line 363
    .line 364
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 365
    .line 366
    instance-of v0, v3, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 367
    .line 368
    if-eqz v0, :cond_5

    .line 369
    .line 370
    invoke-static {v3}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 375
    .line 376
    iget v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 377
    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-direct {p1, v4, v2, v0, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 386
    .line 387
    .line 388
    :cond_6
    :goto_3
    return-void

    .line 389
    :pswitch_a
    check-cast p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    .line 390
    .line 391
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-nez v2, :cond_8

    .line 400
    .line 401
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-ne v2, v1, :cond_7

    .line 406
    .line 407
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    instance-of v0, v0, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;

    .line 412
    .line 413
    if-nez v0, :cond_8

    .line 414
    .line 415
    :cond_7
    new-instance v6, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 416
    .line 417
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    iget-object v9, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 422
    .line 423
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 424
    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v10

    .line 429
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v11

    .line 433
    sget-object v8, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    .line 434
    .line 435
    invoke-direct/range {v6 .. v11}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, v6}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 439
    .line 440
    .line 441
    :cond_8
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getSearchSuggestion()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 446
    .line 447
    if-eqz v0, :cond_9

    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 454
    .line 455
    :cond_9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch()Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    .line 460
    .line 461
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getMetaInfo()Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    new-array v1, v5, [Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 466
    .line 467
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    check-cast v0, [Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 472
    .line 473
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 474
    .line 475
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getMetaInfo()Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 480
    .line 481
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 484
    .line 485
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerArrow:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v1, Landroid/view/View;

    .line 488
    .line 489
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 490
    .line 491
    invoke-static {v0, v2, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->handleSearchSuggestion()V

    .line 495
    .line 496
    .line 497
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 498
    .line 499
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 506
    .line 507
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 508
    .line 509
    iget-object v0, v0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_b

    .line 516
    .line 517
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 526
    .line 527
    if-nez v0, :cond_a

    .line 528
    .line 529
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->addInfoItemList(Ljava/util/List;)V

    .line 534
    .line 535
    .line 536
    goto :goto_4

    .line 537
    :cond_a
    invoke-virtual {v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showEmptyState()V

    .line 541
    .line 542
    .line 543
    goto :goto_5

    .line 544
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideLoading()V

    .line 545
    .line 546
    .line 547
    :goto_5
    return-void

    .line 548
    nop

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    iget p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x0

    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    sget p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 549
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 550
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    sget p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 551
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-boolean v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    .line 21
    .line 22
    const/16 v4, 0x18

    .line 23
    .line 24
    const/4 v5, 0x5

    .line 25
    const/4 v6, 0x3

    .line 26
    const/4 v7, 0x2

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v6, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getLocalSuggestionsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 36
    .line 37
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    invoke-direct {v3, p0, v2, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 46
    .line 47
    invoke-direct {p0, v3, v6}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 51
    .line 52
    invoke-direct {p1, p0, v5}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 56
    .line 57
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 61
    .line 62
    invoke-direct {v3, p1, p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    new-instance p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 66
    .line 67
    const/16 p1, 0x16

    .line 68
    .line 69
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 73
    .line 74
    const/16 v4, 0xf

    .line 75
    .line 76
    invoke-direct {p1, p0, v4}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    sget p0, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 80
    .line 81
    new-array v4, v7, [Lio/reactivex/rxjava3/core/Observable;

    .line 82
    .line 83
    aput-object v0, v4, v1

    .line 84
    .line 85
    aput-object v3, v4, v2

    .line 86
    .line 87
    const-string v0, "bufferSize"

    .line 88
    .line 89
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;

    .line 93
    .line 94
    invoke-direct {v0, v4, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip;-><init>([Lio/reactivex/rxjava3/core/Observable;Lokhttp3/ConnectionPool;I)V

    .line 95
    .line 96
    .line 97
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;

    .line 98
    .line 99
    invoke-direct {p0, v0, v7}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/rxjava3/core/Observable;I)V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :cond_1
    if-eqz v3, :cond_2

    .line 104
    .line 105
    const/16 v0, 0x19

    .line 106
    .line 107
    invoke-virtual {p0, v0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getLocalSuggestionsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;

    .line 112
    .line 113
    invoke-direct {p1, p0, v7}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/rxjava3/core/Observable;I)V

    .line 114
    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_2
    if-eqz v0, :cond_3

    .line 118
    .line 119
    iget p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 120
    .line 121
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    .line 125
    .line 126
    invoke-direct {v0, p0, v2, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 130
    .line 131
    invoke-direct {p0, v0, v6}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 135
    .line 136
    invoke-direct {p1, p0, v5}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 137
    .line 138
    .line 139
    new-instance p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 140
    .line 141
    invoke-direct {p0, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 145
    .line 146
    invoke-direct {v0, p1, p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;

    .line 150
    .line 151
    invoke-direct {p0, v0, v7}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/rxjava3/core/Observable;I)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda23;

    .line 156
    .line 157
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda23;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 161
    .line 162
    invoke-direct {p1, p0, v6}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 163
    .line 164
    .line 165
    new-instance p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 166
    .line 167
    invoke-direct {p0, p1, v5}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;

    .line 171
    .line 172
    invoke-direct {p1, p0, v7}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/rxjava3/core/Observable;I)V

    .line 173
    .line 174
    .line 175
    return-object p1
.end method
