.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 14

    .line 1
    iget p0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/16 v5, 0xa

    .line 13
    .line 14
    sget-object v6, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sget v8, Landroidx/compose/foundation/text/BasicTextKt;->AltShift:I

    .line 25
    .line 26
    const/16 v8, 0x9

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    if-ne p0, v8, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v10

    .line 39
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 40
    .line 41
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_0
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 52
    .line 53
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 63
    .line 64
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 74
    .line 75
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move-object p0, v7

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    if-ne p0, v9, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 97
    .line 98
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 108
    .line 109
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 119
    .line 120
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_7

    .line 125
    .line 126
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_7
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 130
    .line 131
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_8

    .line 136
    .line 137
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->END:Landroidx/compose/foundation/text/KeyCommand;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->Backspace:J

    .line 141
    .line 142
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_3

    .line 147
    .line 148
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 149
    .line 150
    :goto_0
    if-nez p0, :cond_2d

    .line 151
    .line 152
    sget-object p0, Landroidx/compose/foundation/text/BasicTextKt;->defaultKeyMapping:Landroidx/camera/view/PreviewView$1;

    .line 153
    .line 154
    sget v8, Landroidx/compose/foundation/text/BasicTextKt;->CtrlShift:I

    .line 155
    .line 156
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    invoke-static {v10}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->Backspace:J

    .line 169
    .line 170
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-eqz v12, :cond_e

    .line 175
    .line 176
    if-nez v8, :cond_9

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_9
    if-ne v8, v3, :cond_a

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_a
    sget v2, Landroidx/compose/foundation/text/BasicTextKt;->ShiftMeta:I

    .line 183
    .line 184
    const/16 v2, 0xc

    .line 185
    .line 186
    if-ne v8, v2, :cond_b

    .line 187
    .line 188
    :goto_1
    move-object v2, v6

    .line 189
    goto :goto_3

    .line 190
    :cond_b
    if-ne v8, v4, :cond_c

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_c
    if-ne v8, v5, :cond_d

    .line 194
    .line 195
    :goto_2
    sget-object v2, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_d
    move-object v2, v7

    .line 199
    goto :goto_3

    .line 200
    :cond_e
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->Enter:J

    .line 201
    .line 202
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    if-nez v12, :cond_f

    .line 207
    .line 208
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->NumPadEnter:J

    .line 209
    .line 210
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-eqz v10, :cond_d

    .line 215
    .line 216
    :cond_f
    if-nez v8, :cond_10

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_10
    if-ne v8, v3, :cond_11

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_11
    if-ne v8, v4, :cond_12

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_12
    if-ne v8, v5, :cond_d

    .line 226
    .line 227
    :goto_3
    if-eqz v2, :cond_13

    .line 228
    .line 229
    move-object p0, v2

    .line 230
    goto/16 :goto_d

    .line 231
    .line 232
    :cond_13
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-ne v2, v5, :cond_1c

    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 243
    .line 244
    .line 245
    move-result-wide v0

    .line 246
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 247
    .line 248
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-nez v2, :cond_1b

    .line 253
    .line 254
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 255
    .line 256
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_14

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_14
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 264
    .line 265
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_1a

    .line 270
    .line 271
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 272
    .line 273
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_15

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_15
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 281
    .line 282
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-nez v2, :cond_19

    .line 287
    .line 288
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 289
    .line 290
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_16

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_16
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 298
    .line 299
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-nez v2, :cond_18

    .line 304
    .line 305
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 306
    .line 307
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_17

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_17
    move-object v0, v7

    .line 315
    goto/16 :goto_c

    .line 316
    .line 317
    :cond_18
    :goto_4
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 318
    .line 319
    goto/16 :goto_c

    .line 320
    .line 321
    :cond_19
    :goto_5
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 322
    .line 323
    goto/16 :goto_c

    .line 324
    .line 325
    :cond_1a
    :goto_6
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 326
    .line 327
    goto/16 :goto_c

    .line 328
    .line 329
    :cond_1b
    :goto_7
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 330
    .line 331
    goto/16 :goto_c

    .line 332
    .line 333
    :cond_1c
    if-ne v2, v4, :cond_27

    .line 334
    .line 335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 340
    .line 341
    .line 342
    move-result-wide v0

    .line 343
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 344
    .line 345
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-nez v2, :cond_26

    .line 350
    .line 351
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 352
    .line 353
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_1d

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_1d
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 361
    .line 362
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-nez v2, :cond_25

    .line 367
    .line 368
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 369
    .line 370
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_1e

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_1e
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 378
    .line 379
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-nez v2, :cond_24

    .line 384
    .line 385
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 386
    .line 387
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_1f

    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_1f
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 395
    .line 396
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-nez v2, :cond_23

    .line 401
    .line 402
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 403
    .line 404
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-eqz v2, :cond_20

    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_20
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->H:J

    .line 412
    .line 413
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_21

    .line 418
    .line 419
    move-object v0, v6

    .line 420
    goto/16 :goto_c

    .line 421
    .line 422
    :cond_21
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->Delete:J

    .line 423
    .line 424
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_22

    .line 429
    .line 430
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 431
    .line 432
    goto :goto_c

    .line 433
    :cond_22
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->Backslash:J

    .line 434
    .line 435
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_17

    .line 440
    .line 441
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_23
    :goto_8
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_24
    :goto_9
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_25
    :goto_a
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 451
    .line 452
    goto :goto_c

    .line 453
    :cond_26
    :goto_b
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 454
    .line 455
    goto :goto_c

    .line 456
    :cond_27
    if-ne v2, v3, :cond_2a

    .line 457
    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    invoke-static {v2}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 463
    .line 464
    .line 465
    move-result-wide v2

    .line 466
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->MoveHome:J

    .line 467
    .line 468
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    if-nez v4, :cond_2b

    .line 473
    .line 474
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadMoveHome:J

    .line 475
    .line 476
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    if-eqz v4, :cond_28

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_28
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->MoveEnd:J

    .line 484
    .line 485
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-nez v0, :cond_29

    .line 490
    .line 491
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadMoveEnd:J

    .line 492
    .line 493
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_17

    .line 498
    .line 499
    :cond_29
    move-object v0, v1

    .line 500
    goto :goto_c

    .line 501
    :cond_2a
    if-ne v2, v9, :cond_17

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 508
    .line 509
    .line 510
    move-result-wide v0

    .line 511
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->Delete:J

    .line 512
    .line 513
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_17

    .line 518
    .line 519
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 520
    .line 521
    :cond_2b
    :goto_c
    if-nez v0, :cond_2c

    .line 522
    .line 523
    iget-object p0, p0, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 526
    .line 527
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    goto :goto_d

    .line 532
    :cond_2c
    move-object p0, v0

    .line 533
    :cond_2d
    :goto_d
    return-object p0

    .line 534
    :pswitch_0
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 535
    .line 536
    .line 537
    move-result p0

    .line 538
    sget-object v8, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 539
    .line 540
    if-ne p0, v5, :cond_2e

    .line 541
    .line 542
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 543
    .line 544
    .line 545
    move-result p0

    .line 546
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 547
    .line 548
    .line 549
    move-result-wide p0

    .line 550
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Z:J

    .line 551
    .line 552
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 553
    .line 554
    .line 555
    move-result p0

    .line 556
    if-eqz p0, :cond_5f

    .line 557
    .line 558
    :goto_e
    move-object v0, v8

    .line 559
    goto/16 :goto_22

    .line 560
    .line 561
    :cond_2e
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 562
    .line 563
    sget-object v9, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 564
    .line 565
    sget-object v10, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 566
    .line 567
    if-ne p0, v4, :cond_36

    .line 568
    .line 569
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 570
    .line 571
    .line 572
    move-result p0

    .line 573
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 574
    .line 575
    .line 576
    move-result-wide p0

    .line 577
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->C:J

    .line 578
    .line 579
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-nez v0, :cond_35

    .line 584
    .line 585
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Insert:J

    .line 586
    .line 587
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-nez v0, :cond_35

    .line 592
    .line 593
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadInsert:J

    .line 594
    .line 595
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-eqz v0, :cond_2f

    .line 600
    .line 601
    goto :goto_11

    .line 602
    :cond_2f
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->V:J

    .line 603
    .line 604
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-eqz v0, :cond_31

    .line 609
    .line 610
    :cond_30
    :goto_f
    move-object v0, v10

    .line 611
    goto/16 :goto_22

    .line 612
    .line 613
    :cond_31
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->X:J

    .line 614
    .line 615
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    if-eqz v0, :cond_32

    .line 620
    .line 621
    :goto_10
    move-object v0, v9

    .line 622
    goto/16 :goto_22

    .line 623
    .line 624
    :cond_32
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->A:J

    .line 625
    .line 626
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    if-eqz v0, :cond_33

    .line 631
    .line 632
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    .line 633
    .line 634
    goto/16 :goto_22

    .line 635
    .line 636
    :cond_33
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Y:J

    .line 637
    .line 638
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-eqz v0, :cond_34

    .line 643
    .line 644
    goto :goto_e

    .line 645
    :cond_34
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Z:J

    .line 646
    .line 647
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 648
    .line 649
    .line 650
    move-result p0

    .line 651
    if-eqz p0, :cond_5f

    .line 652
    .line 653
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 654
    .line 655
    goto/16 :goto_22

    .line 656
    .line 657
    :cond_35
    :goto_11
    move-object v0, v5

    .line 658
    goto/16 :goto_22

    .line 659
    .line 660
    :cond_36
    if-ne p0, v3, :cond_46

    .line 661
    .line 662
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 663
    .line 664
    .line 665
    move-result p0

    .line 666
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 667
    .line 668
    .line 669
    move-result-wide p0

    .line 670
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 671
    .line 672
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    if-nez v2, :cond_45

    .line 677
    .line 678
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 679
    .line 680
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    if-eqz v2, :cond_37

    .line 685
    .line 686
    goto/16 :goto_18

    .line 687
    .line 688
    :cond_37
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 689
    .line 690
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 691
    .line 692
    .line 693
    move-result v2

    .line 694
    if-nez v2, :cond_44

    .line 695
    .line 696
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 697
    .line 698
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 699
    .line 700
    .line 701
    move-result v2

    .line 702
    if-eqz v2, :cond_38

    .line 703
    .line 704
    goto/16 :goto_17

    .line 705
    .line 706
    :cond_38
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 707
    .line 708
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 709
    .line 710
    .line 711
    move-result v2

    .line 712
    if-nez v2, :cond_43

    .line 713
    .line 714
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 715
    .line 716
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    if-eqz v2, :cond_39

    .line 721
    .line 722
    goto/16 :goto_16

    .line 723
    .line 724
    :cond_39
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 725
    .line 726
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    if-nez v2, :cond_42

    .line 731
    .line 732
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 733
    .line 734
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    if-eqz v2, :cond_3a

    .line 739
    .line 740
    goto :goto_15

    .line 741
    :cond_3a
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->PageUp:J

    .line 742
    .line 743
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    if-nez v2, :cond_41

    .line 748
    .line 749
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadPageUp:J

    .line 750
    .line 751
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    if-eqz v2, :cond_3b

    .line 756
    .line 757
    goto :goto_14

    .line 758
    :cond_3b
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->PageDown:J

    .line 759
    .line 760
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    if-nez v2, :cond_40

    .line 765
    .line 766
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadPageDown:J

    .line 767
    .line 768
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 769
    .line 770
    .line 771
    move-result v2

    .line 772
    if-eqz v2, :cond_3c

    .line 773
    .line 774
    goto :goto_13

    .line 775
    :cond_3c
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->MoveHome:J

    .line 776
    .line 777
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    if-nez v2, :cond_60

    .line 782
    .line 783
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadMoveHome:J

    .line 784
    .line 785
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    if-eqz v2, :cond_3d

    .line 790
    .line 791
    goto/16 :goto_22

    .line 792
    .line 793
    :cond_3d
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->MoveEnd:J

    .line 794
    .line 795
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    if-nez v0, :cond_3f

    .line 800
    .line 801
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->NumPadMoveEnd:J

    .line 802
    .line 803
    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    if-eqz v0, :cond_3e

    .line 808
    .line 809
    goto :goto_12

    .line 810
    :cond_3e
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Insert:J

    .line 811
    .line 812
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 813
    .line 814
    .line 815
    move-result v0

    .line 816
    if-nez v0, :cond_30

    .line 817
    .line 818
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadInsert:J

    .line 819
    .line 820
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 821
    .line 822
    .line 823
    move-result p0

    .line 824
    if-eqz p0, :cond_5f

    .line 825
    .line 826
    goto/16 :goto_f

    .line 827
    .line 828
    :cond_3f
    :goto_12
    move-object v0, v1

    .line 829
    goto/16 :goto_22

    .line 830
    .line 831
    :cond_40
    :goto_13
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 832
    .line 833
    goto/16 :goto_22

    .line 834
    .line 835
    :cond_41
    :goto_14
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 836
    .line 837
    goto/16 :goto_22

    .line 838
    .line 839
    :cond_42
    :goto_15
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 840
    .line 841
    goto/16 :goto_22

    .line 842
    .line 843
    :cond_43
    :goto_16
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 844
    .line 845
    goto/16 :goto_22

    .line 846
    .line 847
    :cond_44
    :goto_17
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 848
    .line 849
    goto/16 :goto_22

    .line 850
    .line 851
    :cond_45
    :goto_18
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 852
    .line 853
    goto/16 :goto_22

    .line 854
    .line 855
    :cond_46
    if-nez p0, :cond_5f

    .line 856
    .line 857
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 858
    .line 859
    .line 860
    move-result p0

    .line 861
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 862
    .line 863
    .line 864
    move-result-wide p0

    .line 865
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 866
    .line 867
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    if-nez v0, :cond_5e

    .line 872
    .line 873
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 874
    .line 875
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    if-eqz v0, :cond_47

    .line 880
    .line 881
    goto/16 :goto_21

    .line 882
    .line 883
    :cond_47
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 884
    .line 885
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-nez v0, :cond_5d

    .line 890
    .line 891
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 892
    .line 893
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    if-eqz v0, :cond_48

    .line 898
    .line 899
    goto/16 :goto_20

    .line 900
    .line 901
    :cond_48
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 902
    .line 903
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-nez v0, :cond_5c

    .line 908
    .line 909
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 910
    .line 911
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    if-eqz v0, :cond_49

    .line 916
    .line 917
    goto/16 :goto_1f

    .line 918
    .line 919
    :cond_49
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 920
    .line 921
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    if-nez v0, :cond_5b

    .line 926
    .line 927
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 928
    .line 929
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    if-eqz v0, :cond_4a

    .line 934
    .line 935
    goto/16 :goto_1e

    .line 936
    .line 937
    :cond_4a
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionCenter:J

    .line 938
    .line 939
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_4b

    .line 944
    .line 945
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->CENTER:Landroidx/compose/foundation/text/KeyCommand;

    .line 946
    .line 947
    goto/16 :goto_22

    .line 948
    .line 949
    :cond_4b
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->PageUp:J

    .line 950
    .line 951
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 952
    .line 953
    .line 954
    move-result v0

    .line 955
    if-nez v0, :cond_5a

    .line 956
    .line 957
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadPageUp:J

    .line 958
    .line 959
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    if-eqz v0, :cond_4c

    .line 964
    .line 965
    goto/16 :goto_1d

    .line 966
    .line 967
    :cond_4c
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->PageDown:J

    .line 968
    .line 969
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 970
    .line 971
    .line 972
    move-result v0

    .line 973
    if-nez v0, :cond_59

    .line 974
    .line 975
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadPageDown:J

    .line 976
    .line 977
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 978
    .line 979
    .line 980
    move-result v0

    .line 981
    if-eqz v0, :cond_4d

    .line 982
    .line 983
    goto/16 :goto_1c

    .line 984
    .line 985
    :cond_4d
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->MoveHome:J

    .line 986
    .line 987
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    if-nez v0, :cond_58

    .line 992
    .line 993
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadMoveHome:J

    .line 994
    .line 995
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 996
    .line 997
    .line 998
    move-result v0

    .line 999
    if-eqz v0, :cond_4e

    .line 1000
    .line 1001
    goto/16 :goto_1b

    .line 1002
    .line 1003
    :cond_4e
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->MoveEnd:J

    .line 1004
    .line 1005
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v0

    .line 1009
    if-nez v0, :cond_57

    .line 1010
    .line 1011
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadMoveEnd:J

    .line 1012
    .line 1013
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    if-eqz v0, :cond_4f

    .line 1018
    .line 1019
    goto :goto_1a

    .line 1020
    :cond_4f
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Enter:J

    .line 1021
    .line 1022
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    if-nez v0, :cond_56

    .line 1027
    .line 1028
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadEnter:J

    .line 1029
    .line 1030
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    if-eqz v0, :cond_50

    .line 1035
    .line 1036
    goto :goto_19

    .line 1037
    :cond_50
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Backspace:J

    .line 1038
    .line 1039
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-eqz v0, :cond_51

    .line 1044
    .line 1045
    move-object v0, v6

    .line 1046
    goto :goto_22

    .line 1047
    :cond_51
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Delete:J

    .line 1048
    .line 1049
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    if-eqz v0, :cond_52

    .line 1054
    .line 1055
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 1056
    .line 1057
    goto :goto_22

    .line 1058
    :cond_52
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Paste:J

    .line 1059
    .line 1060
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v0

    .line 1064
    if-eqz v0, :cond_53

    .line 1065
    .line 1066
    goto/16 :goto_f

    .line 1067
    .line 1068
    :cond_53
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Cut:J

    .line 1069
    .line 1070
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v0

    .line 1074
    if-eqz v0, :cond_54

    .line 1075
    .line 1076
    goto/16 :goto_10

    .line 1077
    .line 1078
    :cond_54
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Copy:J

    .line 1079
    .line 1080
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v0

    .line 1084
    if-eqz v0, :cond_55

    .line 1085
    .line 1086
    goto/16 :goto_11

    .line 1087
    .line 1088
    :cond_55
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Tab:J

    .line 1089
    .line 1090
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1091
    .line 1092
    .line 1093
    move-result p0

    .line 1094
    if-eqz p0, :cond_5f

    .line 1095
    .line 1096
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    .line 1097
    .line 1098
    goto :goto_22

    .line 1099
    :cond_56
    :goto_19
    move-object v0, v2

    .line 1100
    goto :goto_22

    .line 1101
    :cond_57
    :goto_1a
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 1102
    .line 1103
    goto :goto_22

    .line 1104
    :cond_58
    :goto_1b
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 1105
    .line 1106
    goto :goto_22

    .line 1107
    :cond_59
    :goto_1c
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 1108
    .line 1109
    goto :goto_22

    .line 1110
    :cond_5a
    :goto_1d
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 1111
    .line 1112
    goto :goto_22

    .line 1113
    :cond_5b
    :goto_1e
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 1114
    .line 1115
    goto :goto_22

    .line 1116
    :cond_5c
    :goto_1f
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 1117
    .line 1118
    goto :goto_22

    .line 1119
    :cond_5d
    :goto_20
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 1120
    .line 1121
    goto :goto_22

    .line 1122
    :cond_5e
    :goto_21
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 1123
    .line 1124
    goto :goto_22

    .line 1125
    :cond_5f
    move-object v0, v7

    .line 1126
    :cond_60
    :goto_22
    return-object v0

    .line 1127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
