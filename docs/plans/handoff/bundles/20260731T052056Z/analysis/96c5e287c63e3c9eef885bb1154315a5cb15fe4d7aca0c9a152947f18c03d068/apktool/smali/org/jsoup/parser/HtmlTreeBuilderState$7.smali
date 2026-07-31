.class public final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final MaxStackScan:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InBody"

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    sub-int/2addr v1, v3

    .line 27
    :goto_0
    if-ltz v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v3

    .line 57
    :cond_2
    invoke-static {v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return v3
.end method

.method public final process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    .line 8
    .line 9
    iget-object v4, v1, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lorg/jsoup/parser/Token$TokenType;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    aget v3, v3, v4

    .line 18
    .line 19
    const-string v4, "h5"

    .line 20
    .line 21
    const-string v5, "h4"

    .line 22
    .line 23
    const-string v7, "h3"

    .line 24
    .line 25
    const-string v9, "h2"

    .line 26
    .line 27
    const-string v11, "h1"

    .line 28
    .line 29
    const-string v13, "dt"

    .line 30
    .line 31
    const-string v14, "dd"

    .line 32
    .line 33
    const-string v15, "p"

    .line 34
    .line 35
    const-string v6, "li"

    .line 36
    .line 37
    const-string v12, "br"

    .line 38
    .line 39
    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 40
    .line 41
    const-string v8, "template"

    .line 42
    .line 43
    move/from16 v20, v3

    .line 44
    .line 45
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 46
    .line 47
    move-object/from16 v21, v10

    .line 48
    .line 49
    const-string v10, "body"

    .line 50
    .line 51
    move-object/from16 v22, v3

    .line 52
    .line 53
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v24, v8

    .line 56
    .line 57
    const/16 v25, 0x1

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    packed-switch v20, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    iget-object v0, v1, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lorg/jsoup/parser/Token$TokenType;

    .line 66
    .line 67
    const-string v1, "Unexpected state: "

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return v8

    .line 73
    :pswitch_0
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-lez v4, :cond_0

    .line 80
    .line 81
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    return v0

    .line 88
    :cond_0
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_af

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 95
    .line 96
    .line 97
    return v25

    .line 98
    :pswitch_1
    move-object v0, v1

    .line 99
    check-cast v0, Lorg/jsoup/parser/Token$Character;

    .line 100
    .line 101
    iget-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 102
    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    invoke-static {v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;Z)V

    .line 115
    .line 116
    .line 117
    return v25

    .line 118
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;Z)V

    .line 122
    .line 123
    .line 124
    iput-boolean v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 125
    .line 126
    return v25

    .line 127
    :pswitch_2
    move/from16 v20, v8

    .line 128
    .line 129
    move-object v8, v1

    .line 130
    check-cast v8, Lorg/jsoup/parser/Token$EndTag;

    .line 131
    .line 132
    invoke-virtual {v8}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v26

    .line 143
    sparse-switch v26, :sswitch_data_0

    .line 144
    .line 145
    .line 146
    :goto_0
    move-object/from16 v4, v24

    .line 147
    .line 148
    :goto_1
    const/4 v6, -0x1

    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :sswitch_0
    const-string v4, "sarcasm"

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_2

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_2
    const/16 v6, 0x10

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :sswitch_1
    const-string v4, "span"

    .line 164
    .line 165
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_3

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_3
    const/16 v6, 0xf

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :sswitch_2
    const-string v4, "html"

    .line 176
    .line 177
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_4

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_4
    const/16 v6, 0xe

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :sswitch_3
    const-string v4, "form"

    .line 188
    .line 189
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_5

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_5
    const/16 v6, 0xd

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :sswitch_4
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_6

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_6
    const/16 v6, 0xc

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :sswitch_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-nez v4, :cond_7

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_7
    const/16 v6, 0xb

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :sswitch_6
    const-string v4, "h6"

    .line 220
    .line 221
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-nez v4, :cond_8

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_8
    const/16 v6, 0xa

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :sswitch_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-nez v4, :cond_9

    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_9
    const/16 v6, 0x9

    .line 239
    .line 240
    :goto_2
    move-object/from16 v4, v24

    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :sswitch_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-nez v4, :cond_a

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_a
    move-object/from16 v4, v24

    .line 252
    .line 253
    const/16 v6, 0x8

    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :sswitch_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-nez v4, :cond_b

    .line 262
    .line 263
    goto :goto_0

    .line 264
    :cond_b
    move-object/from16 v4, v24

    .line 265
    .line 266
    const/4 v6, 0x7

    .line 267
    goto :goto_3

    .line 268
    :sswitch_a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_c

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_c
    move-object/from16 v4, v24

    .line 277
    .line 278
    const/4 v6, 0x6

    .line 279
    goto :goto_3

    .line 280
    :sswitch_b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-nez v4, :cond_d

    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_d
    move-object/from16 v4, v24

    .line 289
    .line 290
    const/4 v6, 0x5

    .line 291
    goto :goto_3

    .line 292
    :sswitch_c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-nez v4, :cond_e

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_e
    move-object/from16 v4, v24

    .line 301
    .line 302
    const/4 v6, 0x4

    .line 303
    goto :goto_3

    .line 304
    :sswitch_d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-nez v4, :cond_f

    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_f
    move-object/from16 v4, v24

    .line 313
    .line 314
    const/4 v6, 0x3

    .line 315
    goto :goto_3

    .line 316
    :sswitch_e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-nez v4, :cond_10

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_10
    move-object/from16 v4, v24

    .line 325
    .line 326
    const/4 v6, 0x2

    .line 327
    goto :goto_3

    .line 328
    :sswitch_f
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-nez v4, :cond_11

    .line 333
    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_11
    move-object/from16 v4, v24

    .line 337
    .line 338
    move/from16 v6, v25

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :sswitch_10
    move-object/from16 v4, v24

    .line 342
    .line 343
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-nez v5, :cond_12

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :cond_12
    move/from16 v6, v20

    .line 352
    .line 353
    :goto_3
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    .line 354
    .line 355
    const-string v7, "http://www.w3.org/1999/xhtml"

    .line 356
    .line 357
    packed-switch v6, :pswitch_data_1

    .line 358
    .line 359
    .line 360
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v1, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_36

    .line 367
    .line 368
    iget-object v3, v8, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 375
    .line 376
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_13

    .line 383
    .line 384
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-static {v4, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_13

    .line 395
    .line 396
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 397
    .line 398
    .line 399
    return v25

    .line 400
    :cond_13
    move/from16 v1, v20

    .line 401
    .line 402
    :goto_4
    const/16 v8, 0x8

    .line 403
    .line 404
    if-lt v1, v8, :cond_14

    .line 405
    .line 406
    :goto_5
    move/from16 v8, v25

    .line 407
    .line 408
    goto/16 :goto_b

    .line 409
    .line 410
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 411
    .line 412
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    add-int/lit8 v4, v4, -0x1

    .line 419
    .line 420
    :goto_6
    if-ltz v4, :cond_17

    .line 421
    .line 422
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 429
    .line 430
    if-nez v5, :cond_15

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_15
    iget-object v6, v5, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 434
    .line 435
    iget-object v6, v6, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    if-eqz v6, :cond_16

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_16
    add-int/lit8 v4, v4, -0x1

    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_17
    :goto_7
    const/4 v5, 0x0

    .line 448
    :goto_8
    if-nez v5, :cond_18

    .line 449
    .line 450
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    goto :goto_b

    .line 455
    :cond_18
    iget-object v4, v5, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 456
    .line 457
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-static {v6, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    if-nez v6, :cond_19

    .line 464
    .line 465
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 469
    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_19
    iget-object v6, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    if-nez v6, :cond_1a

    .line 479
    .line 480
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 481
    .line 482
    .line 483
    move/from16 v8, v20

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_1a
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    if-eq v6, v5, :cond_1b

    .line 491
    .line 492
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 493
    .line 494
    .line 495
    :cond_1b
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 496
    .line 497
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    const/4 v11, -0x1

    .line 502
    if-eq v9, v11, :cond_1d

    .line 503
    .line 504
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    .line 505
    .line 506
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 507
    .line 508
    .line 509
    move-result v11

    .line 510
    if-ge v9, v11, :cond_1d

    .line 511
    .line 512
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v11

    .line 516
    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 517
    .line 518
    invoke-static {v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    if-eqz v12, :cond_1c

    .line 523
    .line 524
    goto :goto_9

    .line 525
    :cond_1d
    const/4 v11, 0x0

    .line 526
    :goto_9
    if-nez v11, :cond_1f

    .line 527
    .line 528
    :goto_a
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    if-eq v0, v5, :cond_1e

    .line 533
    .line 534
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 535
    .line 536
    .line 537
    goto :goto_a

    .line 538
    :cond_1e
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_5

    .line 545
    .line 546
    :cond_1f
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    .line 547
    .line 548
    .line 549
    move-result-object v6

    .line 550
    if-nez v6, :cond_20

    .line 551
    .line 552
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_5

    .line 556
    .line 557
    :goto_b
    return v8

    .line 558
    :cond_20
    move/from16 v9, v20

    .line 559
    .line 560
    :goto_c
    iget-object v12, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 563
    .line 564
    .line 565
    move-result v12

    .line 566
    if-ge v9, v12, :cond_22

    .line 567
    .line 568
    iget-object v12, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v12

    .line 574
    if-ne v5, v12, :cond_21

    .line 575
    .line 576
    goto :goto_d

    .line 577
    :cond_21
    add-int/lit8 v9, v9, 0x1

    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_22
    const/4 v9, -0x1

    .line 581
    :goto_d
    move-object v13, v11

    .line 582
    move-object v14, v13

    .line 583
    move/from16 v12, v20

    .line 584
    .line 585
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 586
    .line 587
    iget-object v15, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-static {v15, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 590
    .line 591
    .line 592
    move-result v15

    .line 593
    if-nez v15, :cond_23

    .line 594
    .line 595
    iget-object v13, v13, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 596
    .line 597
    goto :goto_f

    .line 598
    :cond_23
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    .line 599
    .line 600
    .line 601
    move-result-object v13

    .line 602
    :goto_f
    if-eqz v13, :cond_24

    .line 603
    .line 604
    invoke-virtual {v13, v10}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 605
    .line 606
    .line 607
    move-result v15

    .line 608
    if-eqz v15, :cond_25

    .line 609
    .line 610
    :cond_24
    move/from16 v16, v1

    .line 611
    .line 612
    move-object/from16 v17, v3

    .line 613
    .line 614
    goto/16 :goto_16

    .line 615
    .line 616
    :cond_25
    if-ne v13, v5, :cond_26

    .line 617
    .line 618
    :goto_10
    move/from16 v16, v1

    .line 619
    .line 620
    move-object/from16 v17, v3

    .line 621
    .line 622
    goto/16 :goto_17

    .line 623
    .line 624
    :cond_26
    const/4 v15, 0x3

    .line 625
    if-le v12, v15, :cond_27

    .line 626
    .line 627
    iget-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-static {v8, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 630
    .line 631
    .line 632
    move-result v8

    .line 633
    if-eqz v8, :cond_27

    .line 634
    .line 635
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 636
    .line 637
    .line 638
    goto :goto_10

    .line 639
    :cond_27
    iget-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-static {v8, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 642
    .line 643
    .line 644
    move-result v8

    .line 645
    if-nez v8, :cond_28

    .line 646
    .line 647
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 648
    .line 649
    .line 650
    const/16 v8, 0x8

    .line 651
    .line 652
    goto :goto_e

    .line 653
    :cond_28
    iget-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-static {v8, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    if-nez v8, :cond_29

    .line 660
    .line 661
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 665
    .line 666
    .line 667
    goto :goto_10

    .line 668
    :cond_29
    new-instance v8, Lorg/jsoup/nodes/Element;

    .line 669
    .line 670
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v15

    .line 674
    move/from16 v16, v1

    .line 675
    .line 676
    iget-object v1, v13, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 677
    .line 678
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 679
    .line 680
    move-object/from16 v17, v3

    .line 681
    .line 682
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tagSet:Lorg/jsoup/parser/TagSet;

    .line 683
    .line 684
    move/from16 v18, v12

    .line 685
    .line 686
    move/from16 v12, v25

    .line 687
    .line 688
    invoke-virtual {v3, v15, v1, v7, v12}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    .line 693
    .line 694
    const/4 v12, 0x0

    .line 695
    invoke-direct {v8, v1, v3, v12}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 696
    .line 697
    .line 698
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    const/4 v12, -0x1

    .line 705
    if-eq v3, v12, :cond_2a

    .line 706
    .line 707
    const/4 v15, 0x1

    .line 708
    goto :goto_11

    .line 709
    :cond_2a
    move/from16 v15, v20

    .line 710
    .line 711
    :goto_11
    invoke-static {v15}, Landroidx/room/Room;->isTrue(Z)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    if-eq v3, v12, :cond_2b

    .line 724
    .line 725
    const/4 v12, 0x1

    .line 726
    goto :goto_12

    .line 727
    :cond_2b
    move/from16 v12, v20

    .line 728
    .line 729
    :goto_12
    invoke-static {v12}, Landroidx/room/Room;->isTrue(Z)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    if-ne v14, v11, :cond_2e

    .line 736
    .line 737
    move/from16 v1, v20

    .line 738
    .line 739
    :goto_13
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 740
    .line 741
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    if-ge v1, v3, :cond_2d

    .line 746
    .line 747
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 748
    .line 749
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    if-ne v8, v3, :cond_2c

    .line 754
    .line 755
    :goto_14
    const/16 v25, 0x1

    .line 756
    .line 757
    goto :goto_15

    .line 758
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    .line 759
    .line 760
    goto :goto_13

    .line 761
    :cond_2d
    const/4 v1, -0x1

    .line 762
    goto :goto_14

    .line 763
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 764
    .line 765
    move v9, v1

    .line 766
    :cond_2e
    invoke-virtual {v8, v14}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 767
    .line 768
    .line 769
    move-object v13, v8

    .line 770
    move-object v14, v13

    .line 771
    move/from16 v1, v16

    .line 772
    .line 773
    move-object/from16 v3, v17

    .line 774
    .line 775
    move/from16 v12, v18

    .line 776
    .line 777
    const/16 v8, 0x8

    .line 778
    .line 779
    const/16 v25, 0x1

    .line 780
    .line 781
    goto/16 :goto_e

    .line 782
    .line 783
    :goto_16
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 784
    .line 785
    .line 786
    :goto_17
    invoke-virtual {v6, v14}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 787
    .line 788
    .line 789
    new-instance v1, Lorg/jsoup/nodes/Element;

    .line 790
    .line 791
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    .line 792
    .line 793
    const/4 v12, 0x0

    .line 794
    invoke-direct {v1, v4, v3, v12}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attributes;->size()I

    .line 809
    .line 810
    .line 811
    move-result v6

    .line 812
    if-nez v6, :cond_2f

    .line 813
    .line 814
    goto :goto_1a

    .line 815
    :cond_2f
    iget v8, v3, Lorg/jsoup/nodes/Attributes;->size:I

    .line 816
    .line 817
    add-int/2addr v8, v6

    .line 818
    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 819
    .line 820
    .line 821
    iget v6, v3, Lorg/jsoup/nodes/Attributes;->size:I

    .line 822
    .line 823
    if-eqz v6, :cond_30

    .line 824
    .line 825
    const/4 v6, 0x1

    .line 826
    goto :goto_18

    .line 827
    :cond_30
    move/from16 v6, v20

    .line 828
    .line 829
    :goto_18
    new-instance v8, Lorg/jsoup/nodes/Attributes$1;

    .line 830
    .line 831
    invoke-direct {v8, v4}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    .line 832
    .line 833
    .line 834
    :goto_19
    invoke-virtual {v8}, Lorg/jsoup/nodes/Attributes$1;->hasNext()Z

    .line 835
    .line 836
    .line 837
    move-result v4

    .line 838
    if-eqz v4, :cond_32

    .line 839
    .line 840
    invoke-virtual {v8}, Lorg/jsoup/nodes/Attributes$1;->next()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    check-cast v4, Lorg/jsoup/nodes/Attribute;

    .line 845
    .line 846
    iget-object v12, v4, Lorg/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 847
    .line 848
    if-eqz v6, :cond_31

    .line 849
    .line 850
    iget-object v13, v4, Lorg/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 851
    .line 852
    invoke-static {v13}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/Object;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v13

    .line 856
    invoke-virtual {v3, v12, v13}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    iput-object v3, v4, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    .line 860
    .line 861
    goto :goto_19

    .line 862
    :cond_31
    iget-object v4, v4, Lorg/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 863
    .line 864
    invoke-static {v4}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/Object;)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    invoke-virtual {v3, v12, v4}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 869
    .line 870
    .line 871
    goto :goto_19

    .line 872
    :cond_32
    :goto_1a
    iget-object v3, v11, Lorg/jsoup/nodes/Element;->childNodes:Lorg/jsoup/nodes/Element$NodeList;

    .line 873
    .line 874
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-nez v3, :cond_33

    .line 879
    .line 880
    sget-object v3, Lorg/jsoup/nodes/Node;->EmptyNodes:Ljava/util/List;

    .line 881
    .line 882
    goto :goto_1b

    .line 883
    :cond_33
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    new-instance v4, Ljava/util/ArrayList;

    .line 888
    .line 889
    check-cast v3, Ljava/util/ArrayList;

    .line 890
    .line 891
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 892
    .line 893
    .line 894
    move-result v6

    .line 895
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 899
    .line 900
    .line 901
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    :goto_1b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    if-eqz v4, :cond_34

    .line 914
    .line 915
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    check-cast v4, Lorg/jsoup/nodes/Node;

    .line 920
    .line 921
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 922
    .line 923
    .line 924
    goto :goto_1c

    .line 925
    :cond_34
    invoke-virtual {v11, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 932
    .line 933
    .line 934
    :try_start_0
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 935
    .line 936
    invoke-virtual {v3, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .line 938
    .line 939
    goto :goto_1d

    .line 940
    :catch_0
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 941
    .line 942
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    :goto_1d
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 946
    .line 947
    .line 948
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 949
    .line 950
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    const/4 v8, -0x1

    .line 955
    if-ne v3, v8, :cond_35

    .line 956
    .line 957
    const-string v3, "Did not find element on stack to insert after"

    .line 958
    .line 959
    const/4 v12, 0x0

    .line 960
    invoke-virtual {v2, v3, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 964
    .line 965
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    goto :goto_1e

    .line 969
    :cond_35
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 970
    .line 971
    add-int/lit8 v3, v3, 0x1

    .line 972
    .line 973
    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    :goto_1e
    move/from16 v1, v16

    .line 977
    .line 978
    move-object/from16 v3, v17

    .line 979
    .line 980
    const/16 v25, 0x1

    .line 981
    .line 982
    goto/16 :goto_4

    .line 983
    .line 984
    :cond_36
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 985
    .line 986
    invoke-static {v1, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    if-eqz v3, :cond_39

    .line 991
    .line 992
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 993
    .line 994
    .line 995
    move-result v3

    .line 996
    if-nez v3, :cond_37

    .line 997
    .line 998
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 999
    .line 1000
    .line 1001
    return v20

    .line 1002
    :cond_37
    move/from16 v3, v20

    .line 1003
    .line 1004
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v3

    .line 1011
    if-nez v3, :cond_38

    .line 1012
    .line 1013
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1014
    .line 1015
    .line 1016
    :cond_38
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    const/16 v25, 0x1

    .line 1020
    .line 1021
    return v25

    .line 1022
    :cond_39
    move-object/from16 v3, v22

    .line 1023
    .line 1024
    invoke-static {v1, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v3

    .line 1028
    if-eqz v3, :cond_3d

    .line 1029
    .line 1030
    const-string v3, "name"

    .line 1031
    .line 1032
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v3

    .line 1036
    if-nez v3, :cond_3c

    .line 1037
    .line 1038
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v3

    .line 1042
    if-nez v3, :cond_3a

    .line 1043
    .line 1044
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1045
    .line 1046
    .line 1047
    const/4 v3, 0x0

    .line 1048
    return v3

    .line 1049
    :cond_3a
    const/4 v3, 0x0

    .line 1050
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v3

    .line 1057
    if-nez v3, :cond_3b

    .line 1058
    .line 1059
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1060
    .line 1061
    .line 1062
    :cond_3b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    .line 1066
    .line 1067
    .line 1068
    const/16 v25, 0x1

    .line 1069
    .line 1070
    return v25

    .line 1071
    :cond_3c
    :goto_1f
    const/16 v25, 0x1

    .line 1072
    .line 1073
    goto/16 :goto_2d

    .line 1074
    .line 1075
    :cond_3d
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    return v0

    .line 1080
    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v0

    .line 1084
    return v0

    .line 1085
    :pswitch_4
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v1

    .line 1089
    if-nez v1, :cond_3e

    .line 1090
    .line 1091
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1092
    .line 1093
    .line 1094
    const/16 v20, 0x0

    .line 1095
    .line 1096
    return v20

    .line 1097
    :cond_3e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    if-eqz v1, :cond_3f

    .line 1102
    .line 1103
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1104
    .line 1105
    .line 1106
    :cond_3f
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1107
    .line 1108
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1109
    .line 1110
    move-object/from16 v1, p1

    .line 1111
    .line 1112
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v0

    .line 1116
    return v0

    .line 1117
    :pswitch_5
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v3

    .line 1121
    if-nez v3, :cond_43

    .line 1122
    .line 1123
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 1124
    .line 1125
    const/4 v12, 0x0

    .line 1126
    iput-object v12, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 1127
    .line 1128
    if-eqz v3, :cond_40

    .line 1129
    .line 1130
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v4

    .line 1134
    if-nez v4, :cond_41

    .line 1135
    .line 1136
    :cond_40
    const/4 v4, 0x0

    .line 1137
    goto :goto_20

    .line 1138
    :cond_41
    const/4 v4, 0x0

    .line 1139
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1143
    .line 1144
    .line 1145
    move-result v1

    .line 1146
    if-nez v1, :cond_42

    .line 1147
    .line 1148
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1149
    .line 1150
    .line 1151
    :cond_42
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 1152
    .line 1153
    .line 1154
    const/16 v25, 0x1

    .line 1155
    .line 1156
    return v25

    .line 1157
    :goto_20
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1158
    .line 1159
    .line 1160
    return v4

    .line 1161
    :cond_43
    const/4 v4, 0x0

    .line 1162
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v3

    .line 1166
    if-nez v3, :cond_44

    .line 1167
    .line 1168
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1169
    .line 1170
    .line 1171
    return v4

    .line 1172
    :cond_44
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v3

    .line 1179
    if-nez v3, :cond_45

    .line 1180
    .line 1181
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1182
    .line 1183
    .line 1184
    :cond_45
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    const/16 v25, 0x1

    .line 1188
    .line 1189
    return v25

    .line 1190
    :pswitch_6
    move/from16 v4, v20

    .line 1191
    .line 1192
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v1

    .line 1196
    if-nez v1, :cond_46

    .line 1197
    .line 1198
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1199
    .line 1200
    .line 1201
    return v4

    .line 1202
    :cond_46
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v1

    .line 1206
    if-eqz v1, :cond_47

    .line 1207
    .line 1208
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1209
    .line 1210
    .line 1211
    :cond_47
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 1212
    .line 1213
    .line 1214
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1215
    .line 1216
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1217
    .line 1218
    const/16 v25, 0x1

    .line 1219
    .line 1220
    return v25

    .line 1221
    :pswitch_7
    move/from16 v4, v20

    .line 1222
    .line 1223
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    .line 1224
    .line 1225
    aput-object v1, v3, v4

    .line 1226
    .line 1227
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    .line 1228
    .line 1229
    invoke-virtual {v2, v3, v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v3

    .line 1233
    if-nez v3, :cond_48

    .line 1234
    .line 1235
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1236
    .line 1237
    .line 1238
    return v4

    .line 1239
    :cond_48
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    if-nez v3, :cond_49

    .line 1247
    .line 1248
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1249
    .line 1250
    .line 1251
    :cond_49
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    const/16 v25, 0x1

    .line 1255
    .line 1256
    return v25

    .line 1257
    :pswitch_8
    move-object/from16 v3, v21

    .line 1258
    .line 1259
    const/4 v12, 0x0

    .line 1260
    invoke-virtual {v2, v3, v5, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v4

    .line 1264
    if-nez v4, :cond_4a

    .line 1265
    .line 1266
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1267
    .line 1268
    .line 1269
    const/16 v20, 0x0

    .line 1270
    .line 1271
    return v20

    .line 1272
    :cond_4a
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v1

    .line 1279
    if-nez v1, :cond_4b

    .line 1280
    .line 1281
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1282
    .line 1283
    .line 1284
    :cond_4b
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 1285
    .line 1286
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    const/16 v25, 0x1

    .line 1291
    .line 1292
    add-int/lit8 v0, v0, -0x1

    .line 1293
    .line 1294
    :goto_21
    if-ltz v0, :cond_3c

    .line 1295
    .line 1296
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    iget-object v4, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 1301
    .line 1302
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 1303
    .line 1304
    invoke-static {v4, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v4

    .line 1308
    if-eqz v4, :cond_4c

    .line 1309
    .line 1310
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 1311
    .line 1312
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 1313
    .line 1314
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v1

    .line 1318
    if-eqz v1, :cond_4c

    .line 1319
    .line 1320
    goto/16 :goto_1f

    .line 1321
    .line 1322
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    .line 1323
    .line 1324
    goto :goto_21

    .line 1325
    :pswitch_9
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v3

    .line 1329
    if-nez v3, :cond_4d

    .line 1330
    .line 1331
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1332
    .line 1333
    .line 1334
    const/16 v20, 0x0

    .line 1335
    .line 1336
    return v20

    .line 1337
    :cond_4d
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v3

    .line 1344
    if-nez v3, :cond_4e

    .line 1345
    .line 1346
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1347
    .line 1348
    .line 1349
    :cond_4e
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    const/16 v25, 0x1

    .line 1353
    .line 1354
    return v25

    .line 1355
    :pswitch_a
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    return v20

    .line 1362
    :pswitch_b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 1363
    .line 1364
    .line 1365
    move-result v3

    .line 1366
    if-nez v3, :cond_4f

    .line 1367
    .line 1368
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v0

    .line 1378
    return v0

    .line 1379
    :cond_4f
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v3

    .line 1386
    if-nez v3, :cond_50

    .line 1387
    .line 1388
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1389
    .line 1390
    .line 1391
    :cond_50
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1392
    .line 1393
    .line 1394
    const/16 v25, 0x1

    .line 1395
    .line 1396
    return v25

    .line 1397
    :pswitch_c
    move-object/from16 v1, p1

    .line 1398
    .line 1399
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1400
    .line 1401
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 1405
    .line 1406
    .line 1407
    return v25

    .line 1408
    :pswitch_d
    move-object/from16 v3, v22

    .line 1409
    .line 1410
    const/16 v19, 0x3

    .line 1411
    .line 1412
    move-object v8, v1

    .line 1413
    check-cast v8, Lorg/jsoup/parser/Token$StartTag;

    .line 1414
    .line 1415
    invoke-virtual {v8}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1423
    .line 1424
    .line 1425
    move-result v22

    .line 1426
    sparse-switch v22, :sswitch_data_1

    .line 1427
    .line 1428
    .line 1429
    :goto_22
    const/16 v23, -0x1

    .line 1430
    .line 1431
    goto/16 :goto_24

    .line 1432
    .line 1433
    :sswitch_11
    const-string v4, "noembed"

    .line 1434
    .line 1435
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v4

    .line 1439
    if-nez v4, :cond_51

    .line 1440
    .line 1441
    goto :goto_22

    .line 1442
    :cond_51
    const/16 v4, 0x36

    .line 1443
    .line 1444
    goto/16 :goto_23

    .line 1445
    .line 1446
    :sswitch_12
    const-string v4, "plaintext"

    .line 1447
    .line 1448
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v4

    .line 1452
    if-nez v4, :cond_52

    .line 1453
    .line 1454
    goto :goto_22

    .line 1455
    :cond_52
    const/16 v4, 0x35

    .line 1456
    .line 1457
    goto/16 :goto_23

    .line 1458
    .line 1459
    :sswitch_13
    const-string v4, "listing"

    .line 1460
    .line 1461
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1462
    .line 1463
    .line 1464
    move-result v4

    .line 1465
    if-nez v4, :cond_53

    .line 1466
    .line 1467
    goto :goto_22

    .line 1468
    :cond_53
    const/16 v4, 0x34

    .line 1469
    .line 1470
    goto/16 :goto_23

    .line 1471
    .line 1472
    :sswitch_14
    const-string v4, "table"

    .line 1473
    .line 1474
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v4

    .line 1478
    if-nez v4, :cond_54

    .line 1479
    .line 1480
    goto :goto_22

    .line 1481
    :cond_54
    const/16 v4, 0x33

    .line 1482
    .line 1483
    goto/16 :goto_23

    .line 1484
    .line 1485
    :sswitch_15
    const-string v4, "small"

    .line 1486
    .line 1487
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v4

    .line 1491
    if-nez v4, :cond_55

    .line 1492
    .line 1493
    goto :goto_22

    .line 1494
    :cond_55
    const/16 v4, 0x32

    .line 1495
    .line 1496
    goto/16 :goto_23

    .line 1497
    .line 1498
    :sswitch_16
    const-string v4, "input"

    .line 1499
    .line 1500
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1501
    .line 1502
    .line 1503
    move-result v4

    .line 1504
    if-nez v4, :cond_56

    .line 1505
    .line 1506
    goto :goto_22

    .line 1507
    :cond_56
    const/16 v4, 0x31

    .line 1508
    .line 1509
    goto/16 :goto_23

    .line 1510
    .line 1511
    :sswitch_17
    const-string v4, "image"

    .line 1512
    .line 1513
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v4

    .line 1517
    if-nez v4, :cond_57

    .line 1518
    .line 1519
    goto :goto_22

    .line 1520
    :cond_57
    const/16 v4, 0x30

    .line 1521
    .line 1522
    goto/16 :goto_23

    .line 1523
    .line 1524
    :sswitch_18
    const-string v4, "embed"

    .line 1525
    .line 1526
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1527
    .line 1528
    .line 1529
    move-result v4

    .line 1530
    if-nez v4, :cond_58

    .line 1531
    .line 1532
    goto :goto_22

    .line 1533
    :cond_58
    const/16 v4, 0x2f

    .line 1534
    .line 1535
    goto/16 :goto_23

    .line 1536
    .line 1537
    :sswitch_19
    const-string v4, "span"

    .line 1538
    .line 1539
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    move-result v4

    .line 1543
    if-nez v4, :cond_59

    .line 1544
    .line 1545
    goto :goto_22

    .line 1546
    :cond_59
    const/16 v4, 0x2e

    .line 1547
    .line 1548
    goto/16 :goto_23

    .line 1549
    .line 1550
    :sswitch_1a
    const-string v4, "nobr"

    .line 1551
    .line 1552
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v4

    .line 1556
    if-nez v4, :cond_5a

    .line 1557
    .line 1558
    goto/16 :goto_22

    .line 1559
    .line 1560
    :cond_5a
    const/16 v4, 0x2d

    .line 1561
    .line 1562
    goto/16 :goto_23

    .line 1563
    .line 1564
    :sswitch_1b
    const-string v4, "math"

    .line 1565
    .line 1566
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v4

    .line 1570
    if-nez v4, :cond_5b

    .line 1571
    .line 1572
    goto/16 :goto_22

    .line 1573
    .line 1574
    :cond_5b
    const/16 v4, 0x2c

    .line 1575
    .line 1576
    goto/16 :goto_23

    .line 1577
    .line 1578
    :sswitch_1c
    const-string v4, "html"

    .line 1579
    .line 1580
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1581
    .line 1582
    .line 1583
    move-result v4

    .line 1584
    if-nez v4, :cond_5c

    .line 1585
    .line 1586
    goto/16 :goto_22

    .line 1587
    .line 1588
    :cond_5c
    const/16 v4, 0x2b

    .line 1589
    .line 1590
    goto/16 :goto_23

    .line 1591
    .line 1592
    :sswitch_1d
    const-string v4, "form"

    .line 1593
    .line 1594
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v4

    .line 1598
    if-nez v4, :cond_5d

    .line 1599
    .line 1600
    goto/16 :goto_22

    .line 1601
    .line 1602
    :cond_5d
    const/16 v4, 0x2a

    .line 1603
    .line 1604
    goto/16 :goto_23

    .line 1605
    .line 1606
    :sswitch_1e
    const-string v4, "font"

    .line 1607
    .line 1608
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v4

    .line 1612
    if-nez v4, :cond_5e

    .line 1613
    .line 1614
    goto/16 :goto_22

    .line 1615
    .line 1616
    :cond_5e
    const/16 v4, 0x29

    .line 1617
    .line 1618
    goto/16 :goto_23

    .line 1619
    .line 1620
    :sswitch_1f
    const-string v4, "code"

    .line 1621
    .line 1622
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v4

    .line 1626
    if-nez v4, :cond_5f

    .line 1627
    .line 1628
    goto/16 :goto_22

    .line 1629
    .line 1630
    :cond_5f
    const/16 v4, 0x28

    .line 1631
    .line 1632
    goto/16 :goto_23

    .line 1633
    .line 1634
    :sswitch_20
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v4

    .line 1638
    if-nez v4, :cond_60

    .line 1639
    .line 1640
    goto/16 :goto_22

    .line 1641
    .line 1642
    :cond_60
    const/16 v4, 0x27

    .line 1643
    .line 1644
    goto/16 :goto_23

    .line 1645
    .line 1646
    :sswitch_21
    const-string v4, "area"

    .line 1647
    .line 1648
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v4

    .line 1652
    if-nez v4, :cond_61

    .line 1653
    .line 1654
    goto/16 :goto_22

    .line 1655
    .line 1656
    :cond_61
    const/16 v4, 0x26

    .line 1657
    .line 1658
    goto/16 :goto_23

    .line 1659
    .line 1660
    :sswitch_22
    const-string/jumbo v4, "xmp"

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v4

    .line 1667
    if-nez v4, :cond_62

    .line 1668
    .line 1669
    goto/16 :goto_22

    .line 1670
    .line 1671
    :cond_62
    const/16 v4, 0x25

    .line 1672
    .line 1673
    goto/16 :goto_23

    .line 1674
    .line 1675
    :sswitch_23
    const-string/jumbo v4, "wbr"

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1679
    .line 1680
    .line 1681
    move-result v4

    .line 1682
    if-nez v4, :cond_63

    .line 1683
    .line 1684
    goto/16 :goto_22

    .line 1685
    .line 1686
    :cond_63
    const/16 v4, 0x24

    .line 1687
    .line 1688
    goto/16 :goto_23

    .line 1689
    .line 1690
    :sswitch_24
    const-string v4, "svg"

    .line 1691
    .line 1692
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v4

    .line 1696
    if-nez v4, :cond_64

    .line 1697
    .line 1698
    goto/16 :goto_22

    .line 1699
    .line 1700
    :cond_64
    const/16 v4, 0x23

    .line 1701
    .line 1702
    goto/16 :goto_23

    .line 1703
    .line 1704
    :sswitch_25
    const-string v4, "rtc"

    .line 1705
    .line 1706
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1707
    .line 1708
    .line 1709
    move-result v4

    .line 1710
    if-nez v4, :cond_65

    .line 1711
    .line 1712
    goto/16 :goto_22

    .line 1713
    .line 1714
    :cond_65
    const/16 v4, 0x22

    .line 1715
    .line 1716
    goto/16 :goto_23

    .line 1717
    .line 1718
    :sswitch_26
    const-string v4, "pre"

    .line 1719
    .line 1720
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1721
    .line 1722
    .line 1723
    move-result v4

    .line 1724
    if-nez v4, :cond_66

    .line 1725
    .line 1726
    goto/16 :goto_22

    .line 1727
    .line 1728
    :cond_66
    const/16 v4, 0x21

    .line 1729
    .line 1730
    goto/16 :goto_23

    .line 1731
    .line 1732
    :sswitch_27
    const-string v4, "img"

    .line 1733
    .line 1734
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1735
    .line 1736
    .line 1737
    move-result v4

    .line 1738
    if-nez v4, :cond_67

    .line 1739
    .line 1740
    goto/16 :goto_22

    .line 1741
    .line 1742
    :cond_67
    const/16 v4, 0x20

    .line 1743
    .line 1744
    goto/16 :goto_23

    .line 1745
    .line 1746
    :sswitch_28
    const-string v4, "big"

    .line 1747
    .line 1748
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1749
    .line 1750
    .line 1751
    move-result v4

    .line 1752
    if-nez v4, :cond_68

    .line 1753
    .line 1754
    goto/16 :goto_22

    .line 1755
    .line 1756
    :cond_68
    const/16 v4, 0x1f

    .line 1757
    .line 1758
    goto/16 :goto_23

    .line 1759
    .line 1760
    :sswitch_29
    const-string/jumbo v4, "tt"

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v4

    .line 1767
    if-nez v4, :cond_69

    .line 1768
    .line 1769
    goto/16 :goto_22

    .line 1770
    .line 1771
    :cond_69
    const/16 v4, 0x1e

    .line 1772
    .line 1773
    goto/16 :goto_23

    .line 1774
    .line 1775
    :sswitch_2a
    const-string v4, "rt"

    .line 1776
    .line 1777
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1778
    .line 1779
    .line 1780
    move-result v4

    .line 1781
    if-nez v4, :cond_6a

    .line 1782
    .line 1783
    goto/16 :goto_22

    .line 1784
    .line 1785
    :cond_6a
    const/16 v4, 0x1d

    .line 1786
    .line 1787
    goto/16 :goto_23

    .line 1788
    .line 1789
    :sswitch_2b
    const-string v4, "rp"

    .line 1790
    .line 1791
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1792
    .line 1793
    .line 1794
    move-result v4

    .line 1795
    if-nez v4, :cond_6b

    .line 1796
    .line 1797
    goto/16 :goto_22

    .line 1798
    .line 1799
    :cond_6b
    const/16 v4, 0x1c

    .line 1800
    .line 1801
    goto/16 :goto_23

    .line 1802
    .line 1803
    :sswitch_2c
    const-string v4, "rb"

    .line 1804
    .line 1805
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1806
    .line 1807
    .line 1808
    move-result v4

    .line 1809
    if-nez v4, :cond_6c

    .line 1810
    .line 1811
    goto/16 :goto_22

    .line 1812
    .line 1813
    :cond_6c
    const/16 v4, 0x1b

    .line 1814
    .line 1815
    goto/16 :goto_23

    .line 1816
    .line 1817
    :sswitch_2d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1818
    .line 1819
    .line 1820
    move-result v4

    .line 1821
    if-nez v4, :cond_6d

    .line 1822
    .line 1823
    goto/16 :goto_22

    .line 1824
    .line 1825
    :cond_6d
    const/16 v4, 0x1a

    .line 1826
    .line 1827
    goto/16 :goto_23

    .line 1828
    .line 1829
    :sswitch_2e
    const-string v4, "hr"

    .line 1830
    .line 1831
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1832
    .line 1833
    .line 1834
    move-result v4

    .line 1835
    if-nez v4, :cond_6e

    .line 1836
    .line 1837
    goto/16 :goto_22

    .line 1838
    .line 1839
    :cond_6e
    const/16 v4, 0x19

    .line 1840
    .line 1841
    goto/16 :goto_23

    .line 1842
    .line 1843
    :sswitch_2f
    const-string v4, "h6"

    .line 1844
    .line 1845
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1846
    .line 1847
    .line 1848
    move-result v4

    .line 1849
    if-nez v4, :cond_6f

    .line 1850
    .line 1851
    goto/16 :goto_22

    .line 1852
    .line 1853
    :cond_6f
    const/16 v4, 0x18

    .line 1854
    .line 1855
    goto/16 :goto_23

    .line 1856
    .line 1857
    :sswitch_30
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1858
    .line 1859
    .line 1860
    move-result v4

    .line 1861
    if-nez v4, :cond_70

    .line 1862
    .line 1863
    goto/16 :goto_22

    .line 1864
    .line 1865
    :cond_70
    const/16 v4, 0x17

    .line 1866
    .line 1867
    goto/16 :goto_23

    .line 1868
    .line 1869
    :sswitch_31
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1870
    .line 1871
    .line 1872
    move-result v4

    .line 1873
    if-nez v4, :cond_71

    .line 1874
    .line 1875
    goto/16 :goto_22

    .line 1876
    .line 1877
    :cond_71
    const/16 v4, 0x16

    .line 1878
    .line 1879
    goto/16 :goto_23

    .line 1880
    .line 1881
    :sswitch_32
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1882
    .line 1883
    .line 1884
    move-result v4

    .line 1885
    if-nez v4, :cond_72

    .line 1886
    .line 1887
    goto/16 :goto_22

    .line 1888
    .line 1889
    :cond_72
    const/16 v4, 0x15

    .line 1890
    .line 1891
    goto/16 :goto_23

    .line 1892
    .line 1893
    :sswitch_33
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1894
    .line 1895
    .line 1896
    move-result v4

    .line 1897
    if-nez v4, :cond_73

    .line 1898
    .line 1899
    goto/16 :goto_22

    .line 1900
    .line 1901
    :cond_73
    const/16 v4, 0x14

    .line 1902
    .line 1903
    goto/16 :goto_23

    .line 1904
    .line 1905
    :sswitch_34
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1906
    .line 1907
    .line 1908
    move-result v4

    .line 1909
    if-nez v4, :cond_74

    .line 1910
    .line 1911
    goto/16 :goto_22

    .line 1912
    .line 1913
    :cond_74
    const/16 v4, 0x13

    .line 1914
    .line 1915
    goto/16 :goto_23

    .line 1916
    .line 1917
    :sswitch_35
    const-string v4, "em"

    .line 1918
    .line 1919
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1920
    .line 1921
    .line 1922
    move-result v4

    .line 1923
    if-nez v4, :cond_75

    .line 1924
    .line 1925
    goto/16 :goto_22

    .line 1926
    .line 1927
    :cond_75
    const/16 v4, 0x12

    .line 1928
    .line 1929
    goto/16 :goto_23

    .line 1930
    .line 1931
    :sswitch_36
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1932
    .line 1933
    .line 1934
    move-result v4

    .line 1935
    if-nez v4, :cond_76

    .line 1936
    .line 1937
    goto/16 :goto_22

    .line 1938
    .line 1939
    :cond_76
    const/16 v4, 0x11

    .line 1940
    .line 1941
    goto/16 :goto_23

    .line 1942
    .line 1943
    :sswitch_37
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1944
    .line 1945
    .line 1946
    move-result v4

    .line 1947
    if-nez v4, :cond_77

    .line 1948
    .line 1949
    goto/16 :goto_22

    .line 1950
    .line 1951
    :cond_77
    const/16 v4, 0x10

    .line 1952
    .line 1953
    goto :goto_23

    .line 1954
    :sswitch_38
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1955
    .line 1956
    .line 1957
    move-result v4

    .line 1958
    if-nez v4, :cond_78

    .line 1959
    .line 1960
    goto/16 :goto_22

    .line 1961
    .line 1962
    :cond_78
    const/16 v4, 0xf

    .line 1963
    .line 1964
    goto :goto_23

    .line 1965
    :sswitch_39
    const-string/jumbo v4, "u"

    .line 1966
    .line 1967
    .line 1968
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1969
    .line 1970
    .line 1971
    move-result v4

    .line 1972
    if-nez v4, :cond_79

    .line 1973
    .line 1974
    goto/16 :goto_22

    .line 1975
    .line 1976
    :cond_79
    const/16 v4, 0xe

    .line 1977
    .line 1978
    goto :goto_23

    .line 1979
    :sswitch_3a
    const-string v4, "s"

    .line 1980
    .line 1981
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1982
    .line 1983
    .line 1984
    move-result v4

    .line 1985
    if-nez v4, :cond_7a

    .line 1986
    .line 1987
    goto/16 :goto_22

    .line 1988
    .line 1989
    :cond_7a
    const/16 v4, 0xd

    .line 1990
    .line 1991
    goto :goto_23

    .line 1992
    :sswitch_3b
    const-string v4, "i"

    .line 1993
    .line 1994
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1995
    .line 1996
    .line 1997
    move-result v4

    .line 1998
    if-nez v4, :cond_7b

    .line 1999
    .line 2000
    goto/16 :goto_22

    .line 2001
    .line 2002
    :cond_7b
    const/16 v4, 0xc

    .line 2003
    .line 2004
    goto :goto_23

    .line 2005
    :sswitch_3c
    const-string v4, "b"

    .line 2006
    .line 2007
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2008
    .line 2009
    .line 2010
    move-result v4

    .line 2011
    if-nez v4, :cond_7c

    .line 2012
    .line 2013
    goto/16 :goto_22

    .line 2014
    .line 2015
    :cond_7c
    const/16 v4, 0xb

    .line 2016
    .line 2017
    goto :goto_23

    .line 2018
    :sswitch_3d
    const-string v4, "a"

    .line 2019
    .line 2020
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2021
    .line 2022
    .line 2023
    move-result v4

    .line 2024
    if-nez v4, :cond_7d

    .line 2025
    .line 2026
    goto/16 :goto_22

    .line 2027
    .line 2028
    :cond_7d
    const/16 v4, 0xa

    .line 2029
    .line 2030
    goto :goto_23

    .line 2031
    :sswitch_3e
    const-string v4, "optgroup"

    .line 2032
    .line 2033
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2034
    .line 2035
    .line 2036
    move-result v4

    .line 2037
    if-nez v4, :cond_7e

    .line 2038
    .line 2039
    goto/16 :goto_22

    .line 2040
    .line 2041
    :cond_7e
    const/16 v4, 0x9

    .line 2042
    .line 2043
    :goto_23
    move/from16 v23, v4

    .line 2044
    .line 2045
    goto/16 :goto_24

    .line 2046
    .line 2047
    :sswitch_3f
    const-string v4, "strong"

    .line 2048
    .line 2049
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2050
    .line 2051
    .line 2052
    move-result v4

    .line 2053
    if-nez v4, :cond_7f

    .line 2054
    .line 2055
    goto/16 :goto_22

    .line 2056
    .line 2057
    :cond_7f
    const/16 v23, 0x8

    .line 2058
    .line 2059
    goto/16 :goto_24

    .line 2060
    .line 2061
    :sswitch_40
    const-string v4, "strike"

    .line 2062
    .line 2063
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2064
    .line 2065
    .line 2066
    move-result v4

    .line 2067
    if-nez v4, :cond_80

    .line 2068
    .line 2069
    goto/16 :goto_22

    .line 2070
    .line 2071
    :cond_80
    const/16 v23, 0x7

    .line 2072
    .line 2073
    goto :goto_24

    .line 2074
    :sswitch_41
    const-string v4, "select"

    .line 2075
    .line 2076
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2077
    .line 2078
    .line 2079
    move-result v4

    .line 2080
    if-nez v4, :cond_81

    .line 2081
    .line 2082
    goto/16 :goto_22

    .line 2083
    .line 2084
    :cond_81
    const/16 v23, 0x6

    .line 2085
    .line 2086
    goto :goto_24

    .line 2087
    :sswitch_42
    const-string v4, "textarea"

    .line 2088
    .line 2089
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2090
    .line 2091
    .line 2092
    move-result v4

    .line 2093
    if-nez v4, :cond_82

    .line 2094
    .line 2095
    goto/16 :goto_22

    .line 2096
    .line 2097
    :cond_82
    const/16 v23, 0x5

    .line 2098
    .line 2099
    goto :goto_24

    .line 2100
    :sswitch_43
    const-string v4, "option"

    .line 2101
    .line 2102
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2103
    .line 2104
    .line 2105
    move-result v4

    .line 2106
    if-nez v4, :cond_83

    .line 2107
    .line 2108
    goto/16 :goto_22

    .line 2109
    .line 2110
    :cond_83
    const/16 v23, 0x4

    .line 2111
    .line 2112
    goto :goto_24

    .line 2113
    :sswitch_44
    const-string v4, "keygen"

    .line 2114
    .line 2115
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2116
    .line 2117
    .line 2118
    move-result v4

    .line 2119
    if-nez v4, :cond_84

    .line 2120
    .line 2121
    goto/16 :goto_22

    .line 2122
    .line 2123
    :cond_84
    move/from16 v23, v19

    .line 2124
    .line 2125
    goto :goto_24

    .line 2126
    :sswitch_45
    const-string v4, "iframe"

    .line 2127
    .line 2128
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2129
    .line 2130
    .line 2131
    move-result v4

    .line 2132
    if-nez v4, :cond_85

    .line 2133
    .line 2134
    goto/16 :goto_22

    .line 2135
    .line 2136
    :cond_85
    const/16 v23, 0x2

    .line 2137
    .line 2138
    goto :goto_24

    .line 2139
    :sswitch_46
    const-string v4, "button"

    .line 2140
    .line 2141
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2142
    .line 2143
    .line 2144
    move-result v4

    .line 2145
    if-nez v4, :cond_86

    .line 2146
    .line 2147
    goto/16 :goto_22

    .line 2148
    .line 2149
    :cond_86
    const/16 v23, 0x1

    .line 2150
    .line 2151
    goto :goto_24

    .line 2152
    :sswitch_47
    const-string v4, "frameset"

    .line 2153
    .line 2154
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2155
    .line 2156
    .line 2157
    move-result v4

    .line 2158
    if-nez v4, :cond_87

    .line 2159
    .line 2160
    goto/16 :goto_22

    .line 2161
    .line 2162
    :cond_87
    const/16 v23, 0x0

    .line 2163
    .line 2164
    :goto_24
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 2165
    .line 2166
    const-string v5, "ruby"

    .line 2167
    .line 2168
    packed-switch v23, :pswitch_data_2

    .line 2169
    .line 2170
    .line 2171
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v4

    .line 2175
    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v5

    .line 2179
    if-eqz v5, :cond_88

    .line 2180
    .line 2181
    invoke-static {v8, v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->HandleTextState(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    .line 2182
    .line 2183
    .line 2184
    const/16 v25, 0x1

    .line 2185
    .line 2186
    return v25

    .line 2187
    :cond_88
    const/16 v25, 0x1

    .line 2188
    .line 2189
    iget v4, v4, Lorg/jsoup/parser/Tag;->options:I

    .line 2190
    .line 2191
    and-int/lit8 v4, v4, 0x1

    .line 2192
    .line 2193
    if-eqz v4, :cond_8f

    .line 2194
    .line 2195
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 2196
    .line 2197
    invoke-static {v0, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2198
    .line 2199
    .line 2200
    move-result v4

    .line 2201
    if-eqz v4, :cond_8a

    .line 2202
    .line 2203
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2204
    .line 2205
    .line 2206
    move-result v0

    .line 2207
    if-eqz v0, :cond_89

    .line 2208
    .line 2209
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2210
    .line 2211
    .line 2212
    :cond_89
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2213
    .line 2214
    .line 2215
    return v25

    .line 2216
    :cond_8a
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    .line 2217
    .line 2218
    invoke-static {v0, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2219
    .line 2220
    .line 2221
    move-result v4

    .line 2222
    if-eqz v4, :cond_8b

    .line 2223
    .line 2224
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2225
    .line 2226
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 2227
    .line 2228
    .line 2229
    move-result v0

    .line 2230
    return v0

    .line 2231
    :cond_8b
    invoke-static {v0, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2232
    .line 2233
    .line 2234
    move-result v1

    .line 2235
    if-eqz v1, :cond_8c

    .line 2236
    .line 2237
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2238
    .line 2239
    .line 2240
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2241
    .line 2242
    .line 2243
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2244
    .line 2245
    const/4 v12, 0x0

    .line 2246
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    .line 2248
    .line 2249
    const/4 v3, 0x0

    .line 2250
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2251
    .line 2252
    const/16 v25, 0x1

    .line 2253
    .line 2254
    return v25

    .line 2255
    :cond_8c
    const/4 v3, 0x0

    .line 2256
    const/16 v25, 0x1

    .line 2257
    .line 2258
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 2259
    .line 2260
    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2261
    .line 2262
    .line 2263
    move-result v1

    .line 2264
    if-eqz v1, :cond_8d

    .line 2265
    .line 2266
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2267
    .line 2268
    .line 2269
    return v25

    .line 2270
    :cond_8d
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 2271
    .line 2272
    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2273
    .line 2274
    .line 2275
    move-result v0

    .line 2276
    if-eqz v0, :cond_8e

    .line 2277
    .line 2278
    move-object/from16 v0, p0

    .line 2279
    .line 2280
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2281
    .line 2282
    .line 2283
    return v3

    .line 2284
    :cond_8e
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2285
    .line 2286
    .line 2287
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2288
    .line 2289
    .line 2290
    return v25

    .line 2291
    :cond_8f
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2292
    .line 2293
    .line 2294
    return v25

    .line 2295
    :pswitch_e
    const/16 v25, 0x1

    .line 2296
    .line 2297
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v0

    .line 2301
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v0

    .line 2305
    invoke-static {v8, v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->HandleTextState(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    .line 2306
    .line 2307
    .line 2308
    return v25

    .line 2309
    :pswitch_f
    const/16 v25, 0x1

    .line 2310
    .line 2311
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2312
    .line 2313
    .line 2314
    move-result v0

    .line 2315
    if-eqz v0, :cond_90

    .line 2316
    .line 2317
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2318
    .line 2319
    .line 2320
    :cond_90
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2321
    .line 2322
    .line 2323
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 2324
    .line 2325
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    .line 2326
    .line 2327
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 2328
    .line 2329
    .line 2330
    return v25

    .line 2331
    :pswitch_10
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 2332
    .line 2333
    iget-object v0, v0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 2334
    .line 2335
    sget-object v1, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 2336
    .line 2337
    if-eq v0, v1, :cond_91

    .line 2338
    .line 2339
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2340
    .line 2341
    .line 2342
    move-result v0

    .line 2343
    if-eqz v0, :cond_91

    .line 2344
    .line 2345
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2346
    .line 2347
    .line 2348
    :cond_91
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2349
    .line 2350
    .line 2351
    const/4 v3, 0x0

    .line 2352
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2353
    .line 2354
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2355
    .line 2356
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2357
    .line 2358
    const/16 v25, 0x1

    .line 2359
    .line 2360
    return v25

    .line 2361
    :pswitch_11
    const/4 v3, 0x0

    .line 2362
    const/16 v25, 0x1

    .line 2363
    .line 2364
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2365
    .line 2366
    .line 2367
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v0

    .line 2371
    const-string/jumbo v1, "type"

    .line 2372
    .line 2373
    .line 2374
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v0

    .line 2378
    const-string v1, "hidden"

    .line 2379
    .line 2380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2381
    .line 2382
    .line 2383
    move-result v0

    .line 2384
    if-nez v0, :cond_af

    .line 2385
    .line 2386
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2387
    .line 2388
    return v25

    .line 2389
    :pswitch_12
    const/16 v25, 0x1

    .line 2390
    .line 2391
    const-string v0, "svg"

    .line 2392
    .line 2393
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v0

    .line 2397
    if-nez v0, :cond_92

    .line 2398
    .line 2399
    const-string v0, "img"

    .line 2400
    .line 2401
    invoke-virtual {v8, v0}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)V

    .line 2402
    .line 2403
    .line 2404
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 2405
    .line 2406
    .line 2407
    move-result v0

    .line 2408
    return v0

    .line 2409
    :cond_92
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2410
    .line 2411
    .line 2412
    return v25

    .line 2413
    :pswitch_13
    const/16 v25, 0x1

    .line 2414
    .line 2415
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2416
    .line 2417
    .line 2418
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2419
    .line 2420
    .line 2421
    return v25

    .line 2422
    :pswitch_14
    move-object/from16 v0, p0

    .line 2423
    .line 2424
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2425
    .line 2426
    .line 2427
    const-string v1, "nobr"

    .line 2428
    .line 2429
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 2430
    .line 2431
    .line 2432
    move-result v3

    .line 2433
    if-eqz v3, :cond_93

    .line 2434
    .line 2435
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2436
    .line 2437
    .line 2438
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2439
    .line 2440
    .line 2441
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2442
    .line 2443
    .line 2444
    :cond_93
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v0

    .line 2448
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 2449
    .line 2450
    .line 2451
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2452
    .line 2453
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    .line 2455
    .line 2456
    const/16 v25, 0x1

    .line 2457
    .line 2458
    return v25

    .line 2459
    :pswitch_15
    const/16 v25, 0x1

    .line 2460
    .line 2461
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2462
    .line 2463
    .line 2464
    const-string v0, "http://www.w3.org/1998/Math/MathML"

    .line 2465
    .line 2466
    invoke-virtual {v2, v8, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    .line 2467
    .line 2468
    .line 2469
    return v25

    .line 2470
    :pswitch_16
    move-object/from16 v0, p0

    .line 2471
    .line 2472
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2473
    .line 2474
    .line 2475
    move-object/from16 v4, v24

    .line 2476
    .line 2477
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 2478
    .line 2479
    .line 2480
    move-result v0

    .line 2481
    if-eqz v0, :cond_95

    .line 2482
    .line 2483
    :cond_94
    :goto_25
    const/16 v20, 0x0

    .line 2484
    .line 2485
    goto/16 :goto_30

    .line 2486
    .line 2487
    :cond_95
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2488
    .line 2489
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2490
    .line 2491
    .line 2492
    move-result v0

    .line 2493
    if-lez v0, :cond_3c

    .line 2494
    .line 2495
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2496
    .line 2497
    const/4 v3, 0x0

    .line 2498
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v0

    .line 2502
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 2503
    .line 2504
    invoke-static {v8, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->mergeAttributes(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    .line 2505
    .line 2506
    .line 2507
    const/16 v25, 0x1

    .line 2508
    .line 2509
    return v25

    .line 2510
    :pswitch_17
    move-object/from16 v0, p0

    .line 2511
    .line 2512
    move-object/from16 v4, v24

    .line 2513
    .line 2514
    const/4 v3, 0x0

    .line 2515
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 2516
    .line 2517
    if-eqz v1, :cond_96

    .line 2518
    .line 2519
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 2520
    .line 2521
    .line 2522
    move-result v1

    .line 2523
    if-nez v1, :cond_96

    .line 2524
    .line 2525
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2526
    .line 2527
    .line 2528
    return v3

    .line 2529
    :cond_96
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2530
    .line 2531
    .line 2532
    move-result v0

    .line 2533
    if-eqz v0, :cond_98

    .line 2534
    .line 2535
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 2536
    .line 2537
    .line 2538
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 2539
    .line 2540
    .line 2541
    move-result-object v0

    .line 2542
    iget-object v0, v0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2543
    .line 2544
    iget-object v0, v0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2545
    .line 2546
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2547
    .line 2548
    .line 2549
    move-result v0

    .line 2550
    if-nez v0, :cond_97

    .line 2551
    .line 2552
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2553
    .line 2554
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2555
    .line 2556
    .line 2557
    :cond_97
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 2558
    .line 2559
    .line 2560
    :cond_98
    const/4 v12, 0x1

    .line 2561
    invoke-virtual {v2, v8, v12, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertFormElement(Lorg/jsoup/parser/Token$StartTag;ZZ)V

    .line 2562
    .line 2563
    .line 2564
    return v12

    .line 2565
    :pswitch_18
    move-object/from16 v0, p0

    .line 2566
    .line 2567
    move-object/from16 v4, v24

    .line 2568
    .line 2569
    const/4 v12, 0x1

    .line 2570
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2571
    .line 2572
    .line 2573
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2574
    .line 2575
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2576
    .line 2577
    .line 2578
    move-result v1

    .line 2579
    const/4 v3, 0x2

    .line 2580
    if-lt v1, v3, :cond_94

    .line 2581
    .line 2582
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2583
    .line 2584
    .line 2585
    move-result v1

    .line 2586
    if-le v1, v3, :cond_99

    .line 2587
    .line 2588
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2589
    .line 2590
    .line 2591
    move-result-object v0

    .line 2592
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 2593
    .line 2594
    invoke-virtual {v0, v10}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 2595
    .line 2596
    .line 2597
    move-result v0

    .line 2598
    if-eqz v0, :cond_94

    .line 2599
    .line 2600
    :cond_99
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 2601
    .line 2602
    .line 2603
    move-result v0

    .line 2604
    if-eqz v0, :cond_9a

    .line 2605
    .line 2606
    goto :goto_25

    .line 2607
    :cond_9a
    const/4 v3, 0x0

    .line 2608
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2609
    .line 2610
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2611
    .line 2612
    .line 2613
    move-result-object v0

    .line 2614
    if-eqz v0, :cond_3c

    .line 2615
    .line 2616
    invoke-static {v8, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->mergeAttributes(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    .line 2617
    .line 2618
    .line 2619
    const/16 v25, 0x1

    .line 2620
    .line 2621
    return v25

    .line 2622
    :pswitch_19
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2623
    .line 2624
    .line 2625
    move-result v0

    .line 2626
    if-eqz v0, :cond_9b

    .line 2627
    .line 2628
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2629
    .line 2630
    .line 2631
    :cond_9b
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2632
    .line 2633
    .line 2634
    const/4 v3, 0x0

    .line 2635
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2636
    .line 2637
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    .line 2638
    .line 2639
    .line 2640
    move-result-object v0

    .line 2641
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    .line 2642
    .line 2643
    .line 2644
    move-result-object v0

    .line 2645
    invoke-static {v8, v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->HandleTextState(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    .line 2646
    .line 2647
    .line 2648
    const/16 v25, 0x1

    .line 2649
    .line 2650
    return v25

    .line 2651
    :pswitch_1a
    const/16 v25, 0x1

    .line 2652
    .line 2653
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2654
    .line 2655
    .line 2656
    const-string v0, "http://www.w3.org/2000/svg"

    .line 2657
    .line 2658
    invoke-virtual {v2, v8, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    .line 2659
    .line 2660
    .line 2661
    return v25

    .line 2662
    :pswitch_1b
    const/16 v25, 0x1

    .line 2663
    .line 2664
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2665
    .line 2666
    .line 2667
    move-result v0

    .line 2668
    if-eqz v0, :cond_9c

    .line 2669
    .line 2670
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2671
    .line 2672
    .line 2673
    :cond_9c
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2674
    .line 2675
    .line 2676
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 2677
    .line 2678
    const-string v1, "\n"

    .line 2679
    .line 2680
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 2681
    .line 2682
    .line 2683
    const/4 v3, 0x0

    .line 2684
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2685
    .line 2686
    return v25

    .line 2687
    :pswitch_1c
    move-object/from16 v0, p0

    .line 2688
    .line 2689
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 2690
    .line 2691
    .line 2692
    move-result v1

    .line 2693
    if-eqz v1, :cond_9d

    .line 2694
    .line 2695
    const-string v1, "rtc"

    .line 2696
    .line 2697
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 2698
    .line 2699
    .line 2700
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 2701
    .line 2702
    .line 2703
    move-result v1

    .line 2704
    if-nez v1, :cond_9d

    .line 2705
    .line 2706
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 2707
    .line 2708
    .line 2709
    move-result v1

    .line 2710
    if-nez v1, :cond_9d

    .line 2711
    .line 2712
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2713
    .line 2714
    .line 2715
    :cond_9d
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2716
    .line 2717
    .line 2718
    const/16 v25, 0x1

    .line 2719
    .line 2720
    return v25

    .line 2721
    :pswitch_1d
    move-object/from16 v0, p0

    .line 2722
    .line 2723
    const/16 v25, 0x1

    .line 2724
    .line 2725
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 2726
    .line 2727
    .line 2728
    move-result v1

    .line 2729
    if-eqz v1, :cond_9e

    .line 2730
    .line 2731
    const/4 v3, 0x0

    .line 2732
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 2733
    .line 2734
    .line 2735
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 2736
    .line 2737
    .line 2738
    move-result v1

    .line 2739
    if-nez v1, :cond_9e

    .line 2740
    .line 2741
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2742
    .line 2743
    .line 2744
    :cond_9e
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2745
    .line 2746
    .line 2747
    return v25

    .line 2748
    :pswitch_1e
    const/4 v3, 0x0

    .line 2749
    const/16 v25, 0x1

    .line 2750
    .line 2751
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2752
    .line 2753
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2754
    .line 2755
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2756
    .line 2757
    .line 2758
    move-result v1

    .line 2759
    add-int/lit8 v1, v1, -0x1

    .line 2760
    .line 2761
    :goto_26
    if-lez v1, :cond_a1

    .line 2762
    .line 2763
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2764
    .line 2765
    .line 2766
    move-result-object v3

    .line 2767
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 2768
    .line 2769
    invoke-virtual {v3, v6}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 2770
    .line 2771
    .line 2772
    move-result v5

    .line 2773
    if-eqz v5, :cond_9f

    .line 2774
    .line 2775
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2776
    .line 2777
    .line 2778
    goto :goto_27

    .line 2779
    :cond_9f
    invoke-static {v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 2780
    .line 2781
    .line 2782
    move-result v5

    .line 2783
    if-eqz v5, :cond_a0

    .line 2784
    .line 2785
    iget-object v3, v3, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2786
    .line 2787
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2788
    .line 2789
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2790
    .line 2791
    .line 2792
    move-result v3

    .line 2793
    if-nez v3, :cond_a0

    .line 2794
    .line 2795
    goto :goto_27

    .line 2796
    :cond_a0
    add-int/lit8 v1, v1, -0x1

    .line 2797
    .line 2798
    goto :goto_26

    .line 2799
    :cond_a1
    :goto_27
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2800
    .line 2801
    .line 2802
    move-result v0

    .line 2803
    if-eqz v0, :cond_a2

    .line 2804
    .line 2805
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2806
    .line 2807
    .line 2808
    :cond_a2
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2809
    .line 2810
    .line 2811
    const/16 v25, 0x1

    .line 2812
    .line 2813
    return v25

    .line 2814
    :pswitch_1f
    const/16 v25, 0x1

    .line 2815
    .line 2816
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2817
    .line 2818
    .line 2819
    move-result v0

    .line 2820
    if-eqz v0, :cond_a3

    .line 2821
    .line 2822
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2823
    .line 2824
    .line 2825
    :cond_a3
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2826
    .line 2827
    .line 2828
    const/4 v3, 0x0

    .line 2829
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2830
    .line 2831
    return v25

    .line 2832
    :pswitch_20
    move-object/from16 v0, p0

    .line 2833
    .line 2834
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2835
    .line 2836
    .line 2837
    move-result v1

    .line 2838
    if-eqz v1, :cond_a4

    .line 2839
    .line 2840
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2841
    .line 2842
    .line 2843
    :cond_a4
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 2844
    .line 2845
    .line 2846
    move-result-object v1

    .line 2847
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2848
    .line 2849
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2850
    .line 2851
    move-object/from16 v3, v21

    .line 2852
    .line 2853
    invoke-static {v1, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2854
    .line 2855
    .line 2856
    move-result v1

    .line 2857
    if-eqz v1, :cond_a5

    .line 2858
    .line 2859
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2860
    .line 2861
    .line 2862
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 2863
    .line 2864
    .line 2865
    :cond_a5
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2866
    .line 2867
    .line 2868
    const/16 v25, 0x1

    .line 2869
    .line 2870
    return v25

    .line 2871
    :pswitch_21
    const/4 v3, 0x0

    .line 2872
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2873
    .line 2874
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2875
    .line 2876
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2877
    .line 2878
    .line 2879
    move-result v1

    .line 2880
    add-int/lit8 v3, v1, -0x1

    .line 2881
    .line 2882
    const/16 v5, 0x18

    .line 2883
    .line 2884
    if-lt v3, v5, :cond_a6

    .line 2885
    .line 2886
    add-int/lit8 v1, v1, -0x19

    .line 2887
    .line 2888
    goto :goto_28

    .line 2889
    :cond_a6
    const/4 v1, 0x0

    .line 2890
    :goto_28
    if-lt v3, v1, :cond_a9

    .line 2891
    .line 2892
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2893
    .line 2894
    .line 2895
    move-result-object v5

    .line 2896
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 2897
    .line 2898
    iget-object v6, v5, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2899
    .line 2900
    iget-object v7, v6, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2901
    .line 2902
    iget-object v6, v6, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2903
    .line 2904
    sget-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 2905
    .line 2906
    invoke-static {v7, v9}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2907
    .line 2908
    .line 2909
    move-result v7

    .line 2910
    if-eqz v7, :cond_a7

    .line 2911
    .line 2912
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2913
    .line 2914
    .line 2915
    goto :goto_29

    .line 2916
    :cond_a7
    invoke-static {v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 2917
    .line 2918
    .line 2919
    move-result v5

    .line 2920
    if-eqz v5, :cond_a8

    .line 2921
    .line 2922
    invoke-static {v6, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2923
    .line 2924
    .line 2925
    move-result v5

    .line 2926
    if-nez v5, :cond_a8

    .line 2927
    .line 2928
    goto :goto_29

    .line 2929
    :cond_a8
    add-int/lit8 v3, v3, -0x1

    .line 2930
    .line 2931
    goto :goto_28

    .line 2932
    :cond_a9
    :goto_29
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2933
    .line 2934
    .line 2935
    move-result v0

    .line 2936
    if-eqz v0, :cond_aa

    .line 2937
    .line 2938
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2939
    .line 2940
    .line 2941
    :cond_aa
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2942
    .line 2943
    .line 2944
    const/16 v25, 0x1

    .line 2945
    .line 2946
    return v25

    .line 2947
    :pswitch_22
    const/4 v12, 0x0

    .line 2948
    move-object/from16 v0, p0

    .line 2949
    .line 2950
    const/16 v25, 0x1

    .line 2951
    .line 2952
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2953
    .line 2954
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2955
    .line 2956
    .line 2957
    move-result v1

    .line 2958
    add-int/lit8 v1, v1, -0x1

    .line 2959
    .line 2960
    :goto_2a
    const-string v3, "a"

    .line 2961
    .line 2962
    if-ltz v1, :cond_ad

    .line 2963
    .line 2964
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2965
    .line 2966
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2967
    .line 2968
    .line 2969
    move-result-object v4

    .line 2970
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 2971
    .line 2972
    if-nez v4, :cond_ab

    .line 2973
    .line 2974
    goto :goto_2b

    .line 2975
    :cond_ab
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 2976
    .line 2977
    .line 2978
    move-result v5

    .line 2979
    if-eqz v5, :cond_ac

    .line 2980
    .line 2981
    goto :goto_2c

    .line 2982
    :cond_ac
    add-int/lit8 v1, v1, -0x1

    .line 2983
    .line 2984
    goto :goto_2a

    .line 2985
    :cond_ad
    :goto_2b
    move-object v4, v12

    .line 2986
    :goto_2c
    if-eqz v4, :cond_ae

    .line 2987
    .line 2988
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2989
    .line 2990
    .line 2991
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2992
    .line 2993
    .line 2994
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2995
    .line 2996
    .line 2997
    move-result-object v0

    .line 2998
    if-eqz v0, :cond_ae

    .line 2999
    .line 3000
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 3001
    .line 3002
    .line 3003
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 3004
    .line 3005
    .line 3006
    :cond_ae
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 3007
    .line 3008
    .line 3009
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3010
    .line 3011
    .line 3012
    move-result-object v0

    .line 3013
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 3014
    .line 3015
    .line 3016
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 3017
    .line 3018
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3019
    .line 3020
    .line 3021
    const/16 v25, 0x1

    .line 3022
    .line 3023
    return v25

    .line 3024
    :pswitch_23
    const/16 v25, 0x1

    .line 3025
    .line 3026
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 3027
    .line 3028
    .line 3029
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3030
    .line 3031
    .line 3032
    move-result-object v0

    .line 3033
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 3034
    .line 3035
    .line 3036
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 3037
    .line 3038
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3039
    .line 3040
    .line 3041
    return v25

    .line 3042
    :pswitch_24
    const/16 v25, 0x1

    .line 3043
    .line 3044
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 3045
    .line 3046
    .line 3047
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3048
    .line 3049
    .line 3050
    const/4 v3, 0x0

    .line 3051
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3052
    .line 3053
    iget-boolean v0, v8, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 3054
    .line 3055
    if-eqz v0, :cond_b0

    .line 3056
    .line 3057
    :cond_af
    :goto_2d
    return v25

    .line 3058
    :cond_b0
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3059
    .line 3060
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3061
    .line 3062
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 3063
    .line 3064
    .line 3065
    move-result v1

    .line 3066
    if-nez v1, :cond_b1

    .line 3067
    .line 3068
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3069
    .line 3070
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 3071
    .line 3072
    .line 3073
    move-result v1

    .line 3074
    if-nez v1, :cond_b1

    .line 3075
    .line 3076
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3077
    .line 3078
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 3079
    .line 3080
    .line 3081
    move-result v1

    .line 3082
    if-nez v1, :cond_b1

    .line 3083
    .line 3084
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3085
    .line 3086
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 3087
    .line 3088
    .line 3089
    move-result v1

    .line 3090
    if-nez v1, :cond_b1

    .line 3091
    .line 3092
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3093
    .line 3094
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 3095
    .line 3096
    .line 3097
    move-result v0

    .line 3098
    if-eqz v0, :cond_b2

    .line 3099
    .line 3100
    :cond_b1
    const/4 v12, 0x1

    .line 3101
    goto :goto_2e

    .line 3102
    :cond_b2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3103
    .line 3104
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3105
    .line 3106
    const/4 v12, 0x1

    .line 3107
    return v12

    .line 3108
    :goto_2e
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3109
    .line 3110
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3111
    .line 3112
    return v12

    .line 3113
    :pswitch_25
    const/4 v3, 0x0

    .line 3114
    const/4 v12, 0x1

    .line 3115
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3116
    .line 3117
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    .line 3118
    .line 3119
    .line 3120
    move-result-object v0

    .line 3121
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    .line 3122
    .line 3123
    .line 3124
    move-result-object v0

    .line 3125
    invoke-static {v8, v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->HandleTextState(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    .line 3126
    .line 3127
    .line 3128
    return v12

    .line 3129
    :pswitch_26
    const/4 v12, 0x1

    .line 3130
    const-string v0, "option"

    .line 3131
    .line 3132
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 3133
    .line 3134
    .line 3135
    move-result v1

    .line 3136
    if-eqz v1, :cond_b3

    .line 3137
    .line 3138
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 3139
    .line 3140
    .line 3141
    :cond_b3
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 3142
    .line 3143
    .line 3144
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3145
    .line 3146
    .line 3147
    return v12

    .line 3148
    :pswitch_27
    const/4 v12, 0x1

    .line 3149
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 3150
    .line 3151
    .line 3152
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3153
    .line 3154
    .line 3155
    const/4 v3, 0x0

    .line 3156
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3157
    .line 3158
    return v12

    .line 3159
    :pswitch_28
    const/4 v3, 0x0

    .line 3160
    const/4 v12, 0x1

    .line 3161
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3162
    .line 3163
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    .line 3164
    .line 3165
    .line 3166
    move-result-object v0

    .line 3167
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    .line 3168
    .line 3169
    .line 3170
    move-result-object v0

    .line 3171
    invoke-static {v8, v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->HandleTextState(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    .line 3172
    .line 3173
    .line 3174
    return v12

    .line 3175
    :pswitch_29
    move-object/from16 v0, p0

    .line 3176
    .line 3177
    const/4 v12, 0x1

    .line 3178
    const-string v1, "button"

    .line 3179
    .line 3180
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 3181
    .line 3182
    .line 3183
    move-result v3

    .line 3184
    if-eqz v3, :cond_b4

    .line 3185
    .line 3186
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 3187
    .line 3188
    .line 3189
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 3190
    .line 3191
    .line 3192
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 3193
    .line 3194
    .line 3195
    return v12

    .line 3196
    :cond_b4
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 3197
    .line 3198
    .line 3199
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3200
    .line 3201
    .line 3202
    const/4 v3, 0x0

    .line 3203
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3204
    .line 3205
    return v12

    .line 3206
    :pswitch_2a
    move-object/from16 v0, p0

    .line 3207
    .line 3208
    const/4 v12, 0x1

    .line 3209
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 3210
    .line 3211
    .line 3212
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 3213
    .line 3214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 3215
    .line 3216
    .line 3217
    move-result v1

    .line 3218
    const/4 v3, 0x2

    .line 3219
    if-lt v1, v3, :cond_94

    .line 3220
    .line 3221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 3222
    .line 3223
    .line 3224
    move-result v1

    .line 3225
    if-le v1, v3, :cond_b5

    .line 3226
    .line 3227
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3228
    .line 3229
    .line 3230
    move-result-object v1

    .line 3231
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 3232
    .line 3233
    invoke-virtual {v1, v10}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 3234
    .line 3235
    .line 3236
    move-result v1

    .line 3237
    if-nez v1, :cond_b5

    .line 3238
    .line 3239
    goto/16 :goto_25

    .line 3240
    .line 3241
    :cond_b5
    iget-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3242
    .line 3243
    if-nez v1, :cond_b6

    .line 3244
    .line 3245
    goto/16 :goto_25

    .line 3246
    .line 3247
    :cond_b6
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3248
    .line 3249
    .line 3250
    move-result-object v1

    .line 3251
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 3252
    .line 3253
    iget-object v3, v1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 3254
    .line 3255
    if-eqz v3, :cond_b7

    .line 3256
    .line 3257
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->remove()V

    .line 3258
    .line 3259
    .line 3260
    :cond_b7
    :goto_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 3261
    .line 3262
    .line 3263
    move-result v1

    .line 3264
    if-le v1, v12, :cond_b8

    .line 3265
    .line 3266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 3267
    .line 3268
    .line 3269
    move-result v1

    .line 3270
    sub-int/2addr v1, v12

    .line 3271
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3272
    .line 3273
    .line 3274
    goto :goto_2f

    .line 3275
    :cond_b8
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3276
    .line 3277
    .line 3278
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3279
    .line 3280
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3281
    .line 3282
    return v12

    .line 3283
    :goto_30
    return v20

    .line 3284
    :pswitch_2b
    move/from16 v20, v8

    .line 3285
    .line 3286
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 3287
    .line 3288
    .line 3289
    return v20

    .line 3290
    :pswitch_2c
    move/from16 v12, v25

    .line 3291
    .line 3292
    move-object v0, v1

    .line 3293
    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    .line 3294
    .line 3295
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V

    .line 3296
    .line 3297
    .line 3298
    return v12

    .line 3299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3300
    .line 3301
    .line 3302
    .line 3303
    .line 3304
    .line 3305
    .line 3306
    .line 3307
    .line 3308
    .line 3309
    .line 3310
    .line 3311
    .line 3312
    .line 3313
    .line 3314
    .line 3315
    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    .line 3316
    .line 3317
    .line 3318
    .line 3319
    .line 3320
    .line 3321
    .line 3322
    .line 3323
    .line 3324
    .line 3325
    .line 3326
    .line 3327
    .line 3328
    .line 3329
    .line 3330
    .line 3331
    .line 3332
    .line 3333
    .line 3334
    .line 3335
    .line 3336
    .line 3337
    .line 3338
    .line 3339
    .line 3340
    .line 3341
    .line 3342
    .line 3343
    .line 3344
    .line 3345
    .line 3346
    .line 3347
    .line 3348
    .line 3349
    .line 3350
    .line 3351
    .line 3352
    .line 3353
    .line 3354
    .line 3355
    .line 3356
    .line 3357
    .line 3358
    .line 3359
    .line 3360
    .line 3361
    .line 3362
    .line 3363
    .line 3364
    .line 3365
    .line 3366
    .line 3367
    .line 3368
    .line 3369
    .line 3370
    .line 3371
    .line 3372
    .line 3373
    .line 3374
    .line 3375
    .line 3376
    .line 3377
    .line 3378
    .line 3379
    .line 3380
    .line 3381
    .line 3382
    .line 3383
    .line 3384
    .line 3385
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 3386
    .line 3387
    .line 3388
    .line 3389
    .line 3390
    .line 3391
    .line 3392
    .line 3393
    .line 3394
    .line 3395
    .line 3396
    .line 3397
    .line 3398
    .line 3399
    .line 3400
    .line 3401
    .line 3402
    .line 3403
    .line 3404
    .line 3405
    .line 3406
    .line 3407
    .line 3408
    .line 3409
    .line 3410
    .line 3411
    .line 3412
    .line 3413
    .line 3414
    .line 3415
    .line 3416
    .line 3417
    .line 3418
    .line 3419
    .line 3420
    .line 3421
    .line 3422
    .line 3423
    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_47
        -0x521dd8ce -> :sswitch_46
        -0x47007d5c -> :sswitch_45
        -0x43a19f6f -> :sswitch_44
        -0x3c35778b -> :sswitch_43
        -0x3bcc48c6 -> :sswitch_42
        -0x3600cb04 -> :sswitch_41
        -0x352aa04e -> :sswitch_40
        -0x352a8969 -> :sswitch_3f
        -0x4d08054 -> :sswitch_3e
        0x61 -> :sswitch_3d
        0x62 -> :sswitch_3c
        0x69 -> :sswitch_3b
        0x73 -> :sswitch_3a
        0x75 -> :sswitch_39
        0xc50 -> :sswitch_38
        0xc80 -> :sswitch_37
        0xc90 -> :sswitch_36
        0xca8 -> :sswitch_35
        0xcc9 -> :sswitch_34
        0xcca -> :sswitch_33
        0xccb -> :sswitch_32
        0xccc -> :sswitch_31
        0xccd -> :sswitch_30
        0xcce -> :sswitch_2f
        0xd0a -> :sswitch_2e
        0xd7d -> :sswitch_2d
        0xe30 -> :sswitch_2c
        0xe3e -> :sswitch_2b
        0xe42 -> :sswitch_2a
        0xe80 -> :sswitch_29
        0x17d00 -> :sswitch_28
        0x197c3 -> :sswitch_27
        0x1b2a3 -> :sswitch_26
        0x1ba61 -> :sswitch_25
        0x1be64 -> :sswitch_24
        0x1cb07 -> :sswitch_23
        0x1d01b -> :sswitch_22
        0x2dd08d -> :sswitch_21
        0x2e39a2 -> :sswitch_20
        0x2eaded -> :sswitch_1f
        0x300c4f -> :sswitch_1e
        0x300cc4 -> :sswitch_1d
        0x3107ab -> :sswitch_1c
        0x330708 -> :sswitch_1b
        0x33add1 -> :sswitch_1a
        0x35f74a -> :sswitch_19
        0x5c24ed9 -> :sswitch_18
        0x5faa95b -> :sswitch_17
        0x5fb57ca -> :sswitch_16
        0x6879507 -> :sswitch_15
        0x6903bce -> :sswitch_14
        0xad8ba84 -> :sswitch_13
        0x759d29f7 -> :sswitch_12
        0x7e19b1b8 -> :sswitch_11
    .end sparse-switch

    .line 3424
    .line 3425
    .line 3426
    .line 3427
    .line 3428
    .line 3429
    .line 3430
    .line 3431
    .line 3432
    .line 3433
    .line 3434
    .line 3435
    .line 3436
    .line 3437
    .line 3438
    .line 3439
    .line 3440
    .line 3441
    .line 3442
    .line 3443
    .line 3444
    .line 3445
    .line 3446
    .line 3447
    .line 3448
    .line 3449
    .line 3450
    .line 3451
    .line 3452
    .line 3453
    .line 3454
    .line 3455
    .line 3456
    .line 3457
    .line 3458
    .line 3459
    .line 3460
    .line 3461
    .line 3462
    .line 3463
    .line 3464
    .line 3465
    .line 3466
    .line 3467
    .line 3468
    .line 3469
    .line 3470
    .line 3471
    .line 3472
    .line 3473
    .line 3474
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_26
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_21
        :pswitch_21
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_27
        :pswitch_19
        :pswitch_27
        :pswitch_18
        :pswitch_23
        :pswitch_23
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_27
        :pswitch_12
        :pswitch_11
        :pswitch_23
        :pswitch_10
        :pswitch_1b
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
