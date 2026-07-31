.class public final synthetic Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

.field public final synthetic f$1:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const v3, 0x7e000

    .line 8
    .line 9
    .line 10
    const/16 v4, 0x92

    .line 11
    .line 12
    const/16 v5, 0x10

    .line 13
    .line 14
    const/16 v6, 0x20

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    const/4 v8, 0x4

    .line 18
    const/4 v9, 0x1

    .line 19
    const/4 v10, 0x0

    .line 20
    iget-object v11, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 21
    .line 22
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 30
    .line 31
    move-object/from16 v12, p2

    .line 32
    .line 33
    check-cast v12, Lkotlinx/collections/immutable/PersistentMap;

    .line 34
    .line 35
    move-object/from16 v13, p3

    .line 36
    .line 37
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    move-object/from16 v14, p4

    .line 40
    .line 41
    check-cast v14, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    and-int/lit8 v15, v14, 0x6

    .line 51
    .line 52
    if-nez v15, :cond_1

    .line 53
    .line 54
    move-object v15, v13

    .line 55
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v15

    .line 61
    if-eqz v15, :cond_0

    .line 62
    .line 63
    move v7, v8

    .line 64
    :cond_0
    or-int/2addr v7, v14

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v7, v14

    .line 67
    :goto_0
    and-int/lit8 v8, v14, 0x30

    .line 68
    .line 69
    if-nez v8, :cond_3

    .line 70
    .line 71
    move-object v8, v13

    .line 72
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 73
    .line 74
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    move v5, v6

    .line 81
    :cond_2
    or-int/2addr v7, v5

    .line 82
    :cond_3
    and-int/lit16 v5, v7, 0x93

    .line 83
    .line 84
    if-eq v5, v4, :cond_4

    .line 85
    .line 86
    move v10, v9

    .line 87
    :cond_4
    and-int/lit8 v4, v7, 0x1

    .line 88
    .line 89
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 90
    .line 91
    invoke-virtual {v13, v4, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    move-object/from16 v17, v12

    .line 98
    .line 99
    iget-object v12, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 100
    .line 101
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 104
    .line 105
    invoke-direct {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v18, Landroidx/compose/ui/text/SpanStyle;

    .line 109
    .line 110
    sget-object v23, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 111
    .line 112
    const/16 v36, 0x0

    .line 113
    .line 114
    const v37, 0xfffb

    .line 115
    .line 116
    .line 117
    const-wide/16 v19, 0x0

    .line 118
    .line 119
    const-wide/16 v21, 0x0

    .line 120
    .line 121
    const/16 v24, 0x0

    .line 122
    .line 123
    const/16 v25, 0x0

    .line 124
    .line 125
    const/16 v26, 0x0

    .line 126
    .line 127
    const/16 v27, 0x0

    .line 128
    .line 129
    const-wide/16 v28, 0x0

    .line 130
    .line 131
    const/16 v30, 0x0

    .line 132
    .line 133
    const/16 v31, 0x0

    .line 134
    .line 135
    const/16 v32, 0x0

    .line 136
    .line 137
    const-wide/16 v33, 0x0

    .line 138
    .line 139
    const/16 v35, 0x0

    .line 140
    .line 141
    invoke-direct/range {v18 .. v37}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v5, v18

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    :try_start_0
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v18, v13

    .line 157
    .line 158
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    iget-boolean v0, v11, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 163
    .line 164
    xor-int/lit8 v14, v0, 0x1

    .line 165
    .line 166
    shl-int/lit8 v0, v7, 0xc

    .line 167
    .line 168
    and-int v19, v0, v3

    .line 169
    .line 170
    const/4 v15, 0x0

    .line 171
    move-object/from16 v16, v1

    .line 172
    .line 173
    invoke-static/range {v12 .. v19}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageItemSenderSubjectSecondLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;I)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_5
    move-object/from16 v18, v13

    .line 183
    .line 184
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 185
    .line 186
    .line 187
    :goto_1
    return-object v2

    .line 188
    :pswitch_0
    move v1, v7

    .line 189
    move-object/from16 v7, p1

    .line 190
    .line 191
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 192
    .line 193
    move v12, v8

    .line 194
    move-object/from16 v8, p2

    .line 195
    .line 196
    check-cast v8, Lkotlinx/collections/immutable/PersistentMap;

    .line 197
    .line 198
    move-object/from16 v13, p3

    .line 199
    .line 200
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 201
    .line 202
    move-object/from16 v14, p4

    .line 203
    .line 204
    check-cast v14, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    and-int/lit8 v15, v14, 0x6

    .line 214
    .line 215
    if-nez v15, :cond_7

    .line 216
    .line 217
    move-object v15, v13

    .line 218
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 219
    .line 220
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v15

    .line 224
    if-eqz v15, :cond_6

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_6
    move v12, v1

    .line 228
    :goto_2
    or-int v1, v14, v12

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_7
    move v1, v14

    .line 232
    :goto_3
    and-int/lit8 v12, v14, 0x30

    .line 233
    .line 234
    if-nez v12, :cond_9

    .line 235
    .line 236
    move-object v12, v13

    .line 237
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 238
    .line 239
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    if-eqz v12, :cond_8

    .line 244
    .line 245
    move v5, v6

    .line 246
    :cond_8
    or-int/2addr v1, v5

    .line 247
    :cond_9
    and-int/lit16 v5, v1, 0x93

    .line 248
    .line 249
    if-eq v5, v4, :cond_a

    .line 250
    .line 251
    move v10, v9

    .line 252
    :cond_a
    and-int/lit8 v4, v1, 0x1

    .line 253
    .line 254
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 255
    .line 256
    invoke-virtual {v13, v4, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_b

    .line 261
    .line 262
    move v14, v3

    .line 263
    iget-object v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 264
    .line 265
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString;

    .line 266
    .line 267
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 268
    .line 269
    invoke-direct {v4, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-boolean v0, v11, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 273
    .line 274
    xor-int/lit8 v5, v0, 0x1

    .line 275
    .line 276
    shl-int/lit8 v0, v1, 0xc

    .line 277
    .line 278
    and-int v10, v0, v14

    .line 279
    .line 280
    const/4 v6, 0x0

    .line 281
    move-object v9, v13

    .line 282
    invoke-static/range {v3 .. v10}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageItemSenderSubjectSecondLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;I)V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_b
    move-object v9, v13

    .line 287
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 288
    .line 289
    .line 290
    :goto_4
    return-object v2

    .line 291
    :pswitch_1
    move v14, v3

    .line 292
    move v1, v7

    .line 293
    move v12, v8

    .line 294
    move-object/from16 v3, p1

    .line 295
    .line 296
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString;

    .line 297
    .line 298
    move-object/from16 v15, p2

    .line 299
    .line 300
    check-cast v15, Lkotlinx/collections/immutable/PersistentMap;

    .line 301
    .line 302
    move-object/from16 v7, p3

    .line 303
    .line 304
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 305
    .line 306
    move-object/from16 v8, p4

    .line 307
    .line 308
    check-cast v8, Ljava/lang/Integer;

    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    and-int/lit8 v13, v8, 0x6

    .line 318
    .line 319
    if-nez v13, :cond_d

    .line 320
    .line 321
    move-object v13, v7

    .line 322
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 323
    .line 324
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v13

    .line 328
    if-eqz v13, :cond_c

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_c
    move v12, v1

    .line 332
    :goto_5
    or-int v1, v8, v12

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_d
    move v1, v8

    .line 336
    :goto_6
    and-int/lit8 v8, v8, 0x30

    .line 337
    .line 338
    if-nez v8, :cond_f

    .line 339
    .line 340
    move-object v8, v7

    .line 341
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 342
    .line 343
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    if-eqz v8, :cond_e

    .line 348
    .line 349
    move v5, v6

    .line 350
    :cond_e
    or-int/2addr v1, v5

    .line 351
    :cond_f
    and-int/lit16 v5, v1, 0x93

    .line 352
    .line 353
    if-eq v5, v4, :cond_10

    .line 354
    .line 355
    move v10, v9

    .line 356
    :cond_10
    and-int/lit8 v4, v1, 0x1

    .line 357
    .line 358
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 359
    .line 360
    invoke-virtual {v7, v4, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    if-eqz v4, :cond_11

    .line 365
    .line 366
    iget-object v10, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 367
    .line 368
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 369
    .line 370
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 371
    .line 372
    invoke-direct {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 373
    .line 374
    .line 375
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 376
    .line 377
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 378
    .line 379
    const/16 v34, 0x0

    .line 380
    .line 381
    const v35, 0xfffb

    .line 382
    .line 383
    .line 384
    const-wide/16 v17, 0x0

    .line 385
    .line 386
    const-wide/16 v19, 0x0

    .line 387
    .line 388
    const/16 v22, 0x0

    .line 389
    .line 390
    const/16 v23, 0x0

    .line 391
    .line 392
    const/16 v24, 0x0

    .line 393
    .line 394
    const/16 v25, 0x0

    .line 395
    .line 396
    const-wide/16 v26, 0x0

    .line 397
    .line 398
    const/16 v28, 0x0

    .line 399
    .line 400
    const/16 v29, 0x0

    .line 401
    .line 402
    const/16 v30, 0x0

    .line 403
    .line 404
    const-wide/16 v31, 0x0

    .line 405
    .line 406
    const/16 v33, 0x0

    .line 407
    .line 408
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v5, v16

    .line 412
    .line 413
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    :try_start_1
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    iget-boolean v4, v11, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 428
    .line 429
    xor-int/lit8 v12, v4, 0x1

    .line 430
    .line 431
    shl-int/lit8 v1, v1, 0xc

    .line 432
    .line 433
    and-int v17, v1, v14

    .line 434
    .line 435
    const/4 v13, 0x0

    .line 436
    move-object v11, v0

    .line 437
    move-object v14, v3

    .line 438
    move-object/from16 v16, v7

    .line 439
    .line 440
    invoke-static/range {v10 .. v17}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageItemSenderSubjectSecondLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;I)V

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :catchall_1
    move-exception v0

    .line 445
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :cond_11
    move-object/from16 v16, v7

    .line 450
    .line 451
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 452
    .line 453
    .line 454
    :goto_7
    return-object v2

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
