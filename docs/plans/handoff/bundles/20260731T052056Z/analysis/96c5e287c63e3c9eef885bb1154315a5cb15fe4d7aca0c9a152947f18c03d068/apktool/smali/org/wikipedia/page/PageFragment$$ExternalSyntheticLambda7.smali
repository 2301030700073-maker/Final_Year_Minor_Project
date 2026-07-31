.class public final synthetic Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "title"

    .line 4
    .line 5
    const-string v2, "URL decoding failed. String was: "

    .line 6
    .line 7
    const-string v3, "UTF-8"

    .line 8
    .line 9
    const-string v4, "%2B"

    .line 10
    .line 11
    const-string v5, "+"

    .line 12
    .line 13
    const-string v6, "href"

    .line 14
    .line 15
    const-string v7, ""

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    sget p2, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :pswitch_0
    sget p2, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const p2, 0x7f1200ba

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 84
    .line 85
    sget v1, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    if-eqz p2, :cond_d

    .line 91
    .line 92
    const-string p1, "itemType"

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 99
    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    move-object p1, v9

    .line 112
    :goto_0
    if-eqz p1, :cond_d

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sparse-switch v1, :sswitch_data_0

    .line 119
    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :sswitch_0
    const-string p0, "disambiguation"

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :sswitch_1
    const-string p2, "lastEdited"

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_2

    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_2
    iget-object p1, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 143
    .line 144
    if-eqz p1, :cond_d

    .line 145
    .line 146
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 147
    .line 148
    if-eqz p2, :cond_3

    .line 149
    .line 150
    const-string v0, "edit_history_from_article"

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    sget p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2, p1}, Lokio/Options$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0, p1, v9}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :sswitch_2
    const-string p2, "languages"

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_4

    .line 177
    .line 178
    goto/16 :goto_3

    .line 179
    .line 180
    :cond_4
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->startLangLinksActivity()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_3

    .line 184
    .line 185
    :sswitch_3
    const-string v1, "pageIssues"

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_5

    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_5
    const-string p1, "payload"

    .line 196
    .line 197
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 202
    .line 203
    if-eqz p1, :cond_d

    .line 204
    .line 205
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonArray(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonArray;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    iget-object p2, p2, Lkotlinx/serialization/json/JsonArray;->content:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-nez p2, :cond_d

    .line 216
    .line 217
    iget-object p2, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 220
    .line 221
    if-eqz p2, :cond_d

    .line 222
    .line 223
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonArray(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonArray;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    new-instance p2, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object p1, p1, Lkotlinx/serialization/json/JsonArray;->content:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_8

    .line 243
    .line 244
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 249
    .line 250
    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v2, "html"

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 261
    .line 262
    if-eqz v1, :cond_7

    .line 263
    .line 264
    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    goto :goto_2

    .line 273
    :cond_7
    move-object v1, v9

    .line 274
    :goto_2
    if-eqz v1, :cond_6

    .line 275
    .line 276
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_8
    new-instance p1, Lorg/wikipedia/views/EditNoticesDialog;

    .line 281
    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 294
    .line 295
    new-instance v2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;

    .line 296
    .line 297
    invoke-direct {v2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 298
    .line 299
    .line 300
    invoke-direct {p1, v1, v0, p2, v2}, Lorg/wikipedia/views/EditNoticesDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Ljava/util/ArrayList;Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;)V

    .line 301
    .line 302
    .line 303
    const p0, 0x7f12052d

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 307
    .line 308
    .line 309
    const p0, 0x104000a

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p0, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Lorg/wikipedia/views/EditNoticesDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 316
    .line 317
    .line 318
    goto/16 :goto_3

    .line 319
    .line 320
    :sswitch_4
    const-string p2, "coordinate"

    .line 321
    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-nez p1, :cond_9

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_9
    iget-object p1, v0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p1, Lorg/wikipedia/page/Page;

    .line 332
    .line 333
    if-eqz p1, :cond_d

    .line 334
    .line 335
    iget-object p2, p1, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 336
    .line 337
    iget-object p2, p2, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 338
    .line 339
    if-eqz p2, :cond_a

    .line 340
    .line 341
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 342
    .line 343
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 344
    .line 345
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 346
    .line 347
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 352
    .line 353
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    const-string v7, "app_places_interaction"

    .line 358
    .line 359
    const-string v2, "places_click"

    .line 360
    .line 361
    const-string v3, "article_footer"

    .line 362
    .line 363
    const-string v4, ""

    .line 364
    .line 365
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sget v1, Lorg/wikipedia/places/PlacesActivity;->$r8$clinit:I

    .line 376
    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    iget-object p1, p1, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 382
    .line 383
    invoke-static {p0, p1, p2}, Lokio/ByteString$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 388
    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_a
    const p1, 0x7f120037

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_3

    .line 405
    :sswitch_5
    const-string p2, "talkPage"

    .line 406
    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-nez p1, :cond_b

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_b
    iget-object p1, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 417
    .line 418
    if-eqz p1, :cond_d

    .line 419
    .line 420
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 421
    .line 422
    if-eqz p2, :cond_c

    .line 423
    .line 424
    const-string v0, "talk_page_from_article"

    .line 425
    .line 426
    invoke-virtual {p2, v0}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    :cond_c
    invoke-virtual {p0, p1, v8}, Lorg/wikipedia/page/PageFragment;->startTalkTopicsActivity(Lorg/wikipedia/page/PageTitle;Z)V

    .line 430
    .line 431
    .line 432
    :cond_d
    :goto_3
    return-void

    .line 433
    :pswitch_2
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 434
    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    if-eqz p2, :cond_14

    .line 439
    .line 440
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 441
    .line 442
    const/4 v1, 0x0

    .line 443
    if-nez p1, :cond_e

    .line 444
    .line 445
    new-instance p1, Lorg/wikipedia/media/AvPlayer;

    .line 446
    .line 447
    invoke-direct {p1, v1}, Lorg/wikipedia/media/AvPlayer;-><init>(I)V

    .line 448
    .line 449
    .line 450
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 451
    .line 452
    :cond_e
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 453
    .line 454
    if-nez v0, :cond_f

    .line 455
    .line 456
    new-instance v0, Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 457
    .line 458
    invoke-direct {v0, p0}, Lorg/wikipedia/page/PageFragment$AvCallback;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 459
    .line 460
    .line 461
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 462
    .line 463
    :cond_f
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast p1, Lorg/wikipedia/media/AvPlayer;

    .line 466
    .line 467
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast p1, Landroid/media/MediaPlayer;

    .line 470
    .line 471
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    if-nez p1, :cond_13

    .line 476
    .line 477
    const-string/jumbo p1, "url"

    .line 478
    .line 479
    .line 480
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->containsKey(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-eqz v0, :cond_13

    .line 485
    .line 486
    invoke-virtual {p0, v8}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 487
    .line 488
    .line 489
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 499
    .line 500
    if-eqz p1, :cond_10

    .line 501
    .line 502
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    :cond_10
    if-nez v9, :cond_11

    .line 511
    .line 512
    goto :goto_4

    .line 513
    :cond_11
    move-object v7, v9

    .line 514
    :goto_4
    const-string p1, "//"

    .line 515
    .line 516
    invoke-static {v7, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_12

    .line 521
    .line 522
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 523
    .line 524
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    const-string p2, ":"

    .line 537
    .line 538
    invoke-static {p1, p2, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    :cond_12
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 543
    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    iget-object p1, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast p1, Lorg/wikipedia/media/AvPlayer;

    .line 550
    .line 551
    new-instance p2, Lretrofit2/OkHttpCall$1;

    .line 552
    .line 553
    const/16 v2, 0x10

    .line 554
    .line 555
    invoke-direct {p2, v2, v0, p0}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    new-instance p0, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;

    .line 559
    .line 560
    invoke-direct {p0, p2}, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$Callback;)V

    .line 561
    .line 562
    .line 563
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 564
    .line 565
    check-cast p1, Landroid/media/MediaPlayer;

    .line 566
    .line 567
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 574
    .line 575
    .line 576
    :try_start_0
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 577
    .line 578
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 579
    .line 580
    .line 581
    move-result-object p2

    .line 582
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    const-string v2, "User-Agent"

    .line 590
    .line 591
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    iget-object v3, v3, Lorg/wikipedia/WikipediaApp;->userAgent$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 596
    .line 597
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    check-cast v3, Ljava/lang/String;

    .line 602
    .line 603
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    invoke-virtual {p1, p2, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .line 612
    .line 613
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 614
    .line 615
    .line 616
    goto :goto_5

    .line 617
    :catch_0
    move-exception v0

    .line 618
    move-object p2, v0

    .line 619
    invoke-static {p2}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0, p1, v8, v1}, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->onError(Landroid/media/MediaPlayer;II)Z

    .line 623
    .line 624
    .line 625
    goto :goto_5

    .line 626
    :cond_13
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 627
    .line 628
    .line 629
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 630
    .line 631
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 637
    .line 638
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast p0, Landroid/media/MediaPlayer;

    .line 641
    .line 642
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 643
    .line 644
    .line 645
    :cond_14
    :goto_5
    return-void

    .line 646
    :pswitch_3
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 647
    .line 648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    if-eqz p2, :cond_18

    .line 652
    .line 653
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    invoke-virtual {p2, v6}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object p1

    .line 661
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 662
    .line 663
    if-eqz p1, :cond_15

    .line 664
    .line 665
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    goto :goto_6

    .line 674
    :cond_15
    move-object p1, v9

    .line 675
    :goto_6
    if-nez p1, :cond_16

    .line 676
    .line 677
    move-object p1, v7

    .line 678
    :cond_16
    :try_start_1
    invoke-static {p1, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    .line 688
    .line 689
    move-object p1, v0

    .line 690
    goto :goto_7

    .line 691
    :catch_1
    move-exception v0

    .line 692
    move-object p0, v0

    .line 693
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 694
    .line 695
    .line 696
    goto :goto_8

    .line 697
    :catch_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    :goto_7
    invoke-virtual {p2, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object p2

    .line 708
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 709
    .line 710
    if-eqz p2, :cond_17

    .line 711
    .line 712
    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 713
    .line 714
    .line 715
    move-result-object p2

    .line 716
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v9

    .line 720
    :cond_17
    invoke-virtual {p0, p1, v9, v7}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    :cond_18
    :goto_8
    return-void

    .line 724
    :pswitch_4
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 725
    .line 726
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    if-eqz p2, :cond_1c

    .line 730
    .line 731
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 732
    .line 733
    .line 734
    move-result-object p0

    .line 735
    invoke-virtual {p2, v6}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object p1

    .line 739
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 740
    .line 741
    if-eqz p1, :cond_19

    .line 742
    .line 743
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 744
    .line 745
    .line 746
    move-result-object p1

    .line 747
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object p1

    .line 751
    goto :goto_9

    .line 752
    :cond_19
    move-object p1, v9

    .line 753
    :goto_9
    if-nez p1, :cond_1a

    .line 754
    .line 755
    move-object p1, v7

    .line 756
    :cond_1a
    :try_start_2
    invoke-static {p1, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 765
    .line 766
    .line 767
    move-object p1, v0

    .line 768
    goto :goto_a

    .line 769
    :catch_3
    move-exception v0

    .line 770
    move-object p0, v0

    .line 771
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 772
    .line 773
    .line 774
    goto :goto_b

    .line 775
    :catch_4
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    :goto_a
    invoke-virtual {p2, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object p2

    .line 786
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 787
    .line 788
    if-eqz p2, :cond_1b

    .line 789
    .line 790
    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 791
    .line 792
    .line 793
    move-result-object p2

    .line 794
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v9

    .line 798
    :cond_1b
    invoke-virtual {p0, p1, v9, v7}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    :cond_1c
    :goto_b
    return-void

    .line 802
    :pswitch_5
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 803
    .line 804
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    if-eqz p2, :cond_1e

    .line 808
    .line 809
    const-string p1, "rect"

    .line 810
    .line 811
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object p1

    .line 815
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 816
    .line 817
    if-eqz p1, :cond_1e

    .line 818
    .line 819
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    const-string/jumbo p2, "y"

    .line 824
    .line 825
    .line 826
    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/JsonObject;->containsKey(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    if-eqz v0, :cond_1d

    .line 831
    .line 832
    :goto_c
    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 840
    .line 841
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 842
    .line 843
    .line 844
    move-result-object p1

    .line 845
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 850
    .line 851
    .line 852
    move-result p1

    .line 853
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 854
    .line 855
    .line 856
    move-result p1

    .line 857
    goto :goto_d

    .line 858
    :cond_1d
    const-string p2, "top"

    .line 859
    .line 860
    goto :goto_c

    .line 861
    :goto_d
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 862
    .line 863
    .line 864
    move-result-object p2

    .line 865
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    add-int/2addr v0, p1

    .line 874
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 875
    .line 876
    .line 877
    move-result-object p0

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 879
    .line 880
    .line 881
    move-result p0

    .line 882
    div-int/lit8 p0, p0, 0x3

    .line 883
    .line 884
    sub-int/2addr v0, p0

    .line 885
    invoke-virtual {p2, v0}, Landroid/view/View;->setScrollY(I)V

    .line 886
    .line 887
    .line 888
    :cond_1e
    return-void

    .line 889
    :pswitch_6
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 890
    .line 891
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 892
    .line 893
    .line 894
    if-eqz p2, :cond_27

    .line 895
    .line 896
    const-string p1, "backLinks"

    .line 897
    .line 898
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object p1

    .line 902
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 903
    .line 904
    if-eqz p1, :cond_1f

    .line 905
    .line 906
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonArray(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonArray;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    goto :goto_e

    .line 911
    :cond_1f
    move-object p1, v9

    .line 912
    :goto_e
    if-eqz p1, :cond_27

    .line 913
    .line 914
    iget-object v0, p1, Lkotlinx/serialization/json/JsonArray;->content:Ljava/util/List;

    .line 915
    .line 916
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 917
    .line 918
    .line 919
    move-result v1

    .line 920
    if-eqz v1, :cond_20

    .line 921
    .line 922
    goto/16 :goto_13

    .line 923
    .line 924
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    .line 925
    .line 926
    const/16 v2, 0xa

    .line 927
    .line 928
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 929
    .line 930
    .line 931
    move-result p1

    .line 932
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 933
    .line 934
    .line 935
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 936
    .line 937
    .line 938
    move-result-object p1

    .line 939
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_22

    .line 944
    .line 945
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 950
    .line 951
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    const-string v2, "id"

    .line 956
    .line 957
    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 962
    .line 963
    if-eqz v0, :cond_21

    .line 964
    .line 965
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    goto :goto_10

    .line 974
    :cond_21
    move-object v0, v9

    .line 975
    :goto_10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    goto :goto_f

    .line 979
    :cond_22
    const-string p1, "referenceId"

    .line 980
    .line 981
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object p1

    .line 985
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 986
    .line 987
    if-eqz p1, :cond_23

    .line 988
    .line 989
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object p1

    .line 997
    goto :goto_11

    .line 998
    :cond_23
    move-object p1, v9

    .line 999
    :goto_11
    if-nez p1, :cond_24

    .line 1000
    .line 1001
    move-object p1, v7

    .line 1002
    :cond_24
    const-string v0, "referenceText"

    .line 1003
    .line 1004
    invoke-virtual {p2, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object p2

    .line 1008
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 1009
    .line 1010
    if-eqz p2, :cond_25

    .line 1011
    .line 1012
    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p2

    .line 1016
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v9

    .line 1020
    :cond_25
    if-nez v9, :cond_26

    .line 1021
    .line 1022
    goto :goto_12

    .line 1023
    :cond_26
    move-object v7, v9

    .line 1024
    :goto_12
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 1025
    .line 1026
    iget-object p2, p2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 1027
    .line 1028
    check-cast p2, Lorg/wikipedia/page/Page;

    .line 1029
    .line 1030
    if-eqz p2, :cond_27

    .line 1031
    .line 1032
    new-instance p2, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;

    .line 1033
    .line 1034
    invoke-direct {p2, p0, p1, v7, v1}, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;-><init>(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p0

    .line 1041
    if-eqz p0, :cond_27

    .line 1042
    .line 1043
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 1044
    .line 1045
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 1046
    .line 1047
    .line 1048
    :cond_27
    :goto_13
    return-void

    .line 1049
    :pswitch_7
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 1050
    .line 1051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 1055
    .line 1056
    .line 1057
    move-result p1

    .line 1058
    if-nez p1, :cond_28

    .line 1059
    .line 1060
    goto :goto_15

    .line 1061
    :cond_28
    sget-object p1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 1062
    .line 1063
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 1068
    .line 1069
    .line 1070
    move-result p2

    .line 1071
    if-nez p2, :cond_29

    .line 1072
    .line 1073
    goto :goto_14

    .line 1074
    :cond_29
    :try_start_3
    sget-object p2, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 1075
    .line 1076
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    .line 1078
    .line 1079
    sget-object v0, Lorg/wikipedia/page/references/PageReferences;->Companion:Lorg/wikipedia/page/references/PageReferences$Companion;

    .line 1080
    .line 1081
    invoke-virtual {v0}, Lorg/wikipedia/page/references/PageReferences$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 1090
    .line 1091
    invoke-virtual {p2, p1, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1095
    goto :goto_14

    .line 1096
    :catch_5
    move-exception v0

    .line 1097
    move-object p1, v0

    .line 1098
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 1099
    .line 1100
    .line 1101
    :goto_14
    check-cast v9, Lorg/wikipedia/page/references/PageReferences;

    .line 1102
    .line 1103
    iput-object v9, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 1104
    .line 1105
    if-eqz v9, :cond_2a

    .line 1106
    .line 1107
    iget-object p1, v9, Lorg/wikipedia/page/references/PageReferences;->referencesGroup:Ljava/util/List;

    .line 1108
    .line 1109
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 1110
    .line 1111
    .line 1112
    move-result p1

    .line 1113
    if-nez p1, :cond_2a

    .line 1114
    .line 1115
    new-instance p1, Lorg/wikipedia/page/references/ReferenceDialog;

    .line 1116
    .line 1117
    invoke-direct {p1}, Lorg/wikipedia/page/references/ReferenceDialog;-><init>()V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->showBottomSheet(Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;)V

    .line 1121
    .line 1122
    .line 1123
    :cond_2a
    :goto_15
    return-void

    .line 1124
    :pswitch_8
    sget p2, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 1125
    .line 1126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 1130
    .line 1131
    .line 1132
    move-result p1

    .line 1133
    if-nez p1, :cond_2b

    .line 1134
    .line 1135
    goto :goto_16

    .line 1136
    :cond_2b
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 1137
    .line 1138
    if-eqz p1, :cond_30

    .line 1139
    .line 1140
    iput-boolean v8, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 1141
    .line 1142
    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 1143
    .line 1144
    .line 1145
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 1146
    .line 1147
    if-eqz p1, :cond_2c

    .line 1148
    .line 1149
    const-string p2, "load"

    .line 1150
    .line 1151
    invoke-virtual {p1, p2}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    :cond_2c
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 1155
    .line 1156
    .line 1157
    move-result-object p1

    .line 1158
    if-eqz p1, :cond_2d

    .line 1159
    .line 1160
    check-cast p1, Lorg/wikipedia/page/PageActivity;

    .line 1161
    .line 1162
    invoke-virtual {p1}, Lorg/wikipedia/page/PageActivity;->onPageLoadComplete()V

    .line 1163
    .line 1164
    .line 1165
    :cond_2d
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 1166
    .line 1167
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 1168
    .line 1169
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 1170
    .line 1171
    if-eqz p1, :cond_2f

    .line 1172
    .line 1173
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 1174
    .line 1175
    if-eqz p1, :cond_2f

    .line 1176
    .line 1177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 1178
    .line 1179
    .line 1180
    move-result p1

    .line 1181
    if-nez p1, :cond_2e

    .line 1182
    .line 1183
    goto :goto_16

    .line 1184
    :cond_2e
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    .line 1185
    .line 1186
    iget p1, p1, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    .line 1187
    .line 1188
    if-nez p1, :cond_2f

    .line 1189
    .line 1190
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 1191
    .line 1192
    .line 1193
    move-result-object p1

    .line 1194
    new-instance p2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda20;

    .line 1195
    .line 1196
    invoke-direct {p2, p0, v8}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda20;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 1197
    .line 1198
    .line 1199
    const-wide/16 v0, 0x64

    .line 1200
    .line 1201
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1202
    .line 1203
    .line 1204
    :cond_2f
    :goto_16
    return-void

    .line 1205
    :cond_30
    const-string p0, "bridge"

    .line 1206
    .line 1207
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    throw v9

    .line 1211
    :pswitch_9
    sget p2, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 1212
    .line 1213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->onPageSetupEvent()V

    .line 1217
    .line 1218
    .line 1219
    return-void

    .line 1220
    nop

    .line 1221
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    :sswitch_data_0
    .sparse-switch
        -0x24662aa5 -> :sswitch_5
        0xbdb7578 -> :sswitch_4
        0x3b9a5a29 -> :sswitch_3
        0x5a7fd81b -> :sswitch_2
        0x5ad4d65f -> :sswitch_1
        0x647e94a6 -> :sswitch_0
    .end sparse-switch
.end method
