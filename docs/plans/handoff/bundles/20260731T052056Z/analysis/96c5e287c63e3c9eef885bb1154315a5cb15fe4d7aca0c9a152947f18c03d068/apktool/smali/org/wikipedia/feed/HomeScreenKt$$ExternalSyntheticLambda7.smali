.class public final synthetic Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lorg/wikipedia/feed/HomeTab;

    .line 11
    .line 12
    check-cast p2, Lorg/wikipedia/feed/model/Card;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lorg/wikipedia/feed/HomeAction$SelectTab;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$SelectTab;-><init>(Lorg/wikipedia/feed/HomeTab;Lorg/wikipedia/feed/model/Card;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 27
    .line 28
    check-cast p2, Lorg/wikipedia/feed/model/ForYouCard;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 37
    .line 38
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$HideForYouCard;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_1
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 46
    .line 47
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 56
    .line 57
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageShareClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :pswitch_2
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 65
    .line 66
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 75
    .line 76
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :pswitch_3
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 84
    .line 85
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 94
    .line 95
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :pswitch_4
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 103
    .line 104
    check-cast p2, Lorg/wikipedia/feed/model/ForYouCard;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 113
    .line 114
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$HideForYouCard;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :pswitch_5
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 122
    .line 123
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 132
    .line 133
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageShareClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    :pswitch_6
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 141
    .line 142
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 151
    .line 152
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :pswitch_7
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 160
    .line 161
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 170
    .line 171
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    return-object v1

    .line 178
    :pswitch_8
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 179
    .line 180
    check-cast p2, Lorg/wikipedia/feed/model/ForYouCard;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 189
    .line 190
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$HideForYouCard;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    return-object v1

    .line 197
    :pswitch_9
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 198
    .line 199
    check-cast p2, Lorg/wikipedia/feed/model/ForYouCard;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 208
    .line 209
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$HideForYouCard;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    return-object v1

    .line 216
    :pswitch_a
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 217
    .line 218
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 227
    .line 228
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageShareClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    return-object v1

    .line 235
    :pswitch_b
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 236
    .line 237
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 246
    .line 247
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    return-object v1

    .line 254
    :pswitch_c
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 255
    .line 256
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 265
    .line 266
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    return-object v1

    .line 273
    :pswitch_d
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 274
    .line 275
    check-cast p2, Lorg/wikipedia/feed/model/ForYouCard;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 284
    .line 285
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$HideForYouCard;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    return-object v1

    .line 292
    :pswitch_e
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 293
    .line 294
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 303
    .line 304
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageShareClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    return-object v1

    .line 311
    :pswitch_f
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 312
    .line 313
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 322
    .line 323
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 324
    .line 325
    .line 326
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    return-object v1

    .line 330
    :pswitch_10
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 331
    .line 332
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 341
    .line 342
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 343
    .line 344
    .line 345
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    return-object v1

    .line 349
    :pswitch_11
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 350
    .line 351
    check-cast p2, Lorg/wikipedia/feed/model/ForYouCard;

    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 360
    .line 361
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$HideForYouCard;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;)V

    .line 362
    .line 363
    .line 364
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    return-object v1

    .line 368
    :pswitch_12
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 369
    .line 370
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 379
    .line 380
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageShareClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    return-object v1

    .line 387
    :pswitch_13
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 388
    .line 389
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 390
    .line 391
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 398
    .line 399
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 400
    .line 401
    .line 402
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    return-object v1

    .line 406
    :pswitch_14
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 407
    .line 408
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 409
    .line 410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 417
    .line 418
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 419
    .line 420
    .line 421
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    return-object v1

    .line 425
    :pswitch_15
    check-cast p1, Lorg/wikipedia/feed/ForYouModule;

    .line 426
    .line 427
    check-cast p2, Lorg/wikipedia/feed/model/ForYouCard;

    .line 428
    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    new-instance v0, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 436
    .line 437
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$HideForYouCard;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;)V

    .line 438
    .line 439
    .line 440
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    return-object v1

    .line 444
    :pswitch_16
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 445
    .line 446
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 447
    .line 448
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 455
    .line 456
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageShareClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    return-object v1

    .line 463
    :pswitch_17
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 464
    .line 465
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 466
    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 474
    .line 475
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 476
    .line 477
    .line 478
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    return-object v1

    .line 482
    :pswitch_18
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 483
    .line 484
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    new-instance v0, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 493
    .line 494
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 495
    .line 496
    .line 497
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    return-object v1

    .line 501
    :pswitch_19
    check-cast p1, Lorg/wikipedia/feed/model/Card;

    .line 502
    .line 503
    check-cast p2, Ljava/lang/Integer;

    .line 504
    .line 505
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 506
    .line 507
    .line 508
    move-result p2

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 513
    .line 514
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$CardImpression;-><init>(Lorg/wikipedia/feed/model/Card;I)V

    .line 515
    .line 516
    .line 517
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    return-object v1

    .line 521
    :pswitch_1a
    check-cast p2, Lkotlin/Unit;

    .line 522
    .line 523
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    return-object v1

    .line 527
    :pswitch_1b
    check-cast p1, Lorg/wikipedia/feed/HomeTab;

    .line 528
    .line 529
    check-cast p2, Lorg/wikipedia/feed/model/Card;

    .line 530
    .line 531
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    new-instance v0, Lorg/wikipedia/feed/HomeAction$SelectTab;

    .line 535
    .line 536
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/HomeAction$SelectTab;-><init>(Lorg/wikipedia/feed/HomeTab;Lorg/wikipedia/feed/model/Card;)V

    .line 537
    .line 538
    .line 539
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    return-object v1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
