.class public final Lio/noties/markwon/core/CorePlugin$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/noties/markwon/core/CorePlugin$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final visit(Lokhttp3/Dispatcher;Lorg/commonmark/node/Node;)V
    .locals 6

    .line 1
    iget p0, p0, Lio/noties/markwon/core/CorePlugin$2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0xa0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->blockEnd(Lorg/commonmark/node/Node;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p2, Lorg/commonmark/node/ListItem;

    .line 28
    .line 29
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    iget-object v0, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lio/noties/markwon/RenderPropsImpl;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p2, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lorg/commonmark/node/Node;

    .line 43
    .line 44
    check-cast v1, Lorg/commonmark/node/Block;

    .line 45
    .line 46
    instance-of v3, v1, Lorg/commonmark/node/OrderedList;

    .line 47
    .line 48
    sget-object v4, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    check-cast v1, Lorg/commonmark/node/OrderedList;

    .line 53
    .line 54
    iget v2, v1, Lorg/commonmark/node/OrderedList;->startNumber:I

    .line 55
    .line 56
    sget-object v3, Lio/noties/markwon/core/CoreProps$ListItemType;->ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;

    .line 57
    .line 58
    invoke-virtual {v4, v0, v3}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v3, Lio/noties/markwon/core/CoreProps;->ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3, v0, v2}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget v0, v1, Lorg/commonmark/node/OrderedList;->startNumber:I

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    iput v0, v1, Lorg/commonmark/node/OrderedList;->startNumber:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    sget-object v1, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    .line 78
    .line 79
    invoke-virtual {v4, v0, v1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p2, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lorg/commonmark/node/Node;

    .line 85
    .line 86
    check-cast v1, Lorg/commonmark/node/Block;

    .line 87
    .line 88
    :goto_0
    if-eqz v1, :cond_2

    .line 89
    .line 90
    instance-of v3, v1, Lorg/commonmark/node/ListItem;

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    :cond_1
    invoke-virtual {v1}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Lio/noties/markwon/core/CoreProps;->BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

    .line 106
    .line 107
    invoke-virtual {v2, v0, v1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p2, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lorg/commonmark/node/Node;

    .line 116
    .line 117
    if-eqz p0, :cond_3

    .line 118
    .line 119
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void

    .line 123
    :pswitch_1
    iget-object p0, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Lio/noties/markwon/SpannableBuilder;

    .line 126
    .line 127
    check-cast p2, Lorg/commonmark/node/Image;

    .line 128
    .line 129
    iget-object v0, p1, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Lcoil3/ComponentRegistry$Builder;

    .line 132
    .line 133
    iget-object v2, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lokhttp3/ConnectionPool;

    .line 136
    .line 137
    iget-object v2, v2, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Ljava/util/Map;

    .line 140
    .line 141
    const-class v3, Lorg/commonmark/node/Image;

    .line 142
    .line 143
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 148
    .line 149
    if-nez v2, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-ne v3, v4, :cond_5

    .line 167
    .line 168
    const v4, 0xfffc

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v4}, Lio/noties/markwon/SpannableBuilder;->append(C)V

    .line 172
    .line 173
    .line 174
    :cond_5
    iget-object v4, p2, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v4, Lorg/commonmark/node/Node;

    .line 177
    .line 178
    instance-of v4, v4, Lorg/commonmark/node/Link;

    .line 179
    .line 180
    iget-object v5, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v5, Lio/noties/markwon/BlockHandlerDef;

    .line 183
    .line 184
    iget-object p2, p2, Lorg/commonmark/node/Image;->destination:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object p1, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Lio/noties/markwon/RenderPropsImpl;

    .line 192
    .line 193
    sget-object v5, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    .line 194
    .line 195
    invoke-virtual {v5, p1, p2}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    sget-object p2, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    .line 199
    .line 200
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {p2, p1, v4}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object p2, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    .line 208
    .line 209
    invoke-virtual {p2, p1, v1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v0, p1}, Lio/noties/markwon/core/factory/CodeSpanFactory;->getSpans(Lcoil3/ComponentRegistry$Builder;Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object p2, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-le v0, v3, :cond_6

    .line 227
    .line 228
    if-ltz v3, :cond_6

    .line 229
    .line 230
    if-gt v0, p2, :cond_6

    .line 231
    .line 232
    invoke-static {p0, p1, v3, v0}, Lio/noties/markwon/SpannableBuilder;->setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    .line 233
    .line 234
    .line 235
    :cond_6
    :goto_2
    return-void

    .line 236
    :pswitch_2
    check-cast p2, Lorg/commonmark/node/IndentedCodeBlock;

    .line 237
    .line 238
    iget-object p0, p2, Lorg/commonmark/node/IndentedCodeBlock;->literal:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {p1, v1, p0, p2}, Lio/noties/markwon/core/CorePlugin;->visitCodeBlock(Lokhttp3/Dispatcher;Ljava/lang/String;Ljava/lang/String;Lorg/commonmark/node/Block;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_3
    check-cast p2, Lorg/commonmark/node/FencedCodeBlock;

    .line 245
    .line 246
    iget-object p0, p2, Lorg/commonmark/node/FencedCodeBlock;->info:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v0, p2, Lorg/commonmark/node/FencedCodeBlock;->literal:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {p1, p0, v0, p2}, Lio/noties/markwon/core/CorePlugin;->visitCodeBlock(Lokhttp3/Dispatcher;Ljava/lang/String;Ljava/lang/String;Lorg/commonmark/node/Block;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_4
    check-cast p2, Lorg/commonmark/node/Code;

    .line 255
    .line 256
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    iget-object v1, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v1, Lio/noties/markwon/SpannableBuilder;

    .line 263
    .line 264
    iget-object v2, v1, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v3, p2, Lorg/commonmark/node/Code;->literal:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v0}, Lio/noties/markwon/SpannableBuilder;->append(C)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_5
    check-cast p2, Lorg/commonmark/node/BlockQuote;

    .line 282
    .line 283
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->blockEnd(Lorg/commonmark/node/Node;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_6
    check-cast p2, Lorg/commonmark/node/Emphasis;

    .line 301
    .line 302
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :pswitch_7
    check-cast p2, Lorg/commonmark/node/Link;

    .line 314
    .line 315
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p2, Lorg/commonmark/node/Link;->destination:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v1, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v1, Lio/noties/markwon/RenderPropsImpl;

    .line 327
    .line 328
    sget-object v2, Lio/noties/markwon/core/CoreProps;->LINK_DESTINATION:Lio/noties/markwon/Prop;

    .line 329
    .line 330
    invoke-virtual {v2, v1, v0}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :pswitch_8
    check-cast p2, Lorg/commonmark/node/Paragraph;

    .line 338
    .line 339
    iget-object p0, p2, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast p0, Lorg/commonmark/node/Node;

    .line 342
    .line 343
    check-cast p0, Lorg/commonmark/node/Block;

    .line 344
    .line 345
    if-eqz p0, :cond_7

    .line 346
    .line 347
    iget-object p0, p0, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast p0, Lorg/commonmark/node/Node;

    .line 350
    .line 351
    check-cast p0, Lorg/commonmark/node/Block;

    .line 352
    .line 353
    instance-of v0, p0, Lorg/commonmark/node/ListBlock;

    .line 354
    .line 355
    if-eqz v0, :cond_7

    .line 356
    .line 357
    check-cast p0, Lorg/commonmark/node/ListBlock;

    .line 358
    .line 359
    iget-boolean v2, p0, Lorg/commonmark/node/ListBlock;->tight:Z

    .line 360
    .line 361
    :cond_7
    if-nez v2, :cond_8

    .line 362
    .line 363
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 364
    .line 365
    .line 366
    :cond_8
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v0, Lio/noties/markwon/RenderPropsImpl;

    .line 376
    .line 377
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    sget-object v3, Lio/noties/markwon/core/CoreProps;->PARAGRAPH_IS_IN_TIGHT_LIST:Lio/noties/markwon/Prop;

    .line 382
    .line 383
    invoke-virtual {v3, v0, v1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 387
    .line 388
    .line 389
    if-nez v2, :cond_9

    .line 390
    .line 391
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->blockEnd(Lorg/commonmark/node/Node;)V

    .line 392
    .line 393
    .line 394
    :cond_9
    return-void

    .line 395
    :pswitch_9
    check-cast p2, Lorg/commonmark/node/HardLineBreak;

    .line 396
    .line 397
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :pswitch_a
    check-cast p2, Lorg/commonmark/node/SoftLineBreak;

    .line 402
    .line 403
    iget-object p0, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast p0, Lio/noties/markwon/SpannableBuilder;

    .line 406
    .line 407
    const/16 p1, 0x20

    .line 408
    .line 409
    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(C)V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :pswitch_b
    check-cast p2, Lorg/commonmark/node/Heading;

    .line 414
    .line 415
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v0, Lio/noties/markwon/RenderPropsImpl;

    .line 428
    .line 429
    iget v1, p2, Lorg/commonmark/node/Heading;->level:I

    .line 430
    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    sget-object v2, Lio/noties/markwon/core/CoreProps;->HEADING_LEVEL:Lio/noties/markwon/Prop;

    .line 436
    .line 437
    invoke-virtual {v2, v0, v1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->blockEnd(Lorg/commonmark/node/Node;)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :pswitch_c
    check-cast p2, Lorg/commonmark/node/ThematicBreak;

    .line 448
    .line 449
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 453
    .line 454
    .line 455
    move-result p0

    .line 456
    iget-object v1, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v1, Lio/noties/markwon/SpannableBuilder;

    .line 459
    .line 460
    invoke-virtual {v1, v0}, Lio/noties/markwon/SpannableBuilder;->append(C)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->blockEnd(Lorg/commonmark/node/Node;)V

    .line 467
    .line 468
    .line 469
    return-void

    .line 470
    :pswitch_d
    check-cast p2, Lorg/commonmark/node/StrongEmphasis;

    .line 471
    .line 472
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    invoke-virtual {p1, p2}, Lokhttp3/Dispatcher;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p1, p2, p0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
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
