.class public final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    .locals 30

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
    iget v3, v1, Lorg/jsoup/parser/Token;->type:I

    .line 8
    .line 9
    invoke-static {v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_b8

    .line 14
    .line 15
    const-string v5, "h5"

    .line 16
    .line 17
    const-string v6, "h4"

    .line 18
    .line 19
    const-string v8, "h3"

    .line 20
    .line 21
    const-string v9, "h2"

    .line 22
    .line 23
    const-string v11, "h1"

    .line 24
    .line 25
    const-string v12, "dt"

    .line 26
    .line 27
    const-string v13, "dd"

    .line 28
    .line 29
    const-string v14, "p"

    .line 30
    .line 31
    const-string v15, "li"

    .line 32
    .line 33
    const-string v10, "br"

    .line 34
    .line 35
    const/16 v18, 0x0

    .line 36
    .line 37
    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 38
    .line 39
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v20, v7

    .line 42
    .line 43
    const-string v7, "template"

    .line 44
    .line 45
    move-object/from16 v21, v4

    .line 46
    .line 47
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v22, v4

    .line 50
    .line 51
    const-string v4, "body"

    .line 52
    .line 53
    move-object/from16 v23, v7

    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    if-eq v3, v7, :cond_4f

    .line 57
    .line 58
    move/from16 v26, v7

    .line 59
    .line 60
    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    .line 61
    .line 62
    move-object/from16 v27, v14

    .line 63
    .line 64
    const/4 v14, 0x2

    .line 65
    if-eq v3, v14, :cond_7

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    if-eq v3, v14, :cond_6

    .line 69
    .line 70
    const/4 v14, 0x4

    .line 71
    if-eq v3, v14, :cond_3

    .line 72
    .line 73
    const/4 v4, 0x6

    .line 74
    if-ne v3, v4, :cond_2

    .line 75
    .line 76
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-lez v3, :cond_0

    .line 83
    .line 84
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    return v0

    .line 91
    :cond_0
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 98
    .line 99
    .line 100
    return v26

    .line 101
    :cond_1
    :goto_0
    move/from16 v1, v26

    .line 102
    .line 103
    goto/16 :goto_29

    .line 104
    .line 105
    :cond_2
    iget v0, v1, Lorg/jsoup/parser/Token;->type:I

    .line 106
    .line 107
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->stringValueOf$4(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "Unexpected state: "

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return v18

    .line 121
    :cond_3
    check-cast v1, Lorg/jsoup/parser/Token$Character;

    .line 122
    .line 123
    iget-object v3, v1, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    .line 124
    .line 125
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_4

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 134
    .line 135
    .line 136
    return v18

    .line 137
    :cond_4
    iget-boolean v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;)V

    .line 151
    .line 152
    .line 153
    return v26

    .line 154
    :cond_5
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;)V

    .line 158
    .line 159
    .line 160
    move/from16 v0, v18

    .line 161
    .line 162
    iput-boolean v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 163
    .line 164
    return v26

    .line 165
    :cond_6
    move-object v0, v1

    .line 166
    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    .line 167
    .line 168
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V

    .line 169
    .line 170
    .line 171
    return v26

    .line 172
    :cond_7
    const/4 v14, 0x4

    .line 173
    const/16 v19, 0x6

    .line 174
    .line 175
    move-object v3, v1

    .line 176
    check-cast v3, Lorg/jsoup/parser/Token$EndTag;

    .line 177
    .line 178
    iget-object v14, v3, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 184
    .line 185
    .line 186
    move-result v28

    .line 187
    sparse-switch v28, :sswitch_data_0

    .line 188
    .line 189
    .line 190
    :goto_1
    move-object/from16 v5, v23

    .line 191
    .line 192
    :goto_2
    const/16 v16, -0x1

    .line 193
    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :sswitch_0
    const-string v5, "sarcasm"

    .line 197
    .line 198
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-nez v5, :cond_8

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_8
    const/16 v5, 0x10

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :sswitch_1
    const-string v5, "span"

    .line 209
    .line 210
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-nez v5, :cond_9

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_9
    const/16 v5, 0xf

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :sswitch_2
    const-string v5, "html"

    .line 221
    .line 222
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-nez v5, :cond_a

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_a
    const/16 v5, 0xe

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :sswitch_3
    const-string v5, "form"

    .line 233
    .line 234
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_b

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_b
    const/16 v5, 0xd

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :sswitch_4
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-nez v5, :cond_c

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_c
    const/16 v5, 0xc

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :sswitch_5
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_d

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_d
    const/16 v5, 0xb

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :sswitch_6
    const-string v5, "h6"

    .line 265
    .line 266
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-nez v5, :cond_e

    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_e
    const/16 v5, 0xa

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :sswitch_7
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    if-nez v5, :cond_f

    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_f
    const/16 v5, 0x9

    .line 284
    .line 285
    :goto_3
    move/from16 v16, v5

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :sswitch_8
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-nez v5, :cond_10

    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_10
    move-object/from16 v5, v23

    .line 296
    .line 297
    const/16 v16, 0x8

    .line 298
    .line 299
    goto/16 :goto_5

    .line 300
    .line 301
    :sswitch_9
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-nez v5, :cond_11

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_11
    move-object/from16 v5, v23

    .line 309
    .line 310
    const/16 v16, 0x7

    .line 311
    .line 312
    goto/16 :goto_5

    .line 313
    .line 314
    :sswitch_a
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-nez v5, :cond_12

    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_12
    move/from16 v16, v19

    .line 323
    .line 324
    :goto_4
    move-object/from16 v5, v23

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :sswitch_b
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-nez v5, :cond_13

    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_13
    move-object/from16 v5, v23

    .line 336
    .line 337
    const/16 v16, 0x5

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :sswitch_c
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-nez v5, :cond_14

    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_14
    move-object/from16 v5, v23

    .line 349
    .line 350
    const/16 v16, 0x4

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :sswitch_d
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    if-nez v5, :cond_15

    .line 358
    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :cond_15
    move-object/from16 v5, v23

    .line 362
    .line 363
    const/16 v16, 0x3

    .line 364
    .line 365
    goto :goto_5

    .line 366
    :sswitch_e
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-nez v5, :cond_16

    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    :cond_16
    move-object/from16 v5, v23

    .line 375
    .line 376
    const/16 v16, 0x2

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :sswitch_f
    move-object/from16 v5, v27

    .line 380
    .line 381
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-nez v5, :cond_17

    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    :cond_17
    move-object/from16 v5, v23

    .line 390
    .line 391
    move/from16 v16, v26

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :sswitch_10
    move-object/from16 v5, v23

    .line 395
    .line 396
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    if-nez v6, :cond_18

    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :cond_18
    const/16 v16, 0x0

    .line 405
    .line 406
    :goto_5
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    .line 407
    .line 408
    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    .line 409
    .line 410
    const-string v9, "http://www.w3.org/1999/xhtml"

    .line 411
    .line 412
    packed-switch v16, :pswitch_data_0

    .line 413
    .line 414
    .line 415
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 416
    .line 417
    invoke-static {v14, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    if-eqz v4, :cond_35

    .line 422
    .line 423
    iget-object v3, v3, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    iget-object v4, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 430
    .line 431
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-eqz v4, :cond_19

    .line 438
    .line 439
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-static {v5, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-nez v4, :cond_19

    .line 450
    .line 451
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 452
    .line 453
    .line 454
    return v26

    .line 455
    :cond_19
    const/4 v4, 0x0

    .line 456
    :goto_6
    const/16 v7, 0x8

    .line 457
    .line 458
    if-lt v4, v7, :cond_1a

    .line 459
    .line 460
    :goto_7
    move/from16 v4, v26

    .line 461
    .line 462
    goto/16 :goto_d

    .line 463
    .line 464
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    .line 465
    .line 466
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    add-int/lit8 v5, v5, -0x1

    .line 473
    .line 474
    :goto_8
    if-ltz v5, :cond_1d

    .line 475
    .line 476
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 483
    .line 484
    if-nez v6, :cond_1b

    .line 485
    .line 486
    goto :goto_9

    .line 487
    :cond_1b
    iget-object v8, v6, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 488
    .line 489
    iget-object v8, v8, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v8

    .line 495
    if-eqz v8, :cond_1c

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_1c
    add-int/lit8 v5, v5, -0x1

    .line 499
    .line 500
    goto :goto_8

    .line 501
    :cond_1d
    :goto_9
    const/4 v6, 0x0

    .line 502
    :goto_a
    if-nez v6, :cond_1e

    .line 503
    .line 504
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    goto :goto_d

    .line 509
    :cond_1e
    iget-object v5, v6, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 510
    .line 511
    iget-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-static {v8, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    if-nez v8, :cond_1f

    .line 518
    .line 519
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 523
    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_1f
    iget-object v8, v5, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 529
    .line 530
    .line 531
    move-result v8

    .line 532
    if-nez v8, :cond_20

    .line 533
    .line 534
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 535
    .line 536
    .line 537
    const/4 v4, 0x0

    .line 538
    goto :goto_d

    .line 539
    :cond_20
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    if-eq v8, v6, :cond_21

    .line 544
    .line 545
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 546
    .line 547
    .line 548
    :cond_21
    iget-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 551
    .line 552
    .line 553
    move-result v10

    .line 554
    const/4 v11, -0x1

    .line 555
    if-eq v10, v11, :cond_23

    .line 556
    .line 557
    :cond_22
    add-int/lit8 v10, v10, 0x1

    .line 558
    .line 559
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 560
    .line 561
    .line 562
    move-result v11

    .line 563
    if-ge v10, v11, :cond_23

    .line 564
    .line 565
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v11

    .line 569
    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 570
    .line 571
    invoke-static {v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 572
    .line 573
    .line 574
    move-result v12

    .line 575
    if-eqz v12, :cond_22

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_23
    const/4 v11, 0x0

    .line 579
    :goto_b
    if-nez v11, :cond_25

    .line 580
    .line 581
    :goto_c
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    if-eq v0, v6, :cond_24

    .line 586
    .line 587
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 588
    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_24
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_7

    .line 598
    .line 599
    :cond_25
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    .line 600
    .line 601
    .line 602
    move-result-object v8

    .line 603
    if-nez v8, :cond_26

    .line 604
    .line 605
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_7

    .line 609
    .line 610
    :goto_d
    return v4

    .line 611
    :cond_26
    const/4 v10, 0x0

    .line 612
    :goto_e
    iget-object v12, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 613
    .line 614
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 615
    .line 616
    .line 617
    move-result v12

    .line 618
    if-ge v10, v12, :cond_28

    .line 619
    .line 620
    iget-object v12, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 621
    .line 622
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v12

    .line 626
    if-ne v6, v12, :cond_27

    .line 627
    .line 628
    goto :goto_f

    .line 629
    :cond_27
    add-int/lit8 v10, v10, 0x1

    .line 630
    .line 631
    goto :goto_e

    .line 632
    :cond_28
    const/4 v10, -0x1

    .line 633
    :goto_f
    move-object v13, v11

    .line 634
    move-object v14, v13

    .line 635
    const/4 v12, 0x0

    .line 636
    :goto_10
    add-int/lit8 v12, v12, 0x1

    .line 637
    .line 638
    iget-object v15, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-static {v15, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 641
    .line 642
    .line 643
    move-result v15

    .line 644
    if-nez v15, :cond_29

    .line 645
    .line 646
    iget-object v13, v13, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 647
    .line 648
    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 649
    .line 650
    goto :goto_11

    .line 651
    :cond_29
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    .line 652
    .line 653
    .line 654
    move-result-object v13

    .line 655
    :goto_11
    if-nez v13, :cond_2a

    .line 656
    .line 657
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 658
    .line 659
    .line 660
    :goto_12
    const/4 v15, 0x3

    .line 661
    goto :goto_13

    .line 662
    :cond_2a
    if-ne v13, v6, :cond_2b

    .line 663
    .line 664
    goto :goto_12

    .line 665
    :cond_2b
    const/4 v15, 0x3

    .line 666
    if-le v12, v15, :cond_2e

    .line 667
    .line 668
    iget-object v7, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-static {v7, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    if-eqz v7, :cond_2e

    .line 675
    .line 676
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 677
    .line 678
    .line 679
    :goto_13
    invoke-virtual {v8, v14}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 680
    .line 681
    .line 682
    new-instance v7, Lorg/jsoup/nodes/Element;

    .line 683
    .line 684
    iget-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    .line 685
    .line 686
    const/4 v12, 0x0

    .line 687
    invoke-direct {v7, v5, v8, v12}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 691
    .line 692
    .line 693
    move-result-object v5

    .line 694
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 695
    .line 696
    .line 697
    move-result-object v8

    .line 698
    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v11}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 706
    .line 707
    .line 708
    move-result-object v5

    .line 709
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 710
    .line 711
    .line 712
    move-result v8

    .line 713
    if-eqz v8, :cond_2c

    .line 714
    .line 715
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v8

    .line 719
    check-cast v8, Lorg/jsoup/nodes/Node;

    .line 720
    .line 721
    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 722
    .line 723
    .line 724
    goto :goto_14

    .line 725
    :cond_2c
    invoke-virtual {v11, v7}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 732
    .line 733
    .line 734
    :try_start_0
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-virtual {v5, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .line 738
    .line 739
    goto :goto_15

    .line 740
    :catch_0
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    :goto_15
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 746
    .line 747
    .line 748
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    const/4 v11, -0x1

    .line 755
    if-eq v5, v11, :cond_2d

    .line 756
    .line 757
    move/from16 v6, v26

    .line 758
    .line 759
    goto :goto_16

    .line 760
    :cond_2d
    const/4 v6, 0x0

    .line 761
    :goto_16
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 762
    .line 763
    .line 764
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 765
    .line 766
    add-int/lit8 v5, v5, 0x1

    .line 767
    .line 768
    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_6

    .line 772
    .line 773
    :cond_2e
    iget-object v7, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 774
    .line 775
    invoke-static {v7, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 776
    .line 777
    .line 778
    move-result v7

    .line 779
    if-nez v7, :cond_2f

    .line 780
    .line 781
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 782
    .line 783
    .line 784
    :goto_17
    const/16 v7, 0x8

    .line 785
    .line 786
    goto/16 :goto_10

    .line 787
    .line 788
    :cond_2f
    new-instance v7, Lorg/jsoup/nodes/Element;

    .line 789
    .line 790
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v15

    .line 794
    move-object/from16 v16, v3

    .line 795
    .line 796
    iget-object v3, v13, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 797
    .line 798
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 799
    .line 800
    move/from16 v17, v4

    .line 801
    .line 802
    sget-object v4, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 803
    .line 804
    invoke-virtual {v2, v15, v3, v9, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    .line 809
    .line 810
    const/4 v15, 0x0

    .line 811
    invoke-direct {v7, v3, v4, v15}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 812
    .line 813
    .line 814
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 815
    .line 816
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    const/4 v15, -0x1

    .line 821
    if-eq v4, v15, :cond_30

    .line 822
    .line 823
    move/from16 v19, v26

    .line 824
    .line 825
    goto :goto_18

    .line 826
    :cond_30
    const/16 v19, 0x0

    .line 827
    .line 828
    :goto_18
    invoke-static/range {v19 .. v19}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v3, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 835
    .line 836
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    if-eq v4, v15, :cond_31

    .line 841
    .line 842
    move/from16 v13, v26

    .line 843
    .line 844
    goto :goto_19

    .line 845
    :cond_31
    const/4 v13, 0x0

    .line 846
    :goto_19
    invoke-static {v13}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v3, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    if-ne v14, v11, :cond_34

    .line 853
    .line 854
    const/4 v3, 0x0

    .line 855
    :goto_1a
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 858
    .line 859
    .line 860
    move-result v4

    .line 861
    if-ge v3, v4, :cond_33

    .line 862
    .line 863
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 864
    .line 865
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v4

    .line 869
    if-ne v7, v4, :cond_32

    .line 870
    .line 871
    goto :goto_1b

    .line 872
    :cond_32
    add-int/lit8 v3, v3, 0x1

    .line 873
    .line 874
    goto :goto_1a

    .line 875
    :cond_33
    move v3, v15

    .line 876
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    .line 877
    .line 878
    move v10, v3

    .line 879
    :cond_34
    invoke-virtual {v7, v14}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 880
    .line 881
    .line 882
    move-object v13, v7

    .line 883
    move-object v14, v13

    .line 884
    move-object/from16 v3, v16

    .line 885
    .line 886
    move/from16 v4, v17

    .line 887
    .line 888
    goto :goto_17

    .line 889
    :cond_35
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 890
    .line 891
    invoke-static {v14, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 892
    .line 893
    .line 894
    move-result v3

    .line 895
    if-eqz v3, :cond_38

    .line 896
    .line 897
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-nez v1, :cond_36

    .line 902
    .line 903
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 904
    .line 905
    .line 906
    const/4 v1, 0x0

    .line 907
    return v1

    .line 908
    :cond_36
    const/4 v1, 0x0

    .line 909
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    if-nez v1, :cond_37

    .line 917
    .line 918
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 919
    .line 920
    .line 921
    :cond_37
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    return v26

    .line 925
    :cond_38
    move-object/from16 v3, v22

    .line 926
    .line 927
    invoke-static {v14, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    if-eqz v3, :cond_3b

    .line 932
    .line 933
    const-string v1, "name"

    .line 934
    .line 935
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 936
    .line 937
    .line 938
    move-result v1

    .line 939
    if-nez v1, :cond_1

    .line 940
    .line 941
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    if-nez v1, :cond_39

    .line 946
    .line 947
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 948
    .line 949
    .line 950
    const/4 v1, 0x0

    .line 951
    return v1

    .line 952
    :cond_39
    const/4 v1, 0x0

    .line 953
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 957
    .line 958
    .line 959
    move-result v1

    .line 960
    if-nez v1, :cond_3a

    .line 961
    .line 962
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 963
    .line 964
    .line 965
    :cond_3a
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    .line 969
    .line 970
    .line 971
    return v26

    .line 972
    :cond_3b
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 973
    .line 974
    .line 975
    move-result v0

    .line 976
    return v0

    .line 977
    :pswitch_0
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 978
    .line 979
    .line 980
    move-result v0

    .line 981
    return v0

    .line 982
    :pswitch_1
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-nez v3, :cond_3c

    .line 987
    .line 988
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 989
    .line 990
    .line 991
    const/16 v18, 0x0

    .line 992
    .line 993
    return v18

    .line 994
    :cond_3c
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    .line 995
    .line 996
    .line 997
    move-result v3

    .line 998
    if-eqz v3, :cond_3d

    .line 999
    .line 1000
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1001
    .line 1002
    .line 1003
    :cond_3d
    iput-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1004
    .line 1005
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v0

    .line 1009
    return v0

    .line 1010
    :pswitch_2
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v1

    .line 1014
    if-nez v1, :cond_41

    .line 1015
    .line 1016
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 1017
    .line 1018
    const/4 v15, 0x0

    .line 1019
    iput-object v15, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 1020
    .line 1021
    if-eqz v1, :cond_3e

    .line 1022
    .line 1023
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v3

    .line 1027
    if-nez v3, :cond_3f

    .line 1028
    .line 1029
    :cond_3e
    const/4 v3, 0x0

    .line 1030
    goto :goto_1c

    .line 1031
    :cond_3f
    const/4 v3, 0x0

    .line 1032
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v3

    .line 1039
    if-nez v3, :cond_40

    .line 1040
    .line 1041
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1042
    .line 1043
    .line 1044
    :cond_40
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 1045
    .line 1046
    .line 1047
    return v26

    .line 1048
    :goto_1c
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1049
    .line 1050
    .line 1051
    return v3

    .line 1052
    :cond_41
    const/4 v3, 0x0

    .line 1053
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v1

    .line 1057
    if-nez v1, :cond_42

    .line 1058
    .line 1059
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1060
    .line 1061
    .line 1062
    return v3

    .line 1063
    :cond_42
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v1

    .line 1070
    if-nez v1, :cond_43

    .line 1071
    .line 1072
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1073
    .line 1074
    .line 1075
    :cond_43
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    return v26

    .line 1079
    :pswitch_3
    const/4 v3, 0x0

    .line 1080
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    if-nez v1, :cond_44

    .line 1085
    .line 1086
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1087
    .line 1088
    .line 1089
    return v3

    .line 1090
    :cond_44
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v1

    .line 1094
    if-eqz v1, :cond_45

    .line 1095
    .line 1096
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1097
    .line 1098
    .line 1099
    :cond_45
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 1100
    .line 1101
    .line 1102
    iput-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1103
    .line 1104
    return v26

    .line 1105
    :pswitch_4
    const/4 v3, 0x0

    .line 1106
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    .line 1107
    .line 1108
    aput-object v14, v1, v3

    .line 1109
    .line 1110
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    .line 1111
    .line 1112
    invoke-virtual {v2, v1, v6, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v1

    .line 1116
    if-nez v1, :cond_46

    .line 1117
    .line 1118
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1119
    .line 1120
    .line 1121
    return v3

    .line 1122
    :cond_46
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v1

    .line 1129
    if-nez v1, :cond_47

    .line 1130
    .line 1131
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1132
    .line 1133
    .line 1134
    :cond_47
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    return v26

    .line 1138
    :pswitch_5
    move-object/from16 v7, v21

    .line 1139
    .line 1140
    const/4 v15, 0x0

    .line 1141
    invoke-virtual {v2, v7, v6, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v1

    .line 1145
    if-nez v1, :cond_48

    .line 1146
    .line 1147
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1148
    .line 1149
    .line 1150
    const/16 v18, 0x0

    .line 1151
    .line 1152
    return v18

    .line 1153
    :cond_48
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    if-nez v1, :cond_49

    .line 1161
    .line 1162
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1163
    .line 1164
    .line 1165
    :cond_49
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 1166
    .line 1167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    add-int/lit8 v0, v0, -0x1

    .line 1172
    .line 1173
    :goto_1d
    if-ltz v0, :cond_1

    .line 1174
    .line 1175
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v1

    .line 1179
    iget-object v3, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 1180
    .line 1181
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 1182
    .line 1183
    invoke-static {v3, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v3

    .line 1187
    if-eqz v3, :cond_4a

    .line 1188
    .line 1189
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 1190
    .line 1191
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 1192
    .line 1193
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v1

    .line 1197
    if-eqz v1, :cond_4a

    .line 1198
    .line 1199
    goto/16 :goto_0

    .line 1200
    .line 1201
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    .line 1202
    .line 1203
    goto :goto_1d

    .line 1204
    :pswitch_6
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v1

    .line 1208
    if-nez v1, :cond_4b

    .line 1209
    .line 1210
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1211
    .line 1212
    .line 1213
    const/16 v18, 0x0

    .line 1214
    .line 1215
    return v18

    .line 1216
    :cond_4b
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v1

    .line 1223
    if-nez v1, :cond_4c

    .line 1224
    .line 1225
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1226
    .line 1227
    .line 1228
    :cond_4c
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    return v26

    .line 1232
    :pswitch_7
    const/16 v18, 0x0

    .line 1233
    .line 1234
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    return v18

    .line 1241
    :pswitch_8
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    if-nez v1, :cond_4d

    .line 1246
    .line 1247
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v0

    .line 1257
    return v0

    .line 1258
    :cond_4d
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v1

    .line 1265
    if-nez v1, :cond_4e

    .line 1266
    .line 1267
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1268
    .line 1269
    .line 1270
    :cond_4e
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    return v26

    .line 1274
    :pswitch_9
    move-object/from16 v14, v20

    .line 1275
    .line 1276
    invoke-virtual {v14, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 1277
    .line 1278
    .line 1279
    return v26

    .line 1280
    :cond_4f
    move/from16 v26, v7

    .line 1281
    .line 1282
    move-object v7, v14

    .line 1283
    move-object/from16 v14, v20

    .line 1284
    .line 1285
    move-object/from16 v3, v22

    .line 1286
    .line 1287
    move-object/from16 v29, v23

    .line 1288
    .line 1289
    const/16 v19, 0x6

    .line 1290
    .line 1291
    const/16 v24, -0x1

    .line 1292
    .line 1293
    const/16 v25, 0x3

    .line 1294
    .line 1295
    move-object v0, v1

    .line 1296
    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 1297
    .line 1298
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 1299
    .line 1300
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 1304
    .line 1305
    .line 1306
    move-result v20

    .line 1307
    sparse-switch v20, :sswitch_data_1

    .line 1308
    .line 1309
    .line 1310
    goto/16 :goto_1f

    .line 1311
    .line 1312
    :sswitch_11
    const-string v5, "noembed"

    .line 1313
    .line 1314
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v5

    .line 1318
    if-nez v5, :cond_50

    .line 1319
    .line 1320
    goto/16 :goto_1f

    .line 1321
    .line 1322
    :cond_50
    const/16 v5, 0x36

    .line 1323
    .line 1324
    goto/16 :goto_1e

    .line 1325
    .line 1326
    :sswitch_12
    const-string v5, "plaintext"

    .line 1327
    .line 1328
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v5

    .line 1332
    if-nez v5, :cond_51

    .line 1333
    .line 1334
    goto/16 :goto_1f

    .line 1335
    .line 1336
    :cond_51
    const/16 v5, 0x35

    .line 1337
    .line 1338
    goto/16 :goto_1e

    .line 1339
    .line 1340
    :sswitch_13
    const-string v5, "listing"

    .line 1341
    .line 1342
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    move-result v5

    .line 1346
    if-nez v5, :cond_52

    .line 1347
    .line 1348
    goto/16 :goto_1f

    .line 1349
    .line 1350
    :cond_52
    const/16 v5, 0x34

    .line 1351
    .line 1352
    goto/16 :goto_1e

    .line 1353
    .line 1354
    :sswitch_14
    const-string v5, "table"

    .line 1355
    .line 1356
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v5

    .line 1360
    if-nez v5, :cond_53

    .line 1361
    .line 1362
    goto/16 :goto_1f

    .line 1363
    .line 1364
    :cond_53
    const/16 v5, 0x33

    .line 1365
    .line 1366
    goto/16 :goto_1e

    .line 1367
    .line 1368
    :sswitch_15
    const-string v5, "small"

    .line 1369
    .line 1370
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v5

    .line 1374
    if-nez v5, :cond_54

    .line 1375
    .line 1376
    goto/16 :goto_1f

    .line 1377
    .line 1378
    :cond_54
    const/16 v5, 0x32

    .line 1379
    .line 1380
    goto/16 :goto_1e

    .line 1381
    .line 1382
    :sswitch_16
    const-string v5, "input"

    .line 1383
    .line 1384
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1385
    .line 1386
    .line 1387
    move-result v5

    .line 1388
    if-nez v5, :cond_55

    .line 1389
    .line 1390
    goto/16 :goto_1f

    .line 1391
    .line 1392
    :cond_55
    const/16 v5, 0x31

    .line 1393
    .line 1394
    goto/16 :goto_1e

    .line 1395
    .line 1396
    :sswitch_17
    const-string v5, "image"

    .line 1397
    .line 1398
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1399
    .line 1400
    .line 1401
    move-result v5

    .line 1402
    if-nez v5, :cond_56

    .line 1403
    .line 1404
    goto/16 :goto_1f

    .line 1405
    .line 1406
    :cond_56
    const/16 v5, 0x30

    .line 1407
    .line 1408
    goto/16 :goto_1e

    .line 1409
    .line 1410
    :sswitch_18
    const-string v5, "embed"

    .line 1411
    .line 1412
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1413
    .line 1414
    .line 1415
    move-result v5

    .line 1416
    if-nez v5, :cond_57

    .line 1417
    .line 1418
    goto/16 :goto_1f

    .line 1419
    .line 1420
    :cond_57
    const/16 v5, 0x2f

    .line 1421
    .line 1422
    goto/16 :goto_1e

    .line 1423
    .line 1424
    :sswitch_19
    const-string v5, "span"

    .line 1425
    .line 1426
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1427
    .line 1428
    .line 1429
    move-result v5

    .line 1430
    if-nez v5, :cond_58

    .line 1431
    .line 1432
    goto/16 :goto_1f

    .line 1433
    .line 1434
    :cond_58
    const/16 v5, 0x2e

    .line 1435
    .line 1436
    goto/16 :goto_1e

    .line 1437
    .line 1438
    :sswitch_1a
    const-string v5, "nobr"

    .line 1439
    .line 1440
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1441
    .line 1442
    .line 1443
    move-result v5

    .line 1444
    if-nez v5, :cond_59

    .line 1445
    .line 1446
    goto/16 :goto_1f

    .line 1447
    .line 1448
    :cond_59
    const/16 v5, 0x2d

    .line 1449
    .line 1450
    goto/16 :goto_1e

    .line 1451
    .line 1452
    :sswitch_1b
    const-string v5, "math"

    .line 1453
    .line 1454
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v5

    .line 1458
    if-nez v5, :cond_5a

    .line 1459
    .line 1460
    goto/16 :goto_1f

    .line 1461
    .line 1462
    :cond_5a
    const/16 v5, 0x2c

    .line 1463
    .line 1464
    goto/16 :goto_1e

    .line 1465
    .line 1466
    :sswitch_1c
    const-string v5, "html"

    .line 1467
    .line 1468
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v5

    .line 1472
    if-nez v5, :cond_5b

    .line 1473
    .line 1474
    goto/16 :goto_1f

    .line 1475
    .line 1476
    :cond_5b
    const/16 v5, 0x2b

    .line 1477
    .line 1478
    goto/16 :goto_1e

    .line 1479
    .line 1480
    :sswitch_1d
    const-string v5, "form"

    .line 1481
    .line 1482
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v5

    .line 1486
    if-nez v5, :cond_5c

    .line 1487
    .line 1488
    goto/16 :goto_1f

    .line 1489
    .line 1490
    :cond_5c
    const/16 v5, 0x2a

    .line 1491
    .line 1492
    goto/16 :goto_1e

    .line 1493
    .line 1494
    :sswitch_1e
    const-string v5, "font"

    .line 1495
    .line 1496
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v5

    .line 1500
    if-nez v5, :cond_5d

    .line 1501
    .line 1502
    goto/16 :goto_1f

    .line 1503
    .line 1504
    :cond_5d
    const/16 v5, 0x29

    .line 1505
    .line 1506
    goto/16 :goto_1e

    .line 1507
    .line 1508
    :sswitch_1f
    const-string v5, "code"

    .line 1509
    .line 1510
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v5

    .line 1514
    if-nez v5, :cond_5e

    .line 1515
    .line 1516
    goto/16 :goto_1f

    .line 1517
    .line 1518
    :cond_5e
    const/16 v5, 0x28

    .line 1519
    .line 1520
    goto/16 :goto_1e

    .line 1521
    .line 1522
    :sswitch_20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v5

    .line 1526
    if-nez v5, :cond_5f

    .line 1527
    .line 1528
    goto/16 :goto_1f

    .line 1529
    .line 1530
    :cond_5f
    const/16 v5, 0x27

    .line 1531
    .line 1532
    goto/16 :goto_1e

    .line 1533
    .line 1534
    :sswitch_21
    const-string v5, "area"

    .line 1535
    .line 1536
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1537
    .line 1538
    .line 1539
    move-result v5

    .line 1540
    if-nez v5, :cond_60

    .line 1541
    .line 1542
    goto/16 :goto_1f

    .line 1543
    .line 1544
    :cond_60
    const/16 v5, 0x26

    .line 1545
    .line 1546
    goto/16 :goto_1e

    .line 1547
    .line 1548
    :sswitch_22
    const-string/jumbo v5, "xmp"

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v5

    .line 1555
    if-nez v5, :cond_61

    .line 1556
    .line 1557
    goto/16 :goto_1f

    .line 1558
    .line 1559
    :cond_61
    const/16 v5, 0x25

    .line 1560
    .line 1561
    goto/16 :goto_1e

    .line 1562
    .line 1563
    :sswitch_23
    const-string/jumbo v5, "wbr"

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v5

    .line 1570
    if-nez v5, :cond_62

    .line 1571
    .line 1572
    goto/16 :goto_1f

    .line 1573
    .line 1574
    :cond_62
    const/16 v5, 0x24

    .line 1575
    .line 1576
    goto/16 :goto_1e

    .line 1577
    .line 1578
    :sswitch_24
    const-string v5, "svg"

    .line 1579
    .line 1580
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1581
    .line 1582
    .line 1583
    move-result v5

    .line 1584
    if-nez v5, :cond_63

    .line 1585
    .line 1586
    goto/16 :goto_1f

    .line 1587
    .line 1588
    :cond_63
    const/16 v5, 0x23

    .line 1589
    .line 1590
    goto/16 :goto_1e

    .line 1591
    .line 1592
    :sswitch_25
    const-string v5, "rtc"

    .line 1593
    .line 1594
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v5

    .line 1598
    if-nez v5, :cond_64

    .line 1599
    .line 1600
    goto/16 :goto_1f

    .line 1601
    .line 1602
    :cond_64
    const/16 v5, 0x22

    .line 1603
    .line 1604
    goto/16 :goto_1e

    .line 1605
    .line 1606
    :sswitch_26
    const-string v5, "pre"

    .line 1607
    .line 1608
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v5

    .line 1612
    if-nez v5, :cond_65

    .line 1613
    .line 1614
    goto/16 :goto_1f

    .line 1615
    .line 1616
    :cond_65
    const/16 v5, 0x21

    .line 1617
    .line 1618
    goto/16 :goto_1e

    .line 1619
    .line 1620
    :sswitch_27
    const-string v5, "img"

    .line 1621
    .line 1622
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v5

    .line 1626
    if-nez v5, :cond_66

    .line 1627
    .line 1628
    goto/16 :goto_1f

    .line 1629
    .line 1630
    :cond_66
    const/16 v5, 0x20

    .line 1631
    .line 1632
    goto/16 :goto_1e

    .line 1633
    .line 1634
    :sswitch_28
    const-string v5, "big"

    .line 1635
    .line 1636
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1637
    .line 1638
    .line 1639
    move-result v5

    .line 1640
    if-nez v5, :cond_67

    .line 1641
    .line 1642
    goto/16 :goto_1f

    .line 1643
    .line 1644
    :cond_67
    const/16 v5, 0x1f

    .line 1645
    .line 1646
    goto/16 :goto_1e

    .line 1647
    .line 1648
    :sswitch_29
    const-string v5, "tt"

    .line 1649
    .line 1650
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1651
    .line 1652
    .line 1653
    move-result v5

    .line 1654
    if-nez v5, :cond_68

    .line 1655
    .line 1656
    goto/16 :goto_1f

    .line 1657
    .line 1658
    :cond_68
    const/16 v5, 0x1e

    .line 1659
    .line 1660
    goto/16 :goto_1e

    .line 1661
    .line 1662
    :sswitch_2a
    const-string v5, "rt"

    .line 1663
    .line 1664
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v5

    .line 1668
    if-nez v5, :cond_69

    .line 1669
    .line 1670
    goto/16 :goto_1f

    .line 1671
    .line 1672
    :cond_69
    const/16 v5, 0x1d

    .line 1673
    .line 1674
    goto/16 :goto_1e

    .line 1675
    .line 1676
    :sswitch_2b
    const-string v5, "rp"

    .line 1677
    .line 1678
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1679
    .line 1680
    .line 1681
    move-result v5

    .line 1682
    if-nez v5, :cond_6a

    .line 1683
    .line 1684
    goto/16 :goto_1f

    .line 1685
    .line 1686
    :cond_6a
    const/16 v5, 0x1c

    .line 1687
    .line 1688
    goto/16 :goto_1e

    .line 1689
    .line 1690
    :sswitch_2c
    const-string v5, "rb"

    .line 1691
    .line 1692
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v5

    .line 1696
    if-nez v5, :cond_6b

    .line 1697
    .line 1698
    goto/16 :goto_1f

    .line 1699
    .line 1700
    :cond_6b
    const/16 v5, 0x1b

    .line 1701
    .line 1702
    goto/16 :goto_1e

    .line 1703
    .line 1704
    :sswitch_2d
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1705
    .line 1706
    .line 1707
    move-result v5

    .line 1708
    if-nez v5, :cond_6c

    .line 1709
    .line 1710
    goto/16 :goto_1f

    .line 1711
    .line 1712
    :cond_6c
    const/16 v5, 0x1a

    .line 1713
    .line 1714
    goto/16 :goto_1e

    .line 1715
    .line 1716
    :sswitch_2e
    const-string v5, "hr"

    .line 1717
    .line 1718
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1719
    .line 1720
    .line 1721
    move-result v5

    .line 1722
    if-nez v5, :cond_6d

    .line 1723
    .line 1724
    goto/16 :goto_1f

    .line 1725
    .line 1726
    :cond_6d
    const/16 v5, 0x19

    .line 1727
    .line 1728
    goto/16 :goto_1e

    .line 1729
    .line 1730
    :sswitch_2f
    const-string v5, "h6"

    .line 1731
    .line 1732
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1733
    .line 1734
    .line 1735
    move-result v5

    .line 1736
    if-nez v5, :cond_6e

    .line 1737
    .line 1738
    goto/16 :goto_1f

    .line 1739
    .line 1740
    :cond_6e
    const/16 v5, 0x18

    .line 1741
    .line 1742
    goto/16 :goto_1e

    .line 1743
    .line 1744
    :sswitch_30
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1745
    .line 1746
    .line 1747
    move-result v5

    .line 1748
    if-nez v5, :cond_6f

    .line 1749
    .line 1750
    goto/16 :goto_1f

    .line 1751
    .line 1752
    :cond_6f
    const/16 v5, 0x17

    .line 1753
    .line 1754
    goto/16 :goto_1e

    .line 1755
    .line 1756
    :sswitch_31
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1757
    .line 1758
    .line 1759
    move-result v5

    .line 1760
    if-nez v5, :cond_70

    .line 1761
    .line 1762
    goto/16 :goto_1f

    .line 1763
    .line 1764
    :cond_70
    const/16 v5, 0x16

    .line 1765
    .line 1766
    goto/16 :goto_1e

    .line 1767
    .line 1768
    :sswitch_32
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v5

    .line 1772
    if-nez v5, :cond_71

    .line 1773
    .line 1774
    goto/16 :goto_1f

    .line 1775
    .line 1776
    :cond_71
    const/16 v5, 0x15

    .line 1777
    .line 1778
    goto/16 :goto_1e

    .line 1779
    .line 1780
    :sswitch_33
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v5

    .line 1784
    if-nez v5, :cond_72

    .line 1785
    .line 1786
    goto/16 :goto_1f

    .line 1787
    .line 1788
    :cond_72
    const/16 v5, 0x14

    .line 1789
    .line 1790
    goto/16 :goto_1e

    .line 1791
    .line 1792
    :sswitch_34
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1793
    .line 1794
    .line 1795
    move-result v5

    .line 1796
    if-nez v5, :cond_73

    .line 1797
    .line 1798
    goto/16 :goto_1f

    .line 1799
    .line 1800
    :cond_73
    const/16 v5, 0x13

    .line 1801
    .line 1802
    goto/16 :goto_1e

    .line 1803
    .line 1804
    :sswitch_35
    const-string v5, "em"

    .line 1805
    .line 1806
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1807
    .line 1808
    .line 1809
    move-result v5

    .line 1810
    if-nez v5, :cond_74

    .line 1811
    .line 1812
    goto/16 :goto_1f

    .line 1813
    .line 1814
    :cond_74
    const/16 v5, 0x12

    .line 1815
    .line 1816
    goto/16 :goto_1e

    .line 1817
    .line 1818
    :sswitch_36
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1819
    .line 1820
    .line 1821
    move-result v5

    .line 1822
    if-nez v5, :cond_75

    .line 1823
    .line 1824
    goto/16 :goto_1f

    .line 1825
    .line 1826
    :cond_75
    const/16 v5, 0x11

    .line 1827
    .line 1828
    goto/16 :goto_1e

    .line 1829
    .line 1830
    :sswitch_37
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1831
    .line 1832
    .line 1833
    move-result v5

    .line 1834
    if-nez v5, :cond_76

    .line 1835
    .line 1836
    goto/16 :goto_1f

    .line 1837
    .line 1838
    :cond_76
    const/16 v5, 0x10

    .line 1839
    .line 1840
    goto :goto_1e

    .line 1841
    :sswitch_38
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1842
    .line 1843
    .line 1844
    move-result v5

    .line 1845
    if-nez v5, :cond_77

    .line 1846
    .line 1847
    goto/16 :goto_1f

    .line 1848
    .line 1849
    :cond_77
    const/16 v5, 0xf

    .line 1850
    .line 1851
    goto :goto_1e

    .line 1852
    :sswitch_39
    const-string v5, "u"

    .line 1853
    .line 1854
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1855
    .line 1856
    .line 1857
    move-result v5

    .line 1858
    if-nez v5, :cond_78

    .line 1859
    .line 1860
    goto/16 :goto_1f

    .line 1861
    .line 1862
    :cond_78
    const/16 v5, 0xe

    .line 1863
    .line 1864
    goto :goto_1e

    .line 1865
    :sswitch_3a
    const-string v5, "s"

    .line 1866
    .line 1867
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1868
    .line 1869
    .line 1870
    move-result v5

    .line 1871
    if-nez v5, :cond_79

    .line 1872
    .line 1873
    goto/16 :goto_1f

    .line 1874
    .line 1875
    :cond_79
    const/16 v5, 0xd

    .line 1876
    .line 1877
    goto :goto_1e

    .line 1878
    :sswitch_3b
    const-string v5, "i"

    .line 1879
    .line 1880
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1881
    .line 1882
    .line 1883
    move-result v5

    .line 1884
    if-nez v5, :cond_7a

    .line 1885
    .line 1886
    goto/16 :goto_1f

    .line 1887
    .line 1888
    :cond_7a
    const/16 v5, 0xc

    .line 1889
    .line 1890
    goto :goto_1e

    .line 1891
    :sswitch_3c
    const-string v5, "b"

    .line 1892
    .line 1893
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1894
    .line 1895
    .line 1896
    move-result v5

    .line 1897
    if-nez v5, :cond_7b

    .line 1898
    .line 1899
    goto/16 :goto_1f

    .line 1900
    .line 1901
    :cond_7b
    const/16 v5, 0xb

    .line 1902
    .line 1903
    goto :goto_1e

    .line 1904
    :sswitch_3d
    const-string v5, "a"

    .line 1905
    .line 1906
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1907
    .line 1908
    .line 1909
    move-result v5

    .line 1910
    if-nez v5, :cond_7c

    .line 1911
    .line 1912
    goto/16 :goto_1f

    .line 1913
    .line 1914
    :cond_7c
    const/16 v5, 0xa

    .line 1915
    .line 1916
    goto :goto_1e

    .line 1917
    :sswitch_3e
    const-string v5, "optgroup"

    .line 1918
    .line 1919
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1920
    .line 1921
    .line 1922
    move-result v5

    .line 1923
    if-nez v5, :cond_7d

    .line 1924
    .line 1925
    goto/16 :goto_1f

    .line 1926
    .line 1927
    :cond_7d
    const/16 v5, 0x9

    .line 1928
    .line 1929
    :goto_1e
    move/from16 v24, v5

    .line 1930
    .line 1931
    goto/16 :goto_1f

    .line 1932
    .line 1933
    :sswitch_3f
    const-string v5, "strong"

    .line 1934
    .line 1935
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1936
    .line 1937
    .line 1938
    move-result v5

    .line 1939
    if-nez v5, :cond_7e

    .line 1940
    .line 1941
    goto/16 :goto_1f

    .line 1942
    .line 1943
    :cond_7e
    const/16 v24, 0x8

    .line 1944
    .line 1945
    goto/16 :goto_1f

    .line 1946
    .line 1947
    :sswitch_40
    const-string v5, "strike"

    .line 1948
    .line 1949
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1950
    .line 1951
    .line 1952
    move-result v5

    .line 1953
    if-nez v5, :cond_7f

    .line 1954
    .line 1955
    goto :goto_1f

    .line 1956
    :cond_7f
    const/16 v24, 0x7

    .line 1957
    .line 1958
    goto :goto_1f

    .line 1959
    :sswitch_41
    const-string v5, "select"

    .line 1960
    .line 1961
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1962
    .line 1963
    .line 1964
    move-result v5

    .line 1965
    if-nez v5, :cond_80

    .line 1966
    .line 1967
    goto :goto_1f

    .line 1968
    :cond_80
    move/from16 v24, v19

    .line 1969
    .line 1970
    goto :goto_1f

    .line 1971
    :sswitch_42
    const-string v5, "textarea"

    .line 1972
    .line 1973
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1974
    .line 1975
    .line 1976
    move-result v5

    .line 1977
    if-nez v5, :cond_81

    .line 1978
    .line 1979
    goto :goto_1f

    .line 1980
    :cond_81
    const/16 v24, 0x5

    .line 1981
    .line 1982
    goto :goto_1f

    .line 1983
    :sswitch_43
    const-string v5, "option"

    .line 1984
    .line 1985
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v5

    .line 1989
    if-nez v5, :cond_82

    .line 1990
    .line 1991
    goto :goto_1f

    .line 1992
    :cond_82
    const/16 v24, 0x4

    .line 1993
    .line 1994
    goto :goto_1f

    .line 1995
    :sswitch_44
    const-string v5, "keygen"

    .line 1996
    .line 1997
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1998
    .line 1999
    .line 2000
    move-result v5

    .line 2001
    if-nez v5, :cond_83

    .line 2002
    .line 2003
    goto :goto_1f

    .line 2004
    :cond_83
    move/from16 v24, v25

    .line 2005
    .line 2006
    goto :goto_1f

    .line 2007
    :sswitch_45
    const-string v5, "iframe"

    .line 2008
    .line 2009
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2010
    .line 2011
    .line 2012
    move-result v5

    .line 2013
    if-nez v5, :cond_84

    .line 2014
    .line 2015
    goto :goto_1f

    .line 2016
    :cond_84
    const/16 v24, 0x2

    .line 2017
    .line 2018
    goto :goto_1f

    .line 2019
    :sswitch_46
    const-string v5, "button"

    .line 2020
    .line 2021
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2022
    .line 2023
    .line 2024
    move-result v5

    .line 2025
    if-nez v5, :cond_85

    .line 2026
    .line 2027
    goto :goto_1f

    .line 2028
    :cond_85
    move/from16 v24, v26

    .line 2029
    .line 2030
    goto :goto_1f

    .line 2031
    :sswitch_47
    const-string v5, "frameset"

    .line 2032
    .line 2033
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2034
    .line 2035
    .line 2036
    move-result v5

    .line 2037
    if-nez v5, :cond_86

    .line 2038
    .line 2039
    goto :goto_1f

    .line 2040
    :cond_86
    const/16 v24, 0x0

    .line 2041
    .line 2042
    :goto_1f
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 2043
    .line 2044
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 2045
    .line 2046
    const-string v8, "ruby"

    .line 2047
    .line 2048
    packed-switch v24, :pswitch_data_1

    .line 2049
    .line 2050
    .line 2051
    sget-object v4, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/HashMap;

    .line 2052
    .line 2053
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 2054
    .line 2055
    .line 2056
    move-result v4

    .line 2057
    if-nez v4, :cond_87

    .line 2058
    .line 2059
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2060
    .line 2061
    .line 2062
    return v26

    .line 2063
    :cond_87
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 2064
    .line 2065
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2066
    .line 2067
    .line 2068
    move-result v4

    .line 2069
    if-eqz v4, :cond_89

    .line 2070
    .line 2071
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2072
    .line 2073
    .line 2074
    move-result v1

    .line 2075
    if-eqz v1, :cond_88

    .line 2076
    .line 2077
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2078
    .line 2079
    .line 2080
    :cond_88
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2081
    .line 2082
    .line 2083
    return v26

    .line 2084
    :cond_89
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    .line 2085
    .line 2086
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2087
    .line 2088
    .line 2089
    move-result v4

    .line 2090
    if-eqz v4, :cond_8a

    .line 2091
    .line 2092
    invoke-virtual {v14, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 2093
    .line 2094
    .line 2095
    move-result v0

    .line 2096
    return v0

    .line 2097
    :cond_8a
    move-object/from16 v1, v22

    .line 2098
    .line 2099
    invoke-static {v3, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2100
    .line 2101
    .line 2102
    move-result v1

    .line 2103
    if-eqz v1, :cond_8b

    .line 2104
    .line 2105
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2106
    .line 2107
    .line 2108
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2109
    .line 2110
    .line 2111
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2112
    .line 2113
    const/4 v15, 0x0

    .line 2114
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2115
    .line 2116
    .line 2117
    const/4 v1, 0x0

    .line 2118
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2119
    .line 2120
    return v26

    .line 2121
    :cond_8b
    const/4 v1, 0x0

    .line 2122
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 2123
    .line 2124
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2125
    .line 2126
    .line 2127
    move-result v4

    .line 2128
    if-eqz v4, :cond_8c

    .line 2129
    .line 2130
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2131
    .line 2132
    .line 2133
    return v26

    .line 2134
    :cond_8c
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 2135
    .line 2136
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2137
    .line 2138
    .line 2139
    move-result v3

    .line 2140
    if-eqz v3, :cond_8d

    .line 2141
    .line 2142
    move-object/from16 v3, p0

    .line 2143
    .line 2144
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2145
    .line 2146
    .line 2147
    return v1

    .line 2148
    :cond_8d
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2152
    .line 2153
    .line 2154
    return v26

    .line 2155
    :pswitch_a
    invoke-static {v0, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 2156
    .line 2157
    .line 2158
    return v26

    .line 2159
    :pswitch_b
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2160
    .line 2161
    .line 2162
    move-result v1

    .line 2163
    if-eqz v1, :cond_8e

    .line 2164
    .line 2165
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2166
    .line 2167
    .line 2168
    :cond_8e
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2169
    .line 2170
    .line 2171
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 2172
    .line 2173
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState$7;

    .line 2174
    .line 2175
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 2176
    .line 2177
    .line 2178
    return v26

    .line 2179
    :pswitch_c
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 2180
    .line 2181
    iget v1, v1, Lorg/jsoup/nodes/Document;->quirksMode:I

    .line 2182
    .line 2183
    const/4 v14, 0x2

    .line 2184
    if-eq v1, v14, :cond_8f

    .line 2185
    .line 2186
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2187
    .line 2188
    .line 2189
    move-result v1

    .line 2190
    if-eqz v1, :cond_8f

    .line 2191
    .line 2192
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2193
    .line 2194
    .line 2195
    :cond_8f
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2196
    .line 2197
    .line 2198
    const/4 v1, 0x0

    .line 2199
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2200
    .line 2201
    iput-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2202
    .line 2203
    return v26

    .line 2204
    :pswitch_d
    const/4 v1, 0x0

    .line 2205
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2206
    .line 2207
    .line 2208
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v0

    .line 2212
    const-string v3, "type"

    .line 2213
    .line 2214
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v0

    .line 2218
    const-string v3, "hidden"

    .line 2219
    .line 2220
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2221
    .line 2222
    .line 2223
    move-result v0

    .line 2224
    if-nez v0, :cond_1

    .line 2225
    .line 2226
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2227
    .line 2228
    return v26

    .line 2229
    :pswitch_e
    const-string v1, "svg"

    .line 2230
    .line 2231
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v1

    .line 2235
    if-nez v1, :cond_90

    .line 2236
    .line 2237
    const-string v1, "img"

    .line 2238
    .line 2239
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)V

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 2243
    .line 2244
    .line 2245
    move-result v0

    .line 2246
    return v0

    .line 2247
    :cond_90
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2248
    .line 2249
    .line 2250
    return v26

    .line 2251
    :pswitch_f
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2255
    .line 2256
    .line 2257
    return v26

    .line 2258
    :pswitch_10
    move-object/from16 v3, p0

    .line 2259
    .line 2260
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2261
    .line 2262
    .line 2263
    const-string v1, "nobr"

    .line 2264
    .line 2265
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 2266
    .line 2267
    .line 2268
    move-result v4

    .line 2269
    if-eqz v4, :cond_91

    .line 2270
    .line 2271
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2275
    .line 2276
    .line 2277
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2278
    .line 2279
    .line 2280
    :cond_91
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v0

    .line 2284
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 2285
    .line 2286
    .line 2287
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2288
    .line 2289
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2290
    .line 2291
    .line 2292
    return v26

    .line 2293
    :pswitch_11
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2294
    .line 2295
    .line 2296
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    .line 2297
    .line 2298
    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    .line 2299
    .line 2300
    .line 2301
    return v26

    .line 2302
    :pswitch_12
    move-object/from16 v3, p0

    .line 2303
    .line 2304
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2305
    .line 2306
    .line 2307
    move-object/from16 v5, v29

    .line 2308
    .line 2309
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 2310
    .line 2311
    .line 2312
    move-result v1

    .line 2313
    if-eqz v1, :cond_93

    .line 2314
    .line 2315
    :cond_92
    :goto_20
    const/16 v18, 0x0

    .line 2316
    .line 2317
    goto/16 :goto_2b

    .line 2318
    .line 2319
    :cond_93
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2320
    .line 2321
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2322
    .line 2323
    .line 2324
    move-result v1

    .line 2325
    if-lez v1, :cond_1

    .line 2326
    .line 2327
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2328
    .line 2329
    const/4 v4, 0x0

    .line 2330
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v1

    .line 2334
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 2335
    .line 2336
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$500(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    .line 2337
    .line 2338
    .line 2339
    return v26

    .line 2340
    :pswitch_13
    move-object/from16 v3, p0

    .line 2341
    .line 2342
    move-object/from16 v5, v29

    .line 2343
    .line 2344
    const/4 v4, 0x0

    .line 2345
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 2346
    .line 2347
    if-eqz v1, :cond_94

    .line 2348
    .line 2349
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 2350
    .line 2351
    .line 2352
    move-result v1

    .line 2353
    if-nez v1, :cond_94

    .line 2354
    .line 2355
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2356
    .line 2357
    .line 2358
    return v4

    .line 2359
    :cond_94
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2360
    .line 2361
    .line 2362
    move-result v1

    .line 2363
    if-eqz v1, :cond_96

    .line 2364
    .line 2365
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 2366
    .line 2367
    .line 2368
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 2369
    .line 2370
    .line 2371
    move-result-object v1

    .line 2372
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2373
    .line 2374
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2375
    .line 2376
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2377
    .line 2378
    .line 2379
    move-result v1

    .line 2380
    if-nez v1, :cond_95

    .line 2381
    .line 2382
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2383
    .line 2384
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2385
    .line 2386
    .line 2387
    :cond_95
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 2388
    .line 2389
    .line 2390
    :cond_96
    move/from16 v1, v26

    .line 2391
    .line 2392
    invoke-virtual {v2, v0, v1, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertFormElement(Lorg/jsoup/parser/Token$StartTag;ZZ)V

    .line 2393
    .line 2394
    .line 2395
    return v1

    .line 2396
    :pswitch_14
    move-object/from16 v3, p0

    .line 2397
    .line 2398
    move/from16 v1, v26

    .line 2399
    .line 2400
    move-object/from16 v5, v29

    .line 2401
    .line 2402
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2403
    .line 2404
    .line 2405
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2406
    .line 2407
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2408
    .line 2409
    .line 2410
    move-result v6

    .line 2411
    if-eq v6, v1, :cond_92

    .line 2412
    .line 2413
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2414
    .line 2415
    .line 2416
    move-result v6

    .line 2417
    const/4 v14, 0x2

    .line 2418
    if-le v6, v14, :cond_97

    .line 2419
    .line 2420
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v3

    .line 2424
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 2425
    .line 2426
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 2427
    .line 2428
    .line 2429
    move-result v1

    .line 2430
    if-eqz v1, :cond_92

    .line 2431
    .line 2432
    :cond_97
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    .line 2433
    .line 2434
    .line 2435
    move-result v1

    .line 2436
    if-eqz v1, :cond_98

    .line 2437
    .line 2438
    goto :goto_20

    .line 2439
    :cond_98
    const/4 v1, 0x0

    .line 2440
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2441
    .line 2442
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v1

    .line 2446
    if-eqz v1, :cond_99

    .line 2447
    .line 2448
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$500(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    .line 2449
    .line 2450
    .line 2451
    const/16 v26, 0x1

    .line 2452
    .line 2453
    return v26

    .line 2454
    :cond_99
    const/16 v26, 0x1

    .line 2455
    .line 2456
    goto/16 :goto_0

    .line 2457
    .line 2458
    :pswitch_15
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2459
    .line 2460
    .line 2461
    move-result v1

    .line 2462
    if-eqz v1, :cond_9a

    .line 2463
    .line 2464
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2465
    .line 2466
    .line 2467
    :cond_9a
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2468
    .line 2469
    .line 2470
    const/4 v1, 0x0

    .line 2471
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2472
    .line 2473
    invoke-static {v0, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 2474
    .line 2475
    .line 2476
    return v26

    .line 2477
    :pswitch_16
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2478
    .line 2479
    .line 2480
    const-string v1, "http://www.w3.org/2000/svg"

    .line 2481
    .line 2482
    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    .line 2483
    .line 2484
    .line 2485
    return v26

    .line 2486
    :pswitch_17
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2487
    .line 2488
    .line 2489
    move-result v1

    .line 2490
    if-eqz v1, :cond_9b

    .line 2491
    .line 2492
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2493
    .line 2494
    .line 2495
    :cond_9b
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2496
    .line 2497
    .line 2498
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 2499
    .line 2500
    const-string v1, "\n"

    .line 2501
    .line 2502
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 2503
    .line 2504
    .line 2505
    const/4 v1, 0x0

    .line 2506
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2507
    .line 2508
    return v26

    .line 2509
    :pswitch_18
    move-object/from16 v3, p0

    .line 2510
    .line 2511
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 2512
    .line 2513
    .line 2514
    move-result v1

    .line 2515
    if-eqz v1, :cond_9c

    .line 2516
    .line 2517
    const-string v1, "rtc"

    .line 2518
    .line 2519
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 2520
    .line 2521
    .line 2522
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 2523
    .line 2524
    .line 2525
    move-result v1

    .line 2526
    if-nez v1, :cond_9c

    .line 2527
    .line 2528
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 2529
    .line 2530
    .line 2531
    move-result v1

    .line 2532
    if-nez v1, :cond_9c

    .line 2533
    .line 2534
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2535
    .line 2536
    .line 2537
    :cond_9c
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2538
    .line 2539
    .line 2540
    const/16 v26, 0x1

    .line 2541
    .line 2542
    return v26

    .line 2543
    :pswitch_19
    move-object/from16 v3, p0

    .line 2544
    .line 2545
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    .line 2546
    .line 2547
    .line 2548
    move-result v1

    .line 2549
    if-eqz v1, :cond_9d

    .line 2550
    .line 2551
    const/4 v1, 0x0

    .line 2552
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 2553
    .line 2554
    .line 2555
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 2556
    .line 2557
    .line 2558
    move-result v1

    .line 2559
    if-nez v1, :cond_9d

    .line 2560
    .line 2561
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2562
    .line 2563
    .line 2564
    :cond_9d
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2565
    .line 2566
    .line 2567
    return v26

    .line 2568
    :pswitch_1a
    const/4 v1, 0x0

    .line 2569
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2570
    .line 2571
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2572
    .line 2573
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2574
    .line 2575
    .line 2576
    move-result v3

    .line 2577
    add-int/lit8 v3, v3, -0x1

    .line 2578
    .line 2579
    :goto_21
    if-lez v3, :cond_a0

    .line 2580
    .line 2581
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v4

    .line 2585
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 2586
    .line 2587
    invoke-virtual {v4, v15}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 2588
    .line 2589
    .line 2590
    move-result v6

    .line 2591
    if-eqz v6, :cond_9e

    .line 2592
    .line 2593
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2594
    .line 2595
    .line 2596
    goto :goto_22

    .line 2597
    :cond_9e
    invoke-static {v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 2598
    .line 2599
    .line 2600
    move-result v6

    .line 2601
    if-eqz v6, :cond_9f

    .line 2602
    .line 2603
    iget-object v4, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2604
    .line 2605
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2606
    .line 2607
    invoke-static {v4, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2608
    .line 2609
    .line 2610
    move-result v4

    .line 2611
    if-nez v4, :cond_9f

    .line 2612
    .line 2613
    goto :goto_22

    .line 2614
    :cond_9f
    add-int/lit8 v3, v3, -0x1

    .line 2615
    .line 2616
    goto :goto_21

    .line 2617
    :cond_a0
    :goto_22
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2618
    .line 2619
    .line 2620
    move-result v1

    .line 2621
    if-eqz v1, :cond_a1

    .line 2622
    .line 2623
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2624
    .line 2625
    .line 2626
    :cond_a1
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2627
    .line 2628
    .line 2629
    const/16 v26, 0x1

    .line 2630
    .line 2631
    return v26

    .line 2632
    :pswitch_1b
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2633
    .line 2634
    .line 2635
    move-result v1

    .line 2636
    if-eqz v1, :cond_a2

    .line 2637
    .line 2638
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2639
    .line 2640
    .line 2641
    :cond_a2
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2642
    .line 2643
    .line 2644
    const/4 v1, 0x0

    .line 2645
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2646
    .line 2647
    return v26

    .line 2648
    :pswitch_1c
    move-object/from16 v3, p0

    .line 2649
    .line 2650
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2651
    .line 2652
    .line 2653
    move-result v1

    .line 2654
    if-eqz v1, :cond_a3

    .line 2655
    .line 2656
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2657
    .line 2658
    .line 2659
    :cond_a3
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 2660
    .line 2661
    .line 2662
    move-result-object v1

    .line 2663
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2664
    .line 2665
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2666
    .line 2667
    move-object/from16 v7, v21

    .line 2668
    .line 2669
    invoke-static {v1, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2670
    .line 2671
    .line 2672
    move-result v1

    .line 2673
    if-eqz v1, :cond_a4

    .line 2674
    .line 2675
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2676
    .line 2677
    .line 2678
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 2679
    .line 2680
    .line 2681
    :cond_a4
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2682
    .line 2683
    .line 2684
    const/16 v26, 0x1

    .line 2685
    .line 2686
    return v26

    .line 2687
    :pswitch_1d
    const/4 v1, 0x0

    .line 2688
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2689
    .line 2690
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 2691
    .line 2692
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2693
    .line 2694
    .line 2695
    move-result v3

    .line 2696
    add-int/lit8 v4, v3, -0x1

    .line 2697
    .line 2698
    const/16 v6, 0x18

    .line 2699
    .line 2700
    if-lt v4, v6, :cond_a5

    .line 2701
    .line 2702
    add-int/lit8 v3, v3, -0x19

    .line 2703
    .line 2704
    goto :goto_23

    .line 2705
    :cond_a5
    const/4 v3, 0x0

    .line 2706
    :goto_23
    if-lt v4, v3, :cond_a8

    .line 2707
    .line 2708
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2709
    .line 2710
    .line 2711
    move-result-object v6

    .line 2712
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 2713
    .line 2714
    iget-object v8, v6, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 2715
    .line 2716
    iget-object v9, v8, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2717
    .line 2718
    iget-object v8, v8, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 2719
    .line 2720
    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 2721
    .line 2722
    invoke-static {v9, v10}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2723
    .line 2724
    .line 2725
    move-result v9

    .line 2726
    if-eqz v9, :cond_a6

    .line 2727
    .line 2728
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2729
    .line 2730
    .line 2731
    goto :goto_24

    .line 2732
    :cond_a6
    invoke-static {v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 2733
    .line 2734
    .line 2735
    move-result v6

    .line 2736
    if-eqz v6, :cond_a7

    .line 2737
    .line 2738
    invoke-static {v8, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2739
    .line 2740
    .line 2741
    move-result v6

    .line 2742
    if-nez v6, :cond_a7

    .line 2743
    .line 2744
    goto :goto_24

    .line 2745
    :cond_a7
    add-int/lit8 v4, v4, -0x1

    .line 2746
    .line 2747
    goto :goto_23

    .line 2748
    :cond_a8
    :goto_24
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 2749
    .line 2750
    .line 2751
    move-result v1

    .line 2752
    if-eqz v1, :cond_a9

    .line 2753
    .line 2754
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2755
    .line 2756
    .line 2757
    :cond_a9
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2758
    .line 2759
    .line 2760
    const/16 v26, 0x1

    .line 2761
    .line 2762
    return v26

    .line 2763
    :pswitch_1e
    const/4 v15, 0x0

    .line 2764
    move-object/from16 v3, p0

    .line 2765
    .line 2766
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2767
    .line 2768
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2769
    .line 2770
    .line 2771
    move-result v1

    .line 2772
    add-int/lit8 v1, v1, -0x1

    .line 2773
    .line 2774
    :goto_25
    const-string v4, "a"

    .line 2775
    .line 2776
    if-ltz v1, :cond_ac

    .line 2777
    .line 2778
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2779
    .line 2780
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2781
    .line 2782
    .line 2783
    move-result-object v5

    .line 2784
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 2785
    .line 2786
    if-nez v5, :cond_aa

    .line 2787
    .line 2788
    goto :goto_26

    .line 2789
    :cond_aa
    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 2790
    .line 2791
    .line 2792
    move-result v6

    .line 2793
    if-eqz v6, :cond_ab

    .line 2794
    .line 2795
    move-object v7, v5

    .line 2796
    goto :goto_27

    .line 2797
    :cond_ab
    add-int/lit8 v1, v1, -0x1

    .line 2798
    .line 2799
    goto :goto_25

    .line 2800
    :cond_ac
    :goto_26
    move-object v7, v15

    .line 2801
    :goto_27
    if-eqz v7, :cond_ad

    .line 2802
    .line 2803
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2804
    .line 2805
    .line 2806
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2807
    .line 2808
    .line 2809
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2810
    .line 2811
    .line 2812
    move-result-object v1

    .line 2813
    if-eqz v1, :cond_ad

    .line 2814
    .line 2815
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 2816
    .line 2817
    .line 2818
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 2819
    .line 2820
    .line 2821
    :cond_ad
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2822
    .line 2823
    .line 2824
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2825
    .line 2826
    .line 2827
    move-result-object v0

    .line 2828
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 2829
    .line 2830
    .line 2831
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2832
    .line 2833
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2834
    .line 2835
    .line 2836
    const/16 v26, 0x1

    .line 2837
    .line 2838
    return v26

    .line 2839
    :pswitch_1f
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2840
    .line 2841
    .line 2842
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2843
    .line 2844
    .line 2845
    move-result-object v0

    .line 2846
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 2847
    .line 2848
    .line 2849
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 2850
    .line 2851
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2852
    .line 2853
    .line 2854
    return v26

    .line 2855
    :pswitch_20
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2856
    .line 2857
    .line 2858
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2859
    .line 2860
    .line 2861
    const/4 v1, 0x0

    .line 2862
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2863
    .line 2864
    iget-boolean v0, v0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 2865
    .line 2866
    if-eqz v0, :cond_af

    .line 2867
    .line 2868
    :cond_ae
    const/4 v1, 0x1

    .line 2869
    goto :goto_29

    .line 2870
    :cond_af
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2871
    .line 2872
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2873
    .line 2874
    .line 2875
    move-result v1

    .line 2876
    if-nez v1, :cond_b0

    .line 2877
    .line 2878
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 2879
    .line 2880
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2881
    .line 2882
    .line 2883
    move-result v1

    .line 2884
    if-nez v1, :cond_b0

    .line 2885
    .line 2886
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 2887
    .line 2888
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2889
    .line 2890
    .line 2891
    move-result v1

    .line 2892
    if-nez v1, :cond_b0

    .line 2893
    .line 2894
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 2895
    .line 2896
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2897
    .line 2898
    .line 2899
    move-result v1

    .line 2900
    if-nez v1, :cond_b0

    .line 2901
    .line 2902
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 2903
    .line 2904
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2905
    .line 2906
    .line 2907
    move-result v0

    .line 2908
    if-eqz v0, :cond_b1

    .line 2909
    .line 2910
    :cond_b0
    const/16 v26, 0x1

    .line 2911
    .line 2912
    goto :goto_28

    .line 2913
    :cond_b1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 2914
    .line 2915
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2916
    .line 2917
    const/16 v26, 0x1

    .line 2918
    .line 2919
    return v26

    .line 2920
    :goto_28
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    .line 2921
    .line 2922
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2923
    .line 2924
    return v26

    .line 2925
    :pswitch_21
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2926
    .line 2927
    .line 2928
    iget-boolean v0, v0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 2929
    .line 2930
    if-nez v0, :cond_ae

    .line 2931
    .line 2932
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 2933
    .line 2934
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState$3;

    .line 2935
    .line 2936
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 2937
    .line 2938
    .line 2939
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2940
    .line 2941
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->originalState:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2942
    .line 2943
    const/4 v1, 0x0

    .line 2944
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2945
    .line 2946
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 2947
    .line 2948
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2949
    .line 2950
    const/4 v1, 0x1

    .line 2951
    :goto_29
    return v1

    .line 2952
    :pswitch_22
    move/from16 v1, v26

    .line 2953
    .line 2954
    const-string v3, "option"

    .line 2955
    .line 2956
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 2957
    .line 2958
    .line 2959
    move-result v4

    .line 2960
    if-eqz v4, :cond_b2

    .line 2961
    .line 2962
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 2963
    .line 2964
    .line 2965
    :cond_b2
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2966
    .line 2967
    .line 2968
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2969
    .line 2970
    .line 2971
    return v1

    .line 2972
    :pswitch_23
    move/from16 v1, v26

    .line 2973
    .line 2974
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 2975
    .line 2976
    .line 2977
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 2978
    .line 2979
    .line 2980
    const/4 v3, 0x0

    .line 2981
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2982
    .line 2983
    return v1

    .line 2984
    :pswitch_24
    move/from16 v1, v26

    .line 2985
    .line 2986
    const/4 v3, 0x0

    .line 2987
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 2988
    .line 2989
    invoke-static {v0, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 2990
    .line 2991
    .line 2992
    return v1

    .line 2993
    :pswitch_25
    move-object/from16 v3, p0

    .line 2994
    .line 2995
    move/from16 v1, v26

    .line 2996
    .line 2997
    const-string v4, "button"

    .line 2998
    .line 2999
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    .line 3000
    .line 3001
    .line 3002
    move-result v5

    .line 3003
    if-eqz v5, :cond_b3

    .line 3004
    .line 3005
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 3006
    .line 3007
    .line 3008
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 3009
    .line 3010
    .line 3011
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 3012
    .line 3013
    .line 3014
    return v1

    .line 3015
    :cond_b3
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 3016
    .line 3017
    .line 3018
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3019
    .line 3020
    .line 3021
    const/4 v3, 0x0

    .line 3022
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3023
    .line 3024
    return v1

    .line 3025
    :pswitch_26
    move-object/from16 v3, p0

    .line 3026
    .line 3027
    move/from16 v1, v26

    .line 3028
    .line 3029
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 3030
    .line 3031
    .line 3032
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 3033
    .line 3034
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 3035
    .line 3036
    .line 3037
    move-result v5

    .line 3038
    if-eq v5, v1, :cond_92

    .line 3039
    .line 3040
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 3041
    .line 3042
    .line 3043
    move-result v5

    .line 3044
    const/4 v14, 0x2

    .line 3045
    if-le v5, v14, :cond_b4

    .line 3046
    .line 3047
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3048
    .line 3049
    .line 3050
    move-result-object v5

    .line 3051
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 3052
    .line 3053
    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 3054
    .line 3055
    .line 3056
    move-result v4

    .line 3057
    if-nez v4, :cond_b4

    .line 3058
    .line 3059
    goto/16 :goto_20

    .line 3060
    .line 3061
    :cond_b4
    iget-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 3062
    .line 3063
    if-nez v4, :cond_b5

    .line 3064
    .line 3065
    goto/16 :goto_20

    .line 3066
    .line 3067
    :cond_b5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3068
    .line 3069
    .line 3070
    move-result-object v4

    .line 3071
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 3072
    .line 3073
    iget-object v5, v4, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 3074
    .line 3075
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 3076
    .line 3077
    if-eqz v5, :cond_b6

    .line 3078
    .line 3079
    invoke-virtual {v4}, Lorg/jsoup/nodes/Node;->remove()V

    .line 3080
    .line 3081
    .line 3082
    :cond_b6
    :goto_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 3083
    .line 3084
    .line 3085
    move-result v4

    .line 3086
    if-le v4, v1, :cond_b7

    .line 3087
    .line 3088
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 3089
    .line 3090
    .line 3091
    move-result v4

    .line 3092
    sub-int/2addr v4, v1

    .line 3093
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3094
    .line 3095
    .line 3096
    goto :goto_2a

    .line 3097
    :cond_b7
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 3098
    .line 3099
    .line 3100
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    .line 3101
    .line 3102
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3103
    .line 3104
    return v1

    .line 3105
    :goto_2b
    return v18

    .line 3106
    :cond_b8
    move-object v3, v0

    .line 3107
    const/16 v18, 0x0

    .line 3108
    .line 3109
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 3110
    .line 3111
    .line 3112
    return v18

    .line 3113
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

    .line 3114
    .line 3115
    .line 3116
    .line 3117
    .line 3118
    .line 3119
    .line 3120
    .line 3121
    .line 3122
    .line 3123
    .line 3124
    .line 3125
    .line 3126
    .line 3127
    .line 3128
    .line 3129
    .line 3130
    .line 3131
    .line 3132
    .line 3133
    .line 3134
    .line 3135
    .line 3136
    .line 3137
    .line 3138
    .line 3139
    .line 3140
    .line 3141
    .line 3142
    .line 3143
    .line 3144
    .line 3145
    .line 3146
    .line 3147
    .line 3148
    .line 3149
    .line 3150
    .line 3151
    .line 3152
    .line 3153
    .line 3154
    .line 3155
    .line 3156
    .line 3157
    .line 3158
    .line 3159
    .line 3160
    .line 3161
    .line 3162
    .line 3163
    .line 3164
    .line 3165
    .line 3166
    .line 3167
    .line 3168
    .line 3169
    .line 3170
    .line 3171
    .line 3172
    .line 3173
    .line 3174
    .line 3175
    .line 3176
    .line 3177
    .line 3178
    .line 3179
    .line 3180
    .line 3181
    .line 3182
    .line 3183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3184
    .line 3185
    .line 3186
    .line 3187
    .line 3188
    .line 3189
    .line 3190
    .line 3191
    .line 3192
    .line 3193
    .line 3194
    .line 3195
    .line 3196
    .line 3197
    .line 3198
    .line 3199
    .line 3200
    .line 3201
    .line 3202
    .line 3203
    .line 3204
    .line 3205
    .line 3206
    .line 3207
    .line 3208
    .line 3209
    .line 3210
    .line 3211
    .line 3212
    .line 3213
    .line 3214
    .line 3215
    .line 3216
    .line 3217
    .line 3218
    .line 3219
    .line 3220
    .line 3221
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

    .line 3222
    .line 3223
    .line 3224
    .line 3225
    .line 3226
    .line 3227
    .line 3228
    .line 3229
    .line 3230
    .line 3231
    .line 3232
    .line 3233
    .line 3234
    .line 3235
    .line 3236
    .line 3237
    .line 3238
    .line 3239
    .line 3240
    .line 3241
    .line 3242
    .line 3243
    .line 3244
    .line 3245
    .line 3246
    .line 3247
    .line 3248
    .line 3249
    .line 3250
    .line 3251
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_23
        :pswitch_15
        :pswitch_23
        :pswitch_14
        :pswitch_1f
        :pswitch_1f
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_23
        :pswitch_e
        :pswitch_d
        :pswitch_1f
        :pswitch_c
        :pswitch_17
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
