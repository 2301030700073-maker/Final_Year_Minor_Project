.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    .locals 10

    .line 1
    iget p0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    sget v4, Landroidx/compose/foundation/text/BasicTextKt;->AltShift:I

    .line 17
    .line 18
    const/16 v4, 0x9

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne p0, v4, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 32
    .line 33
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 44
    .line 45
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 55
    .line 56
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 66
    .line 67
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move-object p0, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    if-ne p0, v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 89
    .line 90
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 100
    .line 101
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_6

    .line 106
    .line 107
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 111
    .line 112
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_7

    .line 117
    .line 118
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_7
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 122
    .line 123
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_8

    .line 128
    .line 129
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->END:Landroidx/compose/foundation/text/KeyCommand;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_8
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->Backspace:J

    .line 133
    .line 134
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_3

    .line 139
    .line 140
    sget-object p0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 141
    .line 142
    :goto_0
    if-nez p0, :cond_2d

    .line 143
    .line 144
    sget-object p0, Landroidx/compose/foundation/text/BasicTextKt;->defaultKeyMapping:Landroidx/appcompat/widget/PopupMenu$1;

    .line 145
    .line 146
    sget v4, Landroidx/compose/foundation/text/BasicTextKt;->CtrlShift:I

    .line 147
    .line 148
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-static {v6}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->Backspace:J

    .line 161
    .line 162
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_e

    .line 167
    .line 168
    if-nez v4, :cond_9

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_9
    if-ne v4, v0, :cond_a

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_a
    sget v6, Landroidx/compose/foundation/text/BasicTextKt;->ShiftMeta:I

    .line 175
    .line 176
    const/16 v6, 0xc

    .line 177
    .line 178
    if-ne v4, v6, :cond_b

    .line 179
    .line 180
    :goto_1
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_b
    if-ne v4, v1, :cond_c

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_c
    if-ne v4, v2, :cond_d

    .line 187
    .line 188
    :goto_2
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_d
    move-object v4, v3

    .line 192
    goto :goto_4

    .line 193
    :cond_e
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->Enter:J

    .line 194
    .line 195
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_f

    .line 200
    .line 201
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->NumPadEnter:J

    .line 202
    .line 203
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_d

    .line 208
    .line 209
    :cond_f
    if-nez v4, :cond_10

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_10
    if-ne v4, v0, :cond_11

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_11
    if-ne v4, v1, :cond_12

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_12
    if-ne v4, v2, :cond_d

    .line 219
    .line 220
    :goto_3
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    .line 221
    .line 222
    :goto_4
    if-eqz v4, :cond_13

    .line 223
    .line 224
    move-object p0, v4

    .line 225
    goto/16 :goto_e

    .line 226
    .line 227
    :cond_13
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-ne v4, v2, :cond_1b

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 242
    .line 243
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_1a

    .line 248
    .line 249
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 250
    .line 251
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_14

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_14
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 259
    .line 260
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_19

    .line 265
    .line 266
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 267
    .line 268
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_15

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_15
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 276
    .line 277
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-nez v2, :cond_18

    .line 282
    .line 283
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 284
    .line 285
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_16

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_16
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 293
    .line 294
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_17

    .line 299
    .line 300
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 301
    .line 302
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_2b

    .line 307
    .line 308
    :cond_17
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 309
    .line 310
    goto/16 :goto_d

    .line 311
    .line 312
    :cond_18
    :goto_5
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 313
    .line 314
    goto/16 :goto_d

    .line 315
    .line 316
    :cond_19
    :goto_6
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 317
    .line 318
    goto/16 :goto_d

    .line 319
    .line 320
    :cond_1a
    :goto_7
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 321
    .line 322
    goto/16 :goto_d

    .line 323
    .line 324
    :cond_1b
    if-ne v4, v1, :cond_26

    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 331
    .line 332
    .line 333
    move-result-wide v0

    .line 334
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 335
    .line 336
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_25

    .line 341
    .line 342
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 343
    .line 344
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_1c

    .line 349
    .line 350
    goto :goto_b

    .line 351
    :cond_1c
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 352
    .line 353
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_24

    .line 358
    .line 359
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 360
    .line 361
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_1d

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :cond_1d
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 369
    .line 370
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-nez v2, :cond_23

    .line 375
    .line 376
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 377
    .line 378
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_1e

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_1e
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 386
    .line 387
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-nez v2, :cond_22

    .line 392
    .line 393
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 394
    .line 395
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_1f

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_1f
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->H:J

    .line 403
    .line 404
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-eqz v2, :cond_20

    .line 409
    .line 410
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 411
    .line 412
    goto/16 :goto_d

    .line 413
    .line 414
    :cond_20
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->Delete:J

    .line 415
    .line 416
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_21

    .line 421
    .line 422
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_21
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->Backslash:J

    .line 426
    .line 427
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_2b

    .line 432
    .line 433
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    .line 434
    .line 435
    goto :goto_d

    .line 436
    :cond_22
    :goto_8
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 437
    .line 438
    goto :goto_d

    .line 439
    :cond_23
    :goto_9
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 440
    .line 441
    goto :goto_d

    .line 442
    :cond_24
    :goto_a
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 443
    .line 444
    goto :goto_d

    .line 445
    :cond_25
    :goto_b
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 446
    .line 447
    goto :goto_d

    .line 448
    :cond_26
    if-ne v4, v0, :cond_2a

    .line 449
    .line 450
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 455
    .line 456
    .line 457
    move-result-wide v0

    .line 458
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->MoveHome:J

    .line 459
    .line 460
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-nez v2, :cond_29

    .line 465
    .line 466
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadMoveHome:J

    .line 467
    .line 468
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-eqz v2, :cond_27

    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_27
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->MoveEnd:J

    .line 476
    .line 477
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-nez v2, :cond_28

    .line 482
    .line 483
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->NumPadMoveEnd:J

    .line 484
    .line 485
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_2b

    .line 490
    .line 491
    :cond_28
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 492
    .line 493
    goto :goto_d

    .line 494
    :cond_29
    :goto_c
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 495
    .line 496
    goto :goto_d

    .line 497
    :cond_2a
    if-ne v4, v5, :cond_2b

    .line 498
    .line 499
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 504
    .line 505
    .line 506
    move-result-wide v0

    .line 507
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->Delete:J

    .line 508
    .line 509
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_2b

    .line 514
    .line 515
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 516
    .line 517
    :cond_2b
    :goto_d
    if-nez v3, :cond_2c

    .line 518
    .line 519
    iget-object p0, p0, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 522
    .line 523
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    .line 524
    .line 525
    .line 526
    move-result-object p0

    .line 527
    goto :goto_e

    .line 528
    :cond_2c
    move-object p0, v3

    .line 529
    :cond_2d
    :goto_e
    return-object p0

    .line 530
    :pswitch_0
    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextKt;->getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    if-ne p0, v2, :cond_2e

    .line 535
    .line 536
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 537
    .line 538
    .line 539
    move-result p0

    .line 540
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 541
    .line 542
    .line 543
    move-result-wide p0

    .line 544
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Z:J

    .line 545
    .line 546
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 547
    .line 548
    .line 549
    move-result p0

    .line 550
    if-eqz p0, :cond_60

    .line 551
    .line 552
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 553
    .line 554
    goto/16 :goto_21

    .line 555
    .line 556
    :cond_2e
    if-ne p0, v1, :cond_35

    .line 557
    .line 558
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 559
    .line 560
    .line 561
    move-result p0

    .line 562
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 563
    .line 564
    .line 565
    move-result-wide p0

    .line 566
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->C:J

    .line 567
    .line 568
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-nez v0, :cond_34

    .line 573
    .line 574
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Insert:J

    .line 575
    .line 576
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-nez v0, :cond_34

    .line 581
    .line 582
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadInsert:J

    .line 583
    .line 584
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    if-eqz v0, :cond_2f

    .line 589
    .line 590
    goto :goto_f

    .line 591
    :cond_2f
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->V:J

    .line 592
    .line 593
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-eqz v0, :cond_30

    .line 598
    .line 599
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 600
    .line 601
    goto/16 :goto_21

    .line 602
    .line 603
    :cond_30
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->X:J

    .line 604
    .line 605
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-eqz v0, :cond_31

    .line 610
    .line 611
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 612
    .line 613
    goto/16 :goto_21

    .line 614
    .line 615
    :cond_31
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->A:J

    .line 616
    .line 617
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-eqz v0, :cond_32

    .line 622
    .line 623
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    .line 624
    .line 625
    goto/16 :goto_21

    .line 626
    .line 627
    :cond_32
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Y:J

    .line 628
    .line 629
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_33

    .line 634
    .line 635
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 636
    .line 637
    goto/16 :goto_21

    .line 638
    .line 639
    :cond_33
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Z:J

    .line 640
    .line 641
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 642
    .line 643
    .line 644
    move-result p0

    .line 645
    if-eqz p0, :cond_60

    .line 646
    .line 647
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 648
    .line 649
    goto/16 :goto_21

    .line 650
    .line 651
    :cond_34
    :goto_f
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 652
    .line 653
    goto/16 :goto_21

    .line 654
    .line 655
    :cond_35
    if-ne p0, v0, :cond_47

    .line 656
    .line 657
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 658
    .line 659
    .line 660
    move-result p0

    .line 661
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 662
    .line 663
    .line 664
    move-result-wide p0

    .line 665
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 666
    .line 667
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-nez v0, :cond_46

    .line 672
    .line 673
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 674
    .line 675
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-eqz v0, :cond_36

    .line 680
    .line 681
    goto/16 :goto_17

    .line 682
    .line 683
    :cond_36
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 684
    .line 685
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-nez v0, :cond_45

    .line 690
    .line 691
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 692
    .line 693
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_37

    .line 698
    .line 699
    goto/16 :goto_16

    .line 700
    .line 701
    :cond_37
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 702
    .line 703
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    if-nez v0, :cond_44

    .line 708
    .line 709
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 710
    .line 711
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 712
    .line 713
    .line 714
    move-result v0

    .line 715
    if-eqz v0, :cond_38

    .line 716
    .line 717
    goto/16 :goto_15

    .line 718
    .line 719
    :cond_38
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 720
    .line 721
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    if-nez v0, :cond_43

    .line 726
    .line 727
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 728
    .line 729
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-eqz v0, :cond_39

    .line 734
    .line 735
    goto/16 :goto_14

    .line 736
    .line 737
    :cond_39
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->PageUp:J

    .line 738
    .line 739
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-nez v0, :cond_42

    .line 744
    .line 745
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadPageUp:J

    .line 746
    .line 747
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    if-eqz v0, :cond_3a

    .line 752
    .line 753
    goto :goto_13

    .line 754
    :cond_3a
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->PageDown:J

    .line 755
    .line 756
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 757
    .line 758
    .line 759
    move-result v0

    .line 760
    if-nez v0, :cond_41

    .line 761
    .line 762
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadPageDown:J

    .line 763
    .line 764
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    if-eqz v0, :cond_3b

    .line 769
    .line 770
    goto :goto_12

    .line 771
    :cond_3b
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->MoveHome:J

    .line 772
    .line 773
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-nez v0, :cond_40

    .line 778
    .line 779
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadMoveHome:J

    .line 780
    .line 781
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-eqz v0, :cond_3c

    .line 786
    .line 787
    goto :goto_11

    .line 788
    :cond_3c
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->MoveEnd:J

    .line 789
    .line 790
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-nez v0, :cond_3f

    .line 795
    .line 796
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadMoveEnd:J

    .line 797
    .line 798
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    if-eqz v0, :cond_3d

    .line 803
    .line 804
    goto :goto_10

    .line 805
    :cond_3d
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Insert:J

    .line 806
    .line 807
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    if-nez v0, :cond_3e

    .line 812
    .line 813
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadInsert:J

    .line 814
    .line 815
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 816
    .line 817
    .line 818
    move-result p0

    .line 819
    if-eqz p0, :cond_60

    .line 820
    .line 821
    :cond_3e
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 822
    .line 823
    goto/16 :goto_21

    .line 824
    .line 825
    :cond_3f
    :goto_10
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 826
    .line 827
    goto/16 :goto_21

    .line 828
    .line 829
    :cond_40
    :goto_11
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 830
    .line 831
    goto/16 :goto_21

    .line 832
    .line 833
    :cond_41
    :goto_12
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 834
    .line 835
    goto/16 :goto_21

    .line 836
    .line 837
    :cond_42
    :goto_13
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 838
    .line 839
    goto/16 :goto_21

    .line 840
    .line 841
    :cond_43
    :goto_14
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 842
    .line 843
    goto/16 :goto_21

    .line 844
    .line 845
    :cond_44
    :goto_15
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 846
    .line 847
    goto/16 :goto_21

    .line 848
    .line 849
    :cond_45
    :goto_16
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 850
    .line 851
    goto/16 :goto_21

    .line 852
    .line 853
    :cond_46
    :goto_17
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 854
    .line 855
    goto/16 :goto_21

    .line 856
    .line 857
    :cond_47
    if-nez p0, :cond_60

    .line 858
    .line 859
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 860
    .line 861
    .line 862
    move-result p0

    .line 863
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 864
    .line 865
    .line 866
    move-result-wide p0

    .line 867
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    .line 868
    .line 869
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    if-nez v0, :cond_5f

    .line 874
    .line 875
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionLeft:J

    .line 876
    .line 877
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    if-eqz v0, :cond_48

    .line 882
    .line 883
    goto/16 :goto_20

    .line 884
    .line 885
    :cond_48
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    .line 886
    .line 887
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    if-nez v0, :cond_5e

    .line 892
    .line 893
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionRight:J

    .line 894
    .line 895
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 896
    .line 897
    .line 898
    move-result v0

    .line 899
    if-eqz v0, :cond_49

    .line 900
    .line 901
    goto/16 :goto_1f

    .line 902
    .line 903
    :cond_49
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    .line 904
    .line 905
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    if-nez v0, :cond_5d

    .line 910
    .line 911
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionUp:J

    .line 912
    .line 913
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    if-eqz v0, :cond_4a

    .line 918
    .line 919
    goto/16 :goto_1e

    .line 920
    .line 921
    :cond_4a
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    .line 922
    .line 923
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 924
    .line 925
    .line 926
    move-result v0

    .line 927
    if-nez v0, :cond_5c

    .line 928
    .line 929
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadDirectionDown:J

    .line 930
    .line 931
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    if-eqz v0, :cond_4b

    .line 936
    .line 937
    goto/16 :goto_1d

    .line 938
    .line 939
    :cond_4b
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->DirectionCenter:J

    .line 940
    .line 941
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-eqz v0, :cond_4c

    .line 946
    .line 947
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->CENTER:Landroidx/compose/foundation/text/KeyCommand;

    .line 948
    .line 949
    goto/16 :goto_21

    .line 950
    .line 951
    :cond_4c
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->PageUp:J

    .line 952
    .line 953
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    if-nez v0, :cond_5b

    .line 958
    .line 959
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadPageUp:J

    .line 960
    .line 961
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 962
    .line 963
    .line 964
    move-result v0

    .line 965
    if-eqz v0, :cond_4d

    .line 966
    .line 967
    goto/16 :goto_1c

    .line 968
    .line 969
    :cond_4d
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->PageDown:J

    .line 970
    .line 971
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    if-nez v0, :cond_5a

    .line 976
    .line 977
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadPageDown:J

    .line 978
    .line 979
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 980
    .line 981
    .line 982
    move-result v0

    .line 983
    if-eqz v0, :cond_4e

    .line 984
    .line 985
    goto/16 :goto_1b

    .line 986
    .line 987
    :cond_4e
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->MoveHome:J

    .line 988
    .line 989
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-nez v0, :cond_59

    .line 994
    .line 995
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadMoveHome:J

    .line 996
    .line 997
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 998
    .line 999
    .line 1000
    move-result v0

    .line 1001
    if-eqz v0, :cond_4f

    .line 1002
    .line 1003
    goto/16 :goto_1a

    .line 1004
    .line 1005
    :cond_4f
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->MoveEnd:J

    .line 1006
    .line 1007
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    if-nez v0, :cond_58

    .line 1012
    .line 1013
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadMoveEnd:J

    .line 1014
    .line 1015
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_50

    .line 1020
    .line 1021
    goto :goto_19

    .line 1022
    :cond_50
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Enter:J

    .line 1023
    .line 1024
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    if-nez v0, :cond_57

    .line 1029
    .line 1030
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->NumPadEnter:J

    .line 1031
    .line 1032
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v0

    .line 1036
    if-eqz v0, :cond_51

    .line 1037
    .line 1038
    goto :goto_18

    .line 1039
    :cond_51
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Backspace:J

    .line 1040
    .line 1041
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v0

    .line 1045
    if-eqz v0, :cond_52

    .line 1046
    .line 1047
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 1048
    .line 1049
    goto :goto_21

    .line 1050
    :cond_52
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Delete:J

    .line 1051
    .line 1052
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v0

    .line 1056
    if-eqz v0, :cond_53

    .line 1057
    .line 1058
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 1059
    .line 1060
    goto :goto_21

    .line 1061
    :cond_53
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Paste:J

    .line 1062
    .line 1063
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v0

    .line 1067
    if-eqz v0, :cond_54

    .line 1068
    .line 1069
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 1070
    .line 1071
    goto :goto_21

    .line 1072
    :cond_54
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Cut:J

    .line 1073
    .line 1074
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v0

    .line 1078
    if-eqz v0, :cond_55

    .line 1079
    .line 1080
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 1081
    .line 1082
    goto :goto_21

    .line 1083
    :cond_55
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Copy:J

    .line 1084
    .line 1085
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v0

    .line 1089
    if-eqz v0, :cond_56

    .line 1090
    .line 1091
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 1092
    .line 1093
    goto :goto_21

    .line 1094
    :cond_56
    sget-wide v0, Landroidx/compose/ui/input/key/Key;->Tab:J

    .line 1095
    .line 1096
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 1097
    .line 1098
    .line 1099
    move-result p0

    .line 1100
    if-eqz p0, :cond_60

    .line 1101
    .line 1102
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    .line 1103
    .line 1104
    goto :goto_21

    .line 1105
    :cond_57
    :goto_18
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    .line 1106
    .line 1107
    goto :goto_21

    .line 1108
    :cond_58
    :goto_19
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 1109
    .line 1110
    goto :goto_21

    .line 1111
    :cond_59
    :goto_1a
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 1112
    .line 1113
    goto :goto_21

    .line 1114
    :cond_5a
    :goto_1b
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 1115
    .line 1116
    goto :goto_21

    .line 1117
    :cond_5b
    :goto_1c
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 1118
    .line 1119
    goto :goto_21

    .line 1120
    :cond_5c
    :goto_1d
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 1121
    .line 1122
    goto :goto_21

    .line 1123
    :cond_5d
    :goto_1e
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 1124
    .line 1125
    goto :goto_21

    .line 1126
    :cond_5e
    :goto_1f
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 1127
    .line 1128
    goto :goto_21

    .line 1129
    :cond_5f
    :goto_20
    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 1130
    .line 1131
    :cond_60
    :goto_21
    return-object v3

    .line 1132
    nop

    .line 1133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
