.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:F

.field public final synthetic f$1:Lorg/wikipedia/feed/ForYouModule;

.field public final synthetic f$2:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(FIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule;)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$0:F

    .line 4
    .line 5
    iput-object p7, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$1:Lorg/wikipedia/feed/ForYouModule;

    .line 6
    .line 7
    iput-object p6, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    iput p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$5:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x6

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/high16 v6, 0x3f800000    # 1.0f

    .line 10
    .line 11
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 14
    .line 15
    iget v10, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$5:I

    .line 16
    .line 17
    iget-object v11, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    iget-object v12, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iget-object v13, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$1:Lorg/wikipedia/feed/ForYouModule;

    .line 22
    .line 23
    iget v14, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$0:F

    .line 24
    .line 25
    const/4 v15, 0x0

    .line 26
    const/16 v16, 0x1

    .line 27
    .line 28
    const/16 v9, 0x10

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 36
    .line 37
    move-object/from16 v2, p2

    .line 38
    .line 39
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 40
    .line 41
    move-object/from16 v3, p3

    .line 42
    .line 43
    check-cast v3, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    and-int/lit8 v1, v3, 0x11

    .line 53
    .line 54
    if-eq v1, v9, :cond_0

    .line 55
    .line 56
    move/from16 v15, v16

    .line 57
    .line 58
    :cond_0
    and-int/lit8 v1, v3, 0x1

    .line 59
    .line 60
    invoke-virtual {v2, v1, v15}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_f

    .line 65
    .line 66
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object v17

    .line 74
    move-object/from16 v19, v13

    .line 75
    .line 76
    check-cast v19, Lorg/wikipedia/feed/ForYouModule$BecauseYouRead;

    .line 77
    .line 78
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v1, :cond_1

    .line 87
    .line 88
    if-ne v3, v8, :cond_2

    .line 89
    .line 90
    :cond_1
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 91
    .line 92
    const/16 v1, 0x18

    .line 93
    .line 94
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    move-object/from16 v20, v3

    .line 101
    .line 102
    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    if-ne v3, v8, :cond_4

    .line 115
    .line 116
    :cond_3
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 117
    .line 118
    const/16 v1, 0x19

    .line 119
    .line 120
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    move-object/from16 v21, v3

    .line 127
    .line 128
    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 129
    .line 130
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-nez v1, :cond_5

    .line 139
    .line 140
    if-ne v3, v8, :cond_6

    .line 141
    .line 142
    :cond_5
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 143
    .line 144
    const/16 v1, 0x1a

    .line 145
    .line 146
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    move-object/from16 v22, v3

    .line 153
    .line 154
    check-cast v22, Lkotlin/jvm/functions/Function2;

    .line 155
    .line 156
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-nez v1, :cond_7

    .line 165
    .line 166
    if-ne v3, v8, :cond_8

    .line 167
    .line 168
    :cond_7
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 169
    .line 170
    const/16 v1, 0x1b

    .line 171
    .line 172
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    move-object/from16 v23, v3

    .line 179
    .line 180
    check-cast v23, Lkotlin/jvm/functions/Function2;

    .line 181
    .line 182
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    or-int/2addr v1, v3

    .line 191
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    if-nez v1, :cond_9

    .line 196
    .line 197
    if-ne v3, v8, :cond_a

    .line 198
    .line 199
    :cond_9
    new-instance v3, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;

    .line 200
    .line 201
    invoke-direct {v3, v12, v13, v4}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouModule;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_a
    move-object/from16 v24, v3

    .line 208
    .line 209
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 210
    .line 211
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    or-int/2addr v1, v3

    .line 220
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-nez v1, :cond_b

    .line 225
    .line 226
    if-ne v3, v8, :cond_c

    .line 227
    .line 228
    :cond_b
    new-instance v3, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;

    .line 229
    .line 230
    invoke-direct {v3, v10, v4, v11}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;-><init>(IILkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_c
    move-object/from16 v25, v3

    .line 237
    .line 238
    check-cast v25, Lkotlin/jvm/functions/Function1;

    .line 239
    .line 240
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    if-nez v1, :cond_d

    .line 249
    .line 250
    if-ne v3, v8, :cond_e

    .line 251
    .line 252
    :cond_d
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 253
    .line 254
    const/16 v1, 0x15

    .line 255
    .line 256
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_e
    move-object/from16 v26, v3

    .line 263
    .line 264
    check-cast v26, Lkotlin/jvm/functions/Function1;

    .line 265
    .line 266
    const/16 v28, 0x0

    .line 267
    .line 268
    iget-object v0, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 269
    .line 270
    move-object/from16 v18, v0

    .line 271
    .line 272
    move-object/from16 v27, v2

    .line 273
    .line 274
    invoke-static/range {v17 .. v28}, Lorg/jsoup/nodes/NodeUtils;->BecauseYouReadModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$BecauseYouRead;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_f
    move-object/from16 v27, v2

    .line 279
    .line 280
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 281
    .line 282
    .line 283
    :goto_0
    return-object v5

    .line 284
    :pswitch_0
    move-object/from16 v1, p1

    .line 285
    .line 286
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 287
    .line 288
    move-object/from16 v2, p2

    .line 289
    .line 290
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 291
    .line 292
    move-object/from16 v18, p3

    .line 293
    .line 294
    check-cast v18, Ljava/lang/Integer;

    .line 295
    .line 296
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 297
    .line 298
    .line 299
    move-result v18

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    and-int/lit8 v1, v18, 0x11

    .line 304
    .line 305
    if-eq v1, v9, :cond_10

    .line 306
    .line 307
    move/from16 v1, v16

    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_10
    move v1, v15

    .line 311
    :goto_1
    and-int/lit8 v9, v18, 0x1

    .line 312
    .line 313
    invoke-virtual {v2, v9, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_1f

    .line 318
    .line 319
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    move-object/from16 v19, v13

    .line 328
    .line 329
    check-cast v19, Lorg/wikipedia/feed/ForYouModule$ContinueReading;

    .line 330
    .line 331
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    if-nez v6, :cond_11

    .line 340
    .line 341
    if-ne v7, v8, :cond_12

    .line 342
    .line 343
    :cond_11
    new-instance v7, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 344
    .line 345
    invoke-direct {v7, v12, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_12
    move-object/from16 v20, v7

    .line 352
    .line 353
    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 354
    .line 355
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    if-nez v3, :cond_13

    .line 364
    .line 365
    if-ne v6, v8, :cond_14

    .line 366
    .line 367
    :cond_13
    new-instance v6, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 368
    .line 369
    const/4 v3, 0x4

    .line 370
    invoke-direct {v6, v12, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_14
    move-object/from16 v21, v6

    .line 377
    .line 378
    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 379
    .line 380
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    if-nez v3, :cond_15

    .line 389
    .line 390
    if-ne v6, v8, :cond_16

    .line 391
    .line 392
    :cond_15
    new-instance v6, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 393
    .line 394
    const/4 v3, 0x5

    .line 395
    invoke-direct {v6, v12, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    :cond_16
    move-object/from16 v22, v6

    .line 402
    .line 403
    check-cast v22, Lkotlin/jvm/functions/Function2;

    .line 404
    .line 405
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    if-nez v3, :cond_17

    .line 414
    .line 415
    if-ne v6, v8, :cond_18

    .line 416
    .line 417
    :cond_17
    new-instance v6, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 418
    .line 419
    invoke-direct {v6, v12, v4}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_18
    move-object/from16 v23, v6

    .line 426
    .line 427
    check-cast v23, Lkotlin/jvm/functions/Function2;

    .line 428
    .line 429
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    or-int/2addr v3, v4

    .line 438
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    if-nez v3, :cond_19

    .line 443
    .line 444
    if-ne v4, v8, :cond_1a

    .line 445
    .line 446
    :cond_19
    new-instance v4, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;

    .line 447
    .line 448
    invoke-direct {v4, v12, v13, v15}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouModule;I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    :cond_1a
    move-object/from16 v24, v4

    .line 455
    .line 456
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 457
    .line 458
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    or-int/2addr v3, v4

    .line 467
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    if-nez v3, :cond_1b

    .line 472
    .line 473
    if-ne v4, v8, :cond_1c

    .line 474
    .line 475
    :cond_1b
    new-instance v4, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;

    .line 476
    .line 477
    invoke-direct {v4, v10, v15, v11}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;-><init>(IILkotlin/jvm/functions/Function2;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    :cond_1c
    move-object/from16 v25, v4

    .line 484
    .line 485
    check-cast v25, Lkotlin/jvm/functions/Function1;

    .line 486
    .line 487
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    if-nez v3, :cond_1d

    .line 496
    .line 497
    if-ne v4, v8, :cond_1e

    .line 498
    .line 499
    :cond_1d
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 500
    .line 501
    const/16 v3, 0xe

    .line 502
    .line 503
    invoke-direct {v4, v12, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    :cond_1e
    move-object/from16 v26, v4

    .line 510
    .line 511
    check-cast v26, Lkotlin/jvm/functions/Function1;

    .line 512
    .line 513
    const/16 v28, 0x0

    .line 514
    .line 515
    iget-object v0, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 516
    .line 517
    move-object/from16 v18, v0

    .line 518
    .line 519
    move-object/from16 v17, v1

    .line 520
    .line 521
    move-object/from16 v27, v2

    .line 522
    .line 523
    invoke-static/range {v17 .. v28}, Lorg/jsoup/select/NodeTraversor;->ContinueReadingModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$ContinueReading;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 524
    .line 525
    .line 526
    goto :goto_2

    .line 527
    :cond_1f
    move-object/from16 v27, v2

    .line 528
    .line 529
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 530
    .line 531
    .line 532
    :goto_2
    return-object v5

    .line 533
    :pswitch_1
    move-object/from16 v1, p1

    .line 534
    .line 535
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 536
    .line 537
    move-object/from16 v2, p2

    .line 538
    .line 539
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 540
    .line 541
    move-object/from16 v3, p3

    .line 542
    .line 543
    check-cast v3, Ljava/lang/Integer;

    .line 544
    .line 545
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    and-int/lit8 v1, v3, 0x11

    .line 553
    .line 554
    if-eq v1, v9, :cond_20

    .line 555
    .line 556
    move/from16 v15, v16

    .line 557
    .line 558
    :cond_20
    and-int/lit8 v1, v3, 0x1

    .line 559
    .line 560
    invoke-virtual {v2, v1, v15}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-eqz v1, :cond_31

    .line 565
    .line 566
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 571
    .line 572
    .line 573
    move-result-object v18

    .line 574
    move-object/from16 v20, v13

    .line 575
    .line 576
    check-cast v20, Lorg/wikipedia/feed/ForYouModule$Random;

    .line 577
    .line 578
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    if-nez v1, :cond_21

    .line 587
    .line 588
    if-ne v3, v8, :cond_22

    .line 589
    .line 590
    :cond_21
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 591
    .line 592
    const/16 v1, 0xb

    .line 593
    .line 594
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    :cond_22
    move-object/from16 v21, v3

    .line 601
    .line 602
    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 603
    .line 604
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    if-nez v1, :cond_23

    .line 613
    .line 614
    if-ne v3, v8, :cond_24

    .line 615
    .line 616
    :cond_23
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 617
    .line 618
    const/16 v1, 0xc

    .line 619
    .line 620
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    :cond_24
    move-object/from16 v22, v3

    .line 627
    .line 628
    check-cast v22, Lkotlin/jvm/functions/Function2;

    .line 629
    .line 630
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    if-nez v1, :cond_25

    .line 639
    .line 640
    if-ne v3, v8, :cond_26

    .line 641
    .line 642
    :cond_25
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 643
    .line 644
    const/16 v1, 0xd

    .line 645
    .line 646
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    :cond_26
    move-object/from16 v23, v3

    .line 653
    .line 654
    check-cast v23, Lkotlin/jvm/functions/Function2;

    .line 655
    .line 656
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    if-nez v1, :cond_27

    .line 665
    .line 666
    if-ne v3, v8, :cond_28

    .line 667
    .line 668
    :cond_27
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 669
    .line 670
    const/16 v1, 0xe

    .line 671
    .line 672
    invoke-direct {v3, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    :cond_28
    move-object/from16 v24, v3

    .line 679
    .line 680
    check-cast v24, Lkotlin/jvm/functions/Function2;

    .line 681
    .line 682
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    or-int/2addr v1, v3

    .line 691
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    const/4 v4, 0x2

    .line 696
    if-nez v1, :cond_29

    .line 697
    .line 698
    if-ne v3, v8, :cond_2a

    .line 699
    .line 700
    :cond_29
    new-instance v3, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;

    .line 701
    .line 702
    invoke-direct {v3, v12, v13, v4}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouModule;I)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    :cond_2a
    move-object/from16 v25, v3

    .line 709
    .line 710
    check-cast v25, Lkotlin/jvm/functions/Function0;

    .line 711
    .line 712
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 717
    .line 718
    .line 719
    move-result v3

    .line 720
    or-int/2addr v1, v3

    .line 721
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    if-nez v1, :cond_2b

    .line 726
    .line 727
    if-ne v3, v8, :cond_2c

    .line 728
    .line 729
    :cond_2b
    new-instance v3, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;

    .line 730
    .line 731
    invoke-direct {v3, v10, v4, v11}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;-><init>(IILkotlin/jvm/functions/Function2;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    :cond_2c
    move-object/from16 v26, v3

    .line 738
    .line 739
    check-cast v26, Lkotlin/jvm/functions/Function1;

    .line 740
    .line 741
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    if-nez v1, :cond_2d

    .line 750
    .line 751
    if-ne v3, v8, :cond_2e

    .line 752
    .line 753
    :cond_2d
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 754
    .line 755
    invoke-direct {v3, v12, v9}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    :cond_2e
    move-object/from16 v27, v3

    .line 762
    .line 763
    check-cast v27, Lkotlin/jvm/functions/Function1;

    .line 764
    .line 765
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v1

    .line 769
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    if-nez v1, :cond_2f

    .line 774
    .line 775
    if-ne v3, v8, :cond_30

    .line 776
    .line 777
    :cond_2f
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 778
    .line 779
    invoke-direct {v3, v12, v9}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    :cond_30
    move-object/from16 v28, v3

    .line 786
    .line 787
    check-cast v28, Lkotlin/jvm/functions/Function0;

    .line 788
    .line 789
    const/16 v30, 0x0

    .line 790
    .line 791
    iget-object v0, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 792
    .line 793
    move-object/from16 v19, v0

    .line 794
    .line 795
    move-object/from16 v29, v2

    .line 796
    .line 797
    invoke-static/range {v18 .. v30}, Lokio/Okio__JvmOkioKt;->RandomModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$Random;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 798
    .line 799
    .line 800
    goto :goto_3

    .line 801
    :cond_31
    move-object/from16 v29, v2

    .line 802
    .line 803
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 804
    .line 805
    .line 806
    :goto_3
    return-object v5

    .line 807
    :pswitch_2
    move-object/from16 v1, p1

    .line 808
    .line 809
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 810
    .line 811
    move-object/from16 v2, p2

    .line 812
    .line 813
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 814
    .line 815
    move-object/from16 v4, p3

    .line 816
    .line 817
    check-cast v4, Ljava/lang/Integer;

    .line 818
    .line 819
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 820
    .line 821
    .line 822
    move-result v4

    .line 823
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    and-int/lit8 v1, v4, 0x11

    .line 827
    .line 828
    if-eq v1, v9, :cond_32

    .line 829
    .line 830
    move/from16 v15, v16

    .line 831
    .line 832
    :cond_32
    and-int/lit8 v1, v4, 0x1

    .line 833
    .line 834
    invoke-virtual {v2, v1, v15}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    if-eqz v1, :cond_41

    .line 839
    .line 840
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-static {v1, v14}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 845
    .line 846
    .line 847
    move-result-object v17

    .line 848
    move-object/from16 v19, v13

    .line 849
    .line 850
    check-cast v19, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

    .line 851
    .line 852
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    if-nez v1, :cond_33

    .line 861
    .line 862
    if-ne v4, v8, :cond_34

    .line 863
    .line 864
    :cond_33
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 865
    .line 866
    const/16 v1, 0xf

    .line 867
    .line 868
    invoke-direct {v4, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 872
    .line 873
    .line 874
    :cond_34
    move-object/from16 v20, v4

    .line 875
    .line 876
    check-cast v20, Lkotlin/jvm/functions/Function2;

    .line 877
    .line 878
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    if-nez v1, :cond_35

    .line 887
    .line 888
    if-ne v4, v8, :cond_36

    .line 889
    .line 890
    :cond_35
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 891
    .line 892
    invoke-direct {v4, v12, v9}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    :cond_36
    move-object/from16 v21, v4

    .line 899
    .line 900
    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 901
    .line 902
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v1

    .line 906
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    const/16 v6, 0x11

    .line 911
    .line 912
    if-nez v1, :cond_37

    .line 913
    .line 914
    if-ne v4, v8, :cond_38

    .line 915
    .line 916
    :cond_37
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 917
    .line 918
    invoke-direct {v4, v12, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 922
    .line 923
    .line 924
    :cond_38
    move-object/from16 v22, v4

    .line 925
    .line 926
    check-cast v22, Lkotlin/jvm/functions/Function2;

    .line 927
    .line 928
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    if-nez v1, :cond_39

    .line 937
    .line 938
    if-ne v4, v8, :cond_3a

    .line 939
    .line 940
    :cond_39
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 941
    .line 942
    const/16 v1, 0x12

    .line 943
    .line 944
    invoke-direct {v4, v12, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 948
    .line 949
    .line 950
    :cond_3a
    move-object/from16 v23, v4

    .line 951
    .line 952
    check-cast v23, Lkotlin/jvm/functions/Function2;

    .line 953
    .line 954
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v4

    .line 962
    or-int/2addr v1, v4

    .line 963
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    if-nez v1, :cond_3b

    .line 968
    .line 969
    if-ne v4, v8, :cond_3c

    .line 970
    .line 971
    :cond_3b
    new-instance v4, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;

    .line 972
    .line 973
    invoke-direct {v4, v12, v13, v3}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouModule;I)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 977
    .line 978
    .line 979
    :cond_3c
    move-object/from16 v24, v4

    .line 980
    .line 981
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 982
    .line 983
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 988
    .line 989
    .line 990
    move-result v4

    .line 991
    or-int/2addr v1, v4

    .line 992
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v4

    .line 996
    if-nez v1, :cond_3d

    .line 997
    .line 998
    if-ne v4, v8, :cond_3e

    .line 999
    .line 1000
    :cond_3d
    new-instance v4, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;

    .line 1001
    .line 1002
    invoke-direct {v4, v10, v3, v11}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda19;-><init>(IILkotlin/jvm/functions/Function2;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1006
    .line 1007
    .line 1008
    :cond_3e
    move-object/from16 v25, v4

    .line 1009
    .line 1010
    check-cast v25, Lkotlin/jvm/functions/Function1;

    .line 1011
    .line 1012
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v1

    .line 1016
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v3

    .line 1020
    if-nez v1, :cond_3f

    .line 1021
    .line 1022
    if-ne v3, v8, :cond_40

    .line 1023
    .line 1024
    :cond_3f
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 1025
    .line 1026
    invoke-direct {v3, v12, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    :cond_40
    move-object/from16 v26, v3

    .line 1033
    .line 1034
    check-cast v26, Lkotlin/jvm/functions/Function1;

    .line 1035
    .line 1036
    const/16 v28, 0x0

    .line 1037
    .line 1038
    iget-object v0, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda5;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 1039
    .line 1040
    move-object/from16 v18, v0

    .line 1041
    .line 1042
    move-object/from16 v27, v2

    .line 1043
    .line 1044
    invoke-static/range {v17 .. v28}, Lokhttp3/Headers$Companion;->BasedOnInterestModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 1045
    .line 1046
    .line 1047
    goto :goto_4

    .line 1048
    :cond_41
    move-object/from16 v27, v2

    .line 1049
    .line 1050
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1051
    .line 1052
    .line 1053
    :goto_4
    return-object v5

    .line 1054
    nop

    .line 1055
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
