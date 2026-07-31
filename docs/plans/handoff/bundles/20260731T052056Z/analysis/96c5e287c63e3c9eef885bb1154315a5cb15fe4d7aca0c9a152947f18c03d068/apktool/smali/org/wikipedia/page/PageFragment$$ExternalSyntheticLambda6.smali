.class public final synthetic Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/page/SidePanelHandler;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/page/SidePanelHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "sections"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/page/SidePanelHandler;->tocAdapter:Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;

    .line 43
    .line 44
    if-ge v4, v0, :cond_1

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v5, "id"

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string/jumbo v6, "yOffset"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget-object v1, v1, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    .line 68
    .line 69
    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    iget-object p1, v1, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    invoke-virtual {p1, v3, p0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :goto_1
    return-void

    .line 87
    :pswitch_0
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 88
    .line 89
    check-cast p1, Ljava/lang/String;

    .line 90
    .line 91
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 102
    .line 103
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lorg/wikipedia/page/Page;

    .line 106
    .line 107
    if-eqz v0, :cond_b

    .line 108
    .line 109
    iget-object v0, v0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 110
    .line 111
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_3

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    :try_start_2
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v6, Lorg/wikipedia/dataclient/page/Protection;->Companion:Lorg/wikipedia/dataclient/page/Protection$Companion;

    .line 128
    .line 129
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/page/Protection$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-static {v6}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 138
    .line 139
    invoke-virtual {v3, p1, v6}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    goto :goto_3

    .line 144
    :catch_1
    move-exception p1

    .line 145
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_2
    move-object p1, v1

    .line 149
    :goto_3
    check-cast p1, Lorg/wikipedia/dataclient/page/Protection;

    .line 150
    .line 151
    iput-object p1, v0, Lorg/wikipedia/page/PageProperties;->protection:Lorg/wikipedia/dataclient/page/Protection;

    .line 152
    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    iget-object p1, p1, Lorg/wikipedia/dataclient/page/Protection;->edit:Ljava/lang/String;

    .line 156
    .line 157
    if-nez p1, :cond_5

    .line 158
    .line 159
    move-object v1, v2

    .line 160
    goto :goto_4

    .line 161
    :cond_5
    move-object v1, p1

    .line 162
    :cond_6
    :goto_4
    if-nez v1, :cond_7

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_7
    move-object v2, v1

    .line 166
    :goto_5
    iput-object v2, v0, Lorg/wikipedia/page/PageProperties;->editProtectionStatus:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_8

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_8
    iget-object p1, v0, Lorg/wikipedia/page/PageProperties;->protection:Lorg/wikipedia/dataclient/page/Protection;

    .line 176
    .line 177
    if-eqz p1, :cond_a

    .line 178
    .line 179
    iget-object p1, p1, Lorg/wikipedia/dataclient/page/Protection;->edit:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    goto :goto_6

    .line 188
    :cond_9
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 189
    .line 190
    :goto_6
    check-cast p1, Ljava/util/Collection;

    .line 191
    .line 192
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_a

    .line 197
    .line 198
    invoke-static {}, Lokhttp3/Headers$Companion;->getGroups()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Ljava/util/Collection;

    .line 203
    .line 204
    invoke-static {p1, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_a

    .line 209
    .line 210
    :goto_7
    move v4, v5

    .line 211
    :cond_a
    iput-boolean v4, v0, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 212
    .line 213
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->updateQuickActionsAndMenuOptions()V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_8
    return-void

    .line 217
    :pswitch_1
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 218
    .line 219
    check-cast p1, Ljava/lang/String;

    .line 220
    .line 221
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 222
    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iget-object v6, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 228
    .line 229
    if-nez v0, :cond_c

    .line 230
    .line 231
    goto/16 :goto_10

    .line 232
    .line 233
    :cond_c
    iget-object v0, v6, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lorg/wikipedia/page/Page;

    .line 236
    .line 237
    if-eqz v0, :cond_19

    .line 238
    .line 239
    sget-object v7, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 240
    .line 241
    if-eqz p1, :cond_e

    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-nez v7, :cond_d

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_d
    :try_start_3
    sget-object v7, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 251
    .line 252
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    new-instance v8, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 256
    .line 257
    sget-object v9, Lorg/wikipedia/page/Section;->Companion:Lorg/wikipedia/page/Section$Companion;

    .line 258
    .line 259
    invoke-virtual {v9}, Lorg/wikipedia/page/Section$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-direct {v8, v9, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 264
    .line 265
    .line 266
    invoke-static {v8}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    check-cast v8, Lkotlinx/serialization/KSerializer;

    .line 271
    .line 272
    invoke-virtual {v7, p1, v8}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 276
    goto :goto_a

    .line 277
    :catch_2
    move-exception p1

    .line 278
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    :cond_e
    :goto_9
    move-object p1, v1

    .line 282
    :goto_a
    check-cast p1, Ljava/util/List;

    .line 283
    .line 284
    if-eqz p1, :cond_13

    .line 285
    .line 286
    new-instance v7, Lorg/wikipedia/page/Section;

    .line 287
    .line 288
    iget-object v8, v6, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v8, Lorg/wikipedia/page/PageTitle;

    .line 291
    .line 292
    if-eqz v8, :cond_f

    .line 293
    .line 294
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    goto :goto_b

    .line 299
    :cond_f
    move-object v8, v1

    .line 300
    :goto_b
    if-nez v8, :cond_10

    .line 301
    .line 302
    move-object v8, v2

    .line 303
    :cond_10
    iget-object v9, v6, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 306
    .line 307
    if-eqz v9, :cond_11

    .line 308
    .line 309
    invoke-virtual {v9}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    :cond_11
    if-nez v1, :cond_12

    .line 314
    .line 315
    goto :goto_c

    .line 316
    :cond_12
    move-object v2, v1

    .line 317
    :goto_c
    invoke-direct {v7, v4, v4, v8, v2}, Lorg/wikipedia/page/Section;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {p1, v4, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iput-object p1, v0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 324
    .line 325
    :cond_13
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object v1, p1, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 330
    .line 331
    iget-object v2, v0, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 332
    .line 333
    iget-object v7, p1, Lorg/wikipedia/page/SidePanelHandler;->tocAdapter:Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;

    .line 334
    .line 335
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    iget-object v8, v7, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 341
    .line 342
    .line 343
    iget-object v9, v7, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    .line 344
    .line 345
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 346
    .line 347
    .line 348
    iget-object v9, v0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 349
    .line 350
    new-instance v10, Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    :cond_14
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v11

    .line 363
    const/4 v12, 0x3

    .line 364
    if-eqz v11, :cond_15

    .line 365
    .line 366
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    move-object v13, v11

    .line 371
    check-cast v13, Lorg/wikipedia/page/Section;

    .line 372
    .line 373
    iget v13, v13, Lorg/wikipedia/page/Section;->level:I

    .line 374
    .line 375
    if-ge v13, v12, :cond_14

    .line 376
    .line 377
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_15
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    .line 383
    .line 384
    iget-object v9, v7, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->this$0:Lorg/wikipedia/page/SidePanelHandler;

    .line 385
    .line 386
    iget-object v9, v9, Lorg/wikipedia/page/SidePanelHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 387
    .line 388
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    const v10, 0x7f12001e

    .line 393
    .line 394
    .line 395
    invoke-static {v9, v2, v10}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    new-instance v10, Lorg/wikipedia/page/Section;

    .line 400
    .line 401
    invoke-direct {v10, v3, v5, v9, v9}, Lorg/wikipedia/page/Section;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    iput v4, v7, Lorg/wikipedia/page/SidePanelHandler$ToCAdapter;->highlightedSection:I

    .line 408
    .line 409
    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 410
    .line 411
    .line 412
    iget-object v3, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 413
    .line 414
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    new-instance v7, Ljava/util/Locale;

    .line 420
    .line 421
    invoke-direct {v7, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-ne v3, v5, :cond_16

    .line 429
    .line 430
    move v3, v5

    .line 431
    goto :goto_e

    .line 432
    :cond_16
    move v3, v4

    .line 433
    :goto_e
    iput-boolean v3, p1, Lorg/wikipedia/page/SidePanelHandler;->rtl:Z

    .line 434
    .line 435
    iget-object v7, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v7, Lorg/wikipedia/views/SwipeableListView;

    .line 438
    .line 439
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v1, Landroid/widget/FrameLayout;

    .line 442
    .line 443
    invoke-virtual {v7, v3}, Lorg/wikipedia/views/SwipeableListView;->setRtl(Z)V

    .line 444
    .line 445
    .line 446
    iget-object v3, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 447
    .line 448
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 449
    .line 450
    invoke-static {v1, v3}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    if-eqz v3, :cond_18

    .line 458
    .line 459
    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 460
    .line 461
    iget-boolean v7, p1, Lorg/wikipedia/page/SidePanelHandler;->rtl:Z

    .line 462
    .line 463
    if-eqz v7, :cond_17

    .line 464
    .line 465
    goto :goto_f

    .line 466
    :cond_17
    const/4 v12, 0x5

    .line 467
    :goto_f
    iput v12, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 468
    .line 469
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1}, Lorg/wikipedia/page/SidePanelHandler;->log()V

    .line 473
    .line 474
    .line 475
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;

    .line 476
    .line 477
    iget-object v0, v0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 478
    .line 479
    iget v0, v0, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 480
    .line 481
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 482
    .line 483
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    invoke-direct {v1, v0, v2, v3}, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;-><init>(ILjava/lang/String;I)V

    .line 492
    .line 493
    .line 494
    iput-object v1, p1, Lorg/wikipedia/page/SidePanelHandler;->articleTocInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;

    .line 495
    .line 496
    iget p1, v1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numSectionClicks:I

    .line 497
    .line 498
    add-int/2addr p1, v5

    .line 499
    iput p1, v1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numSectionClicks:I

    .line 500
    .line 501
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    invoke-virtual {p0, v5}, Lorg/wikipedia/page/SidePanelHandler;->setEnabled(Z)V

    .line 506
    .line 507
    .line 508
    iput-boolean v4, v6, Lorg/wikipedia/page/PageViewModel;->isReadMoreLoaded:Z

    .line 509
    .line 510
    goto :goto_10

    .line 511
    :cond_18
    const-string p0, "null cannot be cast to non-null type androidx.drawerlayout.widget.DrawerLayout.LayoutParams"

    .line 512
    .line 513
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    :cond_19
    :goto_10
    return-void

    .line 517
    :pswitch_2
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 518
    .line 519
    check-cast p1, Ljava/lang/String;

    .line 520
    .line 521
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 522
    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-eqz v0, :cond_1b

    .line 528
    .line 529
    if-eqz p1, :cond_1b

    .line 530
    .line 531
    const-string v0, "null"

    .line 532
    .line 533
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_1a

    .line 538
    .line 539
    goto :goto_11

    .line 540
    :cond_1a
    :try_start_4
    const-string v0, "\""

    .line 541
    .line 542
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 547
    .line 548
    .line 549
    move-result-wide v0

    .line 550
    iput-wide v0, p0, Lorg/wikipedia/page/PageFragment;->revision:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 551
    .line 552
    goto :goto_11

    .line 553
    :catch_3
    move-exception p0

    .line 554
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    :cond_1b
    :goto_11
    return-void

    .line 558
    :pswitch_3
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 559
    .line 560
    check-cast p1, Ljava/lang/String;

    .line 561
    .line 562
    sget p1, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 563
    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 565
    .line 566
    .line 567
    move-result p1

    .line 568
    if-nez p1, :cond_1c

    .line 569
    .line 570
    goto :goto_12

    .line 571
    :cond_1c
    new-instance p1, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 572
    .line 573
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 574
    .line 575
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v0, Lorg/wikipedia/page/Page;

    .line 578
    .line 579
    if-eqz v0, :cond_1d

    .line 580
    .line 581
    iget-object v0, v0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 582
    .line 583
    iget v3, v0, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 584
    .line 585
    :cond_1d
    invoke-direct {p1, v3}, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;-><init>(I)V

    .line 586
    .line 587
    .line 588
    new-instance v0, Lorg/wikipedia/page/FindInWebPageActionProvider;

    .line 589
    .line 590
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/FindInWebPageActionProvider;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;)V

    .line 591
    .line 592
    .line 593
    new-instance v1, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;

    .line 594
    .line 595
    invoke-direct {v1, v0, p0, p1}, Lorg/wikipedia/page/PageFragment$showFindInPage$1$1$1;-><init>(Lorg/wikipedia/page/FindInWebPageActionProvider;Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 599
    .line 600
    .line 601
    move-result-object p0

    .line 602
    if-eqz p0, :cond_1e

    .line 603
    .line 604
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 605
    .line 606
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 607
    .line 608
    .line 609
    :cond_1e
    :goto_12
    return-void

    .line 610
    nop

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
