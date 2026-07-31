.class public final synthetic Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/WikiTextKeyboardView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/WikiTextKeyboardView;

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
    .locals 12

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "]]"

    .line 4
    .line 5
    const-string v1, "[["

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 20
    .line 21
    iget-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertMedia:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    .line 25
    sget v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->$r8$clinit:I

    .line 26
    .line 27
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v3, v0

    .line 30
    check-cast v3, Lorg/wikipedia/activity/BaseActivity;

    .line 31
    .line 32
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 35
    .line 36
    iget-object v4, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->invokeSource:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    .line 41
    .line 42
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 43
    .line 44
    if-ne v1, v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    move-object v5, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const-string v0, ""

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->invokeSource:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v6, p0

    .line 58
    check-cast v6, Lorg/wikipedia/Constants$InvokeSource;

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    const/16 v9, 0x70

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-static/range {v3 .. v9}, Lokio/ByteString$Companion;->newIntent$default(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 73
    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    const-string p1, "\n# "

    .line 83
    .line 84
    invoke-interface {p0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    const-string p1, "\n* "

    .line 99
    .line 100
    invoke-interface {p0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void

    .line 104
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 115
    .line 116
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 117
    .line 118
    const-string v0, "<ref>"

    .line 119
    .line 120
    const-string v1, "</ref>"

    .line 121
    .line 122
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    return-void

    .line 126
    :pswitch_3
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 127
    .line 128
    if-eqz p0, :cond_7

    .line 129
    .line 130
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 131
    .line 132
    iget-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->invokeSource:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Lorg/wikipedia/Constants$InvokeSource;

    .line 135
    .line 136
    iget-boolean v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->isFromDiff:Z

    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->TALK_REPLY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 141
    .line 142
    if-ne p1, v1, :cond_5

    .line 143
    .line 144
    const-string v1, "pt_talk"

    .line 145
    .line 146
    :goto_2
    move-object v5, v1

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    const-string v1, "pt_edit"

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :goto_3
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 152
    .line 153
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 154
    .line 155
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 156
    .line 157
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 162
    .line 163
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    const-string v9, "app_patroller_experience"

    .line 168
    .line 169
    const-string v4, "template_init"

    .line 170
    .line 171
    const-string v6, ""

    .line 172
    .line 173
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertTemplate:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 182
    .line 183
    sget v3, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->$r8$clinit:I

    .line 184
    .line 185
    iget-object v3, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v3, Lorg/wikipedia/activity/BaseActivity;

    .line 188
    .line 189
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 192
    .line 193
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    new-instance v4, Landroid/content/Intent;

    .line 202
    .line 203
    const-class v5, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 204
    .line 205
    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .line 207
    .line 208
    const-string/jumbo v3, "wikiSite"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    const-string v3, "isFromDiff"

    .line 216
    .line 217
    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    const-string v0, "invokeSource"

    .line 222
    .line 223
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, p0, v2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    return-void

    .line 234
    :pswitch_4
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 235
    .line 236
    if-eqz p0, :cond_9

    .line 237
    .line 238
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 239
    .line 240
    iget-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardHeadingsView:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p1, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_8

    .line 249
    .line 250
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_8
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p0, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 263
    .line 264
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 265
    .line 266
    iget-object p1, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast p1, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 269
    .line 270
    invoke-virtual {p1, v3}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpanded(Z)V

    .line 271
    .line 272
    .line 273
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 276
    .line 277
    invoke-virtual {p0, v4}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpanded(Z)V

    .line 278
    .line 279
    .line 280
    :cond_9
    :goto_4
    return-void

    .line 281
    :pswitch_5
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 282
    .line 283
    if-eqz p0, :cond_b

    .line 284
    .line 285
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 286
    .line 287
    iget-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_a

    .line 296
    .line 297
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_a
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast p0, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 310
    .line 311
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 312
    .line 313
    iget-object p1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast p1, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 316
    .line 317
    invoke-virtual {p1, v3}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpanded(Z)V

    .line 318
    .line 319
    .line 320
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 323
    .line 324
    invoke-virtual {p0, v4}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpanded(Z)V

    .line 325
    .line 326
    .line 327
    :cond_b
    :goto_5
    return-void

    .line 328
    :pswitch_6
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 329
    .line 330
    if-eqz p0, :cond_c

    .line 331
    .line 332
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    if-eqz p0, :cond_c

    .line 337
    .line 338
    const-string p1, "@"

    .line 339
    .line 340
    invoke-interface {p0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 341
    .line 342
    .line 343
    :cond_c
    return-void

    .line 344
    :pswitch_7
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 345
    .line 346
    if-eqz p0, :cond_d

    .line 347
    .line 348
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 349
    .line 350
    if-eqz p0, :cond_d

    .line 351
    .line 352
    new-instance v0, Landroid/view/KeyEvent;

    .line 353
    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 355
    .line 356
    .line 357
    move-result-wide v1

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 359
    .line 360
    .line 361
    move-result-wide v3

    .line 362
    const/4 v7, 0x0

    .line 363
    const/16 v8, 0x1001

    .line 364
    .line 365
    const/4 v5, 0x0

    .line 366
    const/16 v6, 0x36

    .line 367
    .line 368
    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 369
    .line 370
    .line 371
    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 372
    .line 373
    .line 374
    new-instance v1, Landroid/view/KeyEvent;

    .line 375
    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 377
    .line 378
    .line 379
    move-result-wide v2

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 381
    .line 382
    .line 383
    move-result-wide v4

    .line 384
    const/4 v8, 0x0

    .line 385
    const/16 v9, 0x1001

    .line 386
    .line 387
    const/4 v6, 0x1

    .line 388
    const/16 v7, 0x36

    .line 389
    .line 390
    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 391
    .line 392
    .line 393
    invoke-interface {p0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 394
    .line 395
    .line 396
    :cond_d
    return-void

    .line 397
    :pswitch_8
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 398
    .line 399
    if-eqz p0, :cond_e

    .line 400
    .line 401
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 402
    .line 403
    if-eqz p0, :cond_e

    .line 404
    .line 405
    new-instance v0, Landroid/view/KeyEvent;

    .line 406
    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 408
    .line 409
    .line 410
    move-result-wide v1

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 412
    .line 413
    .line 414
    move-result-wide v3

    .line 415
    const/4 v7, 0x0

    .line 416
    const/16 v8, 0x1000

    .line 417
    .line 418
    const/4 v5, 0x0

    .line 419
    const/16 v6, 0x36

    .line 420
    .line 421
    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 422
    .line 423
    .line 424
    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 425
    .line 426
    .line 427
    new-instance v1, Landroid/view/KeyEvent;

    .line 428
    .line 429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 430
    .line 431
    .line 432
    move-result-wide v2

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 434
    .line 435
    .line 436
    move-result-wide v4

    .line 437
    const/4 v8, 0x0

    .line 438
    const/16 v9, 0x1000

    .line 439
    .line 440
    const/4 v6, 0x1

    .line 441
    const/16 v7, 0x36

    .line 442
    .line 443
    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 444
    .line 445
    .line 446
    invoke-interface {p0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 447
    .line 448
    .line 449
    :cond_e
    return-void

    .line 450
    :pswitch_9
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 451
    .line 452
    if-eqz p1, :cond_21

    .line 453
    .line 454
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    if-eqz p1, :cond_21

    .line 459
    .line 460
    invoke-interface {p1, v3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    if-eqz v5, :cond_f

    .line 465
    .line 466
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    goto :goto_6

    .line 471
    :cond_f
    move-object v5, v2

    .line 472
    :goto_6
    const/4 v6, 0x2

    .line 473
    if-eqz v5, :cond_19

    .line 474
    .line 475
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    if-nez v7, :cond_10

    .line 480
    .line 481
    goto :goto_d

    .line 482
    :cond_10
    invoke-static {v5, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 483
    .line 484
    .line 485
    move-result v7

    .line 486
    if-nez v7, :cond_19

    .line 487
    .line 488
    const/4 p1, 0x5

    .line 489
    new-array v0, p1, [C

    .line 490
    .line 491
    fill-array-data v0, :array_0

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    sub-int/2addr v1, v4

    .line 499
    move v7, v3

    .line 500
    move v8, v7

    .line 501
    :goto_7
    if-gt v7, v1, :cond_18

    .line 502
    .line 503
    if-nez v8, :cond_11

    .line 504
    .line 505
    move v9, v7

    .line 506
    goto :goto_8

    .line 507
    :cond_11
    move v9, v1

    .line 508
    :goto_8
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    move v10, v3

    .line 513
    :goto_9
    if-ge v10, p1, :cond_13

    .line 514
    .line 515
    aget-char v11, v0, v10

    .line 516
    .line 517
    if-ne v9, v11, :cond_12

    .line 518
    .line 519
    goto :goto_a

    .line 520
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 521
    .line 522
    goto :goto_9

    .line 523
    :cond_13
    const/4 v10, -0x1

    .line 524
    :goto_a
    if-ltz v10, :cond_14

    .line 525
    .line 526
    move v9, v4

    .line 527
    goto :goto_b

    .line 528
    :cond_14
    move v9, v3

    .line 529
    :goto_b
    if-nez v8, :cond_16

    .line 530
    .line 531
    if-nez v9, :cond_15

    .line 532
    .line 533
    move v8, v4

    .line 534
    goto :goto_7

    .line 535
    :cond_15
    add-int/lit8 v7, v7, 0x1

    .line 536
    .line 537
    goto :goto_7

    .line 538
    :cond_16
    if-nez v9, :cond_17

    .line 539
    .line 540
    goto :goto_c

    .line 541
    :cond_17
    add-int/lit8 v1, v1, -0x1

    .line 542
    .line 543
    goto :goto_7

    .line 544
    :cond_18
    :goto_c
    add-int/2addr v1, v4

    .line 545
    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    goto/16 :goto_12

    .line 554
    .line 555
    :cond_19
    :goto_d
    if-eqz v5, :cond_1a

    .line 556
    .line 557
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-le v7, v4, :cond_1a

    .line 562
    .line 563
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 564
    .line 565
    .line 566
    move-result p1

    .line 567
    div-int/2addr p1, v6

    .line 568
    invoke-virtual {v5, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    div-int/2addr v7, v6

    .line 577
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    new-instance v7, Lkotlin/Pair;

    .line 582
    .line 583
    invoke-direct {v7, p1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_1a
    const/16 v5, 0x40

    .line 588
    .line 589
    invoke-interface {p1, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    .line 590
    .line 591
    .line 592
    move-result-object v7

    .line 593
    if-eqz v7, :cond_1b

    .line 594
    .line 595
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    goto :goto_e

    .line 600
    :cond_1b
    move-object v7, v2

    .line 601
    :goto_e
    invoke-interface {p1, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    if-eqz p1, :cond_1c

    .line 606
    .line 607
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    goto :goto_f

    .line 612
    :cond_1c
    move-object p1, v2

    .line 613
    :goto_f
    new-instance v5, Lkotlin/Pair;

    .line 614
    .line 615
    invoke-direct {v5, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    move-object v7, v5

    .line 619
    :goto_10
    iget-object p1, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast p1, Ljava/lang/String;

    .line 622
    .line 623
    iget-object v5, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 624
    .line 625
    check-cast v5, Ljava/lang/String;

    .line 626
    .line 627
    if-eqz p1, :cond_1f

    .line 628
    .line 629
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 630
    .line 631
    .line 632
    move-result v7

    .line 633
    if-nez v7, :cond_1d

    .line 634
    .line 635
    goto :goto_11

    .line 636
    :cond_1d
    if-eqz v5, :cond_1f

    .line 637
    .line 638
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 639
    .line 640
    .line 641
    move-result v7

    .line 642
    if-nez v7, :cond_1e

    .line 643
    .line 644
    goto :goto_11

    .line 645
    :cond_1e
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    const/4 v7, 0x6

    .line 650
    invoke-static {v7, p1, v1}, Lkotlin/text/StringsKt;->lastIndexOf$default(ILjava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    if-ltz p1, :cond_1f

    .line 655
    .line 656
    add-int/2addr p1, v6

    .line 657
    invoke-virtual {v5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object p1

    .line 661
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    new-array v0, v4, [C

    .line 674
    .line 675
    const/16 v1, 0x7c

    .line 676
    .line 677
    aput-char v1, v0, v3

    .line 678
    .line 679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default(Ljava/lang/CharSequence;[C)Lkotlin/io/FileTreeWalk;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 687
    .line 688
    const/16 v5, 0x19

    .line 689
    .line 690
    invoke-direct {v1, v5, p1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 691
    .line 692
    .line 693
    new-instance p1, Lkotlin/sequences/TransformingSequence;

    .line 694
    .line 695
    invoke-direct {p1, v0, v1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 696
    .line 697
    .line 698
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    check-cast p1, Ljava/lang/String;

    .line 703
    .line 704
    if-eqz p1, :cond_1f

    .line 705
    .line 706
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-nez v0, :cond_20

    .line 711
    .line 712
    :cond_1f
    :goto_11
    move-object p1, v2

    .line 713
    :cond_20
    :goto_12
    if-eqz p1, :cond_21

    .line 714
    .line 715
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 716
    .line 717
    if-eqz p0, :cond_21

    .line 718
    .line 719
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 720
    .line 721
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v0, Lorg/wikipedia/activity/BaseActivity;

    .line 724
    .line 725
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 730
    .line 731
    new-instance v5, Lorg/wikipedia/page/PageTitle;

    .line 732
    .line 733
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 734
    .line 735
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 736
    .line 737
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 738
    .line 739
    invoke-direct {v5, p1, p0, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-direct {v1, v6, v5}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 743
    .line 744
    .line 745
    new-instance p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 746
    .line 747
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;-><init>()V

    .line 748
    .line 749
    .line 750
    new-instance p1, Lkotlin/Pair;

    .line 751
    .line 752
    const-string v5, "entry"

    .line 753
    .line 754
    invoke-direct {p1, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    new-instance v1, Lkotlin/Pair;

    .line 758
    .line 759
    const-string v5, "location"

    .line 760
    .line 761
    invoke-direct {v1, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    new-instance v5, Lkotlin/Pair;

    .line 765
    .line 766
    const-string v7, "lastKnownLocation"

    .line 767
    .line 768
    invoke-direct {v5, v7, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 769
    .line 770
    .line 771
    const/4 v2, 0x3

    .line 772
    new-array v2, v2, [Lkotlin/Pair;

    .line 773
    .line 774
    aput-object p1, v2, v3

    .line 775
    .line 776
    aput-object v1, v2, v4

    .line 777
    .line 778
    aput-object v5, v2, v6

    .line 779
    .line 780
    invoke-static {v2}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 781
    .line 782
    .line 783
    move-result-object p1

    .line 784
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 785
    .line 786
    .line 787
    invoke-static {v0, p0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 788
    .line 789
    .line 790
    :cond_21
    return-void

    .line 791
    :pswitch_a
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 792
    .line 793
    if-eqz p1, :cond_24

    .line 794
    .line 795
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    if-eqz p1, :cond_24

    .line 800
    .line 801
    invoke-interface {p1, v3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    if-eqz v3, :cond_23

    .line 806
    .line 807
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    if-nez v3, :cond_22

    .line 812
    .line 813
    goto :goto_13

    .line 814
    :cond_22
    sget v2, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 815
    .line 816
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 817
    .line 818
    invoke-static {p0, p1, v1, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    goto :goto_14

    .line 822
    :cond_23
    :goto_13
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 823
    .line 824
    if-eqz p0, :cond_24

    .line 825
    .line 826
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 827
    .line 828
    iget-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestLinkFromSearch:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 831
    .line 832
    sget v0, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 833
    .line 834
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 835
    .line 836
    check-cast v0, Lorg/wikipedia/activity/BaseActivity;

    .line 837
    .line 838
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->invokeSource:Ljava/lang/Object;

    .line 839
    .line 840
    check-cast p0, Lorg/wikipedia/Constants$InvokeSource;

    .line 841
    .line 842
    const/16 v1, 0x30

    .line 843
    .line 844
    invoke-static {v0, p0, v2, v2, v1}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    .line 846
    .line 847
    move-result-object p0

    .line 848
    invoke-virtual {p1, p0, v2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 849
    .line 850
    .line 851
    :cond_24
    :goto_14
    return-void

    .line 852
    nop

    .line 853
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

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :array_0
    .array-data 2
        0x2es
        0x2cs
        0x3bs
        0x3fs
        0x21s
    .end array-data
.end method
