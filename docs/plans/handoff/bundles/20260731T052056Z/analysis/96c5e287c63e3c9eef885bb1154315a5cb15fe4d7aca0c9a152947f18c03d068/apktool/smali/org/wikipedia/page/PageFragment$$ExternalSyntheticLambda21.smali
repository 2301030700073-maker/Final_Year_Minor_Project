.class public final synthetic Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v0, "Unknown purpose="

    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 15
    .line 16
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    .line 17
    .line 18
    iget-object v1, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mObject:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lorg/wikipedia/page/PageFragment;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    iget-object v4, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Landroid/view/ActionMode;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 46
    .line 47
    :cond_1
    :try_start_0
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :try_start_1
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v5, Lorg/wikipedia/page/shareafact/ShareHandler$TextSelectResponse;->Companion:Lorg/wikipedia/page/shareafact/ShareHandler$TextSelectResponse$Companion;

    .line 64
    .line 65
    invoke-virtual {v5}, Lorg/wikipedia/page/shareafact/ShareHandler$TextSelectResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 74
    .line 75
    invoke-virtual {v4, p1, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    :try_start_2
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    move-object p1, v2

    .line 85
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast p1, Lorg/wikipedia/page/shareafact/ShareHandler$TextSelectResponse;

    .line 89
    .line 90
    iget-object v4, p1, Lorg/wikipedia/page/shareafact/ShareHandler$TextSelectResponse;->text:Ljava/lang/String;

    .line 91
    .line 92
    const-string v5, "define"

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v4}, Lorg/wikipedia/page/shareafact/ShareHandler;->showWiktionaryDefinition(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const-string p0, "edit_here"

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_7

    .line 111
    .line 112
    iget p0, p1, Lorg/wikipedia/page/shareafact/ShareHandler$TextSelectResponse;->section:I

    .line 113
    .line 114
    iget-boolean p1, p1, Lorg/wikipedia/page/shareafact/ShareHandler$TextSelectResponse;->isTitleDescription:Z

    .line 115
    .line 116
    if-nez p0, :cond_5

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    sget-object p0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_EDIT_HIGHLIGHT:Lorg/wikipedia/Constants$InvokeSource;

    .line 121
    .line 122
    invoke-virtual {v3, v4, p0}, Lorg/wikipedia/page/PageFragment;->verifyBeforeEditingDescription(Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    if-ltz p0, :cond_8

    .line 127
    .line 128
    iget-object p1, v3, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    invoke-virtual {p1, p0, v4}, Lorg/wikipedia/edit/EditHandler;->startEditingSection(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    const-string p0, "editHandler"

    .line 137
    .line 138
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v2

    .line 142
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catch_1
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_2
    return-void

    .line 155
    :pswitch_0
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 156
    .line 157
    check-cast v3, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;

    .line 158
    .line 159
    check-cast p1, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_9

    .line 166
    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :cond_9
    const-string/jumbo v0, "true"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_12

    .line 177
    .line 178
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 179
    .line 180
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 185
    .line 186
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    const-string v0, "bridge"

    .line 191
    .line 192
    if-eqz p1, :cond_b

    .line 193
    .line 194
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 195
    .line 196
    if-eqz p1, :cond_a

    .line 197
    .line 198
    const-string v4, "(function() {document.documentElement.classList.add(\'skin-theme-clientpref-night\');})();"

    .line 199
    .line 200
    invoke-virtual {p1, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v2

    .line 208
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->onPageSetupEvent()V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 212
    .line 213
    if-eqz p1, :cond_11

    .line 214
    .line 215
    const/4 v4, 0x1

    .line 216
    iput-boolean v4, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 217
    .line 218
    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 222
    .line 223
    if-eqz p1, :cond_10

    .line 224
    .line 225
    iput-boolean v4, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 226
    .line 227
    invoke-virtual {p1}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 231
    .line 232
    if-eqz p1, :cond_f

    .line 233
    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_c

    .line 243
    .line 244
    invoke-virtual {v0}, Lcoil3/util/ContextsKt;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    :cond_c
    int-to-float v0, v1

    .line 249
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v1, Lorg/wikipedia/page/PageActionTabLayout;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    int-to-float v1, v1

    .line 267
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v5, "(function() {let style = document.createElement(\'style\');style.innerHTML = \'.header-chrome { visibility: hidden; margin-top: "

    .line 274
    .line 275
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v0, "px; height: 0px; } #page-secondary-actions { display: none; } .mw-footer { padding-bottom: "

    .line 282
    .line 283
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v0, "px; } .page-actions-menu { display: none; } .minerva__tab-container { display: none; } .banner-container { display: none; }\';document.head.appendChild(style);})();"

    .line 290
    .line 291
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object p1, v3, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 302
    .line 303
    iget-object p1, p1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 304
    .line 305
    iget-object v0, p1, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Lorg/wikipedia/page/Page;

    .line 308
    .line 309
    if-eqz v0, :cond_d

    .line 310
    .line 311
    iget-object v0, v0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 312
    .line 313
    iget-object v2, v0, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 314
    .line 315
    :cond_d
    sget-object v0, Lorg/wikipedia/page/Namespace;->EVENT:Lorg/wikipedia/page/Namespace;

    .line 316
    .line 317
    if-ne v2, v0, :cond_e

    .line 318
    .line 319
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 322
    .line 323
    if-eqz p1, :cond_e

    .line 324
    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-static {v0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 351
    .line 352
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda20;

    .line 353
    .line 354
    const/4 v1, 0x2

    .line 355
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda20;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 359
    .line 360
    .line 361
    :cond_e
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    if-eqz p0, :cond_12

    .line 366
    .line 367
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 368
    .line 369
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onPageLoadComplete()V

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v2

    .line 377
    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v2

    .line 381
    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v2

    .line 385
    :cond_12
    :goto_4
    return-void

    .line 386
    :pswitch_1
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 387
    .line 388
    check-cast v3, Ljava/lang/String;

    .line 389
    .line 390
    check-cast p1, Ljava/lang/String;

    .line 391
    .line 392
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 393
    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_13

    .line 399
    .line 400
    goto/16 :goto_7

    .line 401
    .line 402
    :cond_13
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 405
    .line 406
    .line 407
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 408
    .line 409
    if-eqz p1, :cond_15

    .line 410
    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-nez v4, :cond_14

    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_14
    :try_start_3
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 419
    .line 420
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    sget-object v5, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->Companion:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo$Companion;

    .line 424
    .line 425
    invoke-virtual {v5}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 434
    .line 435
    invoke-virtual {v4, p1, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 439
    goto :goto_6

    .line 440
    :catch_2
    move-exception p1

    .line 441
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 442
    .line 443
    .line 444
    :cond_15
    :goto_5
    move-object p1, v2

    .line 445
    :goto_6
    check-cast p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 446
    .line 447
    if-eqz p1, :cond_16

    .line 448
    .line 449
    new-instance v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 450
    .line 451
    iget v5, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    .line 452
    .line 453
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    iget v6, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    .line 458
    .line 459
    invoke-static {v6}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    invoke-direct {v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 464
    .line 465
    .line 466
    iget v5, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    .line 467
    .line 468
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 473
    .line 474
    iget v5, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    .line 475
    .line 476
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 481
    .line 482
    iget-object v5, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    iget-object v5, v5, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v5, Landroid/widget/ImageView;

    .line 490
    .line 491
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    .line 493
    .line 494
    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 495
    .line 496
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v4, Landroid/widget/ImageView;

    .line 502
    .line 503
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    .line 505
    .line 506
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v1, Landroid/widget/ImageView;

    .line 514
    .line 515
    iget-object v4, p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    .line 516
    .line 517
    const/16 v5, 0x1c

    .line 518
    .line 519
    invoke-static {v1, v4, v2, v5}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 520
    .line 521
    .line 522
    sput-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 523
    .line 524
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v1, Landroid/widget/ImageView;

    .line 536
    .line 537
    const v2, 0x7f1209ce

    .line 538
    .line 539
    .line 540
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    new-instance v4, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 545
    .line 546
    invoke-static {p1, v1, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    invoke-direct {v4, p1}, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 551
    .line 552
    .line 553
    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 554
    .line 555
    :cond_16
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 560
    .line 561
    const/16 v2, 0x9

    .line 562
    .line 563
    invoke-direct {v1, p0, v3, v0, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 567
    .line 568
    .line 569
    :goto_7
    return-void

    .line 570
    nop

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
