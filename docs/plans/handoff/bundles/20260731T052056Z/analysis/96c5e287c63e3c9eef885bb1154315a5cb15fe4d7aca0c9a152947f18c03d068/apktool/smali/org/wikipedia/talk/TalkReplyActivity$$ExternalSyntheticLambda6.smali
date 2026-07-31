.class public final synthetic Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkReplyActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

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
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v3, "binding"

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 20
    .line 21
    instance-of p1, p1, Lorg/wikipedia/util/Resource$Success;

    .line 22
    .line 23
    if-eqz p1, :cond_10

    .line 24
    .line 25
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const v0, 0x7f080110

    .line 30
    .line 31
    .line 32
    const v7, 0x7f0801f6

    .line 33
    .line 34
    .line 35
    const v8, 0x7f12099d

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 54
    .line 55
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v4

    .line 66
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 67
    .line 68
    if-eqz p1, :cond_f

    .line 69
    .line 70
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 73
    .line 74
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 80
    .line 81
    if-eqz p1, :cond_e

    .line 82
    .line 83
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 86
    .line 87
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    move v1, v7

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move v1, v0

    .line 98
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 102
    .line 103
    if-eqz p1, :cond_d

    .line 104
    .line 105
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 108
    .line 109
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 119
    .line 120
    if-eqz p1, :cond_c

    .line 121
    .line 122
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 125
    .line 126
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 127
    .line 128
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 129
    .line 130
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserNameFromCookie()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const/4 v4, 0x2

    .line 145
    new-array v4, v4, [Ljava/lang/Object;

    .line 146
    .line 147
    aput-object v1, v4, v6

    .line 148
    .line 149
    aput-object v3, v4, v5

    .line 150
    .line 151
    const v1, 0x7f120995

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-boolean v1, v1, Lorg/wikipedia/talk/TalkReplyViewModel;->tempAccountsEnabled:Z

    .line 164
    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    const v1, 0x7f12098f

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    const v1, 0x7f120991

    .line 172
    .line 173
    .line 174
    :goto_2
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-array v4, v5, [Ljava/lang/Object;

    .line 179
    .line 180
    aput-object v3, v4, v6

    .line 181
    .line 182
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    :goto_3
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 194
    .line 195
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTempAccountDialogShown()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_10

    .line 200
    .line 201
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_6

    .line 206
    .line 207
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_10

    .line 212
    .line 213
    :cond_6
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 214
    .line 215
    const v1, 0x7f13000c

    .line 216
    .line 217
    .line 218
    invoke-direct {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 224
    .line 225
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_7

    .line 230
    .line 231
    move v0, v7

    .line 232
    :cond_7
    iput v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 233
    .line 234
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_8

    .line 239
    .line 240
    const v0, 0x7f12099c

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_8
    const v0, 0x7f12099a

    .line 245
    .line 246
    .line 247
    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 248
    .line 249
    .line 250
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 251
    .line 252
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-array v3, v5, [Ljava/lang/Object;

    .line 263
    .line 264
    aput-object v0, v3, v6

    .line 265
    .line 266
    const v0, 0x7f12099b

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    goto :goto_7

    .line 274
    :cond_9
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->tempAccountsEnabled:Z

    .line 279
    .line 280
    if-eqz v0, :cond_a

    .line 281
    .line 282
    const v0, 0x7f12098e

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_a
    const v0, 0x7f120990

    .line 287
    .line 288
    .line 289
    :goto_6
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    new-array v4, v5, [Ljava/lang/Object;

    .line 294
    .line 295
    aput-object v3, v4, v6

    .line 296
    .line 297
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_7
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 306
    .line 307
    const v0, 0x7f120994

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    new-instance v1, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 315
    .line 316
    const/16 v3, 0x9

    .line 317
    .line 318
    invoke-direct {v1, v3}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 322
    .line 323
    .line 324
    const v0, 0x7f1200e2

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    new-instance v1, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;

    .line 332
    .line 333
    invoke-direct {v1, p0, v6}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    if-eqz p1, :cond_b

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    const v0, 0x102000b

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Landroid/widget/TextView;

    .line 361
    .line 362
    if-eqz p1, :cond_b

    .line 363
    .line 364
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 365
    .line 366
    new-instance v1, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;

    .line 367
    .line 368
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 369
    .line 370
    .line 371
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 375
    .line 376
    .line 377
    :cond_b
    const p0, 0x7f120697

    .line 378
    .line 379
    .line 380
    invoke-static {p0, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 381
    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v4

    .line 388
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v4

    .line 392
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v4

    .line 396
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v4

    .line 400
    :cond_10
    :goto_8
    return-object v2

    .line 401
    :pswitch_0
    sget-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Success;

    .line 407
    .line 408
    if-eqz v0, :cond_13

    .line 409
    .line 410
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    iput-boolean v5, p1, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplateSaved:Z

    .line 415
    .line 416
    iget-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 417
    .line 418
    if-eqz p1, :cond_12

    .line 419
    .line 420
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 421
    .line 422
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 423
    .line 424
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    iget-boolean p1, p1, Lorg/wikipedia/talk/TalkReplyViewModel;->templateManagementMode:Z

    .line 432
    .line 433
    if-nez p1, :cond_11

    .line 434
    .line 435
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->showEditPreview()V

    .line 436
    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_11
    const/4 p1, -0x1

    .line 440
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 444
    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v4

    .line 451
    :cond_13
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Error;

    .line 452
    .line 453
    if-eqz v0, :cond_14

    .line 454
    .line 455
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 456
    .line 457
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 458
    .line 459
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    :cond_14
    :goto_9
    return-object v2

    .line 463
    :pswitch_1
    sget-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 464
    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Success;

    .line 469
    .line 470
    const-string/jumbo v7, "wikitext"

    .line 471
    .line 472
    .line 473
    if-eqz v0, :cond_21

    .line 474
    .line 475
    iput-boolean v5, p0, Lorg/wikipedia/talk/TalkReplyActivity;->savedSuccess:Z

    .line 476
    .line 477
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 478
    .line 479
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast p1, Ljava/lang/Number;

    .line 482
    .line 483
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 484
    .line 485
    .line 486
    move-result-wide v8

    .line 487
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    if-nez p1, :cond_15

    .line 492
    .line 493
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 494
    .line 495
    new-instance p1, Ljava/util/Date;

    .line 496
    .line 497
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 501
    .line 502
    .line 503
    move-result-wide v10

    .line 504
    const p1, 0x7f12061d

    .line 505
    .line 506
    .line 507
    invoke-static {v10, v11, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 508
    .line 509
    .line 510
    :cond_15
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    iget-object p1, p1, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 515
    .line 516
    if-eqz p1, :cond_16

    .line 517
    .line 518
    iget-boolean p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->subjectOrBodyModified:Z

    .line 519
    .line 520
    if-eqz p1, :cond_16

    .line 521
    .line 522
    move v6, v5

    .line 523
    :cond_16
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    iget-boolean p1, p1, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplateSaved:Z

    .line 528
    .line 529
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isExampleTemplate:Z

    .line 534
    .line 535
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    iget-boolean v10, v10, Lorg/wikipedia/talk/TalkReplyViewModel;->isExampleTemplate:Z

    .line 540
    .line 541
    if-eqz v10, :cond_17

    .line 542
    .line 543
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 544
    .line 545
    .line 546
    move-result-object v10

    .line 547
    iget-object v10, v10, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 548
    .line 549
    if-eqz v10, :cond_17

    .line 550
    .line 551
    iget-object v10, v10, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_17
    move-object v10, v4

    .line 555
    :goto_a
    new-instance v11, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    const-string v12, "is_modified: "

    .line 558
    .line 559
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v6, ", "

    .line 566
    .line 567
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v11

    .line 574
    new-instance v12, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v13, "is_saved: "

    .line 577
    .line 578
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    new-instance v12, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    const-string v13, "is_example: "

    .line 594
    .line 595
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    if-eqz v10, :cond_18

    .line 609
    .line 610
    const-string v6, "example_message: "

    .line 611
    .line 612
    const-string v12, " "

    .line 613
    .line 614
    invoke-static {v6, v10, v12}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    goto :goto_b

    .line 619
    :cond_18
    move-object v6, v4

    .line 620
    :goto_b
    if-nez v6, :cond_19

    .line 621
    .line 622
    const-string v6, ""

    .line 623
    .line 624
    :cond_19
    invoke-static {v11, p1, v0, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    const-string v0, "publish_message_success"

    .line 629
    .line 630
    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    iget-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 634
    .line 635
    if-eqz p1, :cond_20

    .line 636
    .line 637
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 638
    .line 639
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 640
    .line 641
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p0, v5}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 645
    .line 646
    .line 647
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 648
    .line 649
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 654
    .line 655
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    invoke-static {v0, v7}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    new-instance p1, Landroid/content/Intent;

    .line 662
    .line 663
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 664
    .line 665
    .line 666
    const-string v0, "newRevisionId"

    .line 667
    .line 668
    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 669
    .line 670
    .line 671
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 672
    .line 673
    if-eqz v0, :cond_1f

    .line 674
    .line 675
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 676
    .line 677
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 678
    .line 679
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    const-string v1, "subject"

    .line 684
    .line 685
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 686
    .line 687
    .line 688
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 689
    .line 690
    if-eqz v0, :cond_1e

    .line 691
    .line 692
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 693
    .line 694
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 695
    .line 696
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    const-string v1, "body"

    .line 705
    .line 706
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 707
    .line 708
    .line 709
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 714
    .line 715
    if-eqz v0, :cond_1a

    .line 716
    .line 717
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 727
    .line 728
    const-string/jumbo v1, "topicId"

    .line 729
    .line 730
    .line 731
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    .line 733
    .line 734
    :cond_1a
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplateSaved:Z

    .line 739
    .line 740
    if-eqz v0, :cond_1b

    .line 741
    .line 742
    const/4 v5, 0x3

    .line 743
    :cond_1b
    invoke-virtual {p0, v5, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    iget-object p1, p1, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 751
    .line 752
    if-eqz p1, :cond_1d

    .line 753
    .line 754
    sget-object p1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 755
    .line 756
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 761
    .line 762
    if-eqz v0, :cond_1c

    .line 763
    .line 764
    iget-object v4, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 765
    .line 766
    :cond_1c
    invoke-virtual {p1, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 770
    .line 771
    .line 772
    goto :goto_c

    .line 773
    :cond_1e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    throw v4

    .line 777
    :cond_1f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    throw v4

    .line 781
    :cond_20
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    throw v4

    .line 785
    :cond_21
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Error;

    .line 786
    .line 787
    if-eqz v0, :cond_23

    .line 788
    .line 789
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 790
    .line 791
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 792
    .line 793
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 794
    .line 795
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    iget-object v6, v6, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 800
    .line 801
    const-string v8, "saveFailure"

    .line 802
    .line 803
    invoke-static {v0, v6, v8, v7, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 804
    .line 805
    .line 806
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 807
    .line 808
    if-eqz v0, :cond_22

    .line 809
    .line 810
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 811
    .line 812
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 813
    .line 814
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {p0, v5}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 818
    .line 819
    .line 820
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 821
    .line 822
    .line 823
    goto :goto_c

    .line 824
    :cond_22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    throw v4

    .line 828
    :cond_23
    :goto_c
    return-object v2

    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
