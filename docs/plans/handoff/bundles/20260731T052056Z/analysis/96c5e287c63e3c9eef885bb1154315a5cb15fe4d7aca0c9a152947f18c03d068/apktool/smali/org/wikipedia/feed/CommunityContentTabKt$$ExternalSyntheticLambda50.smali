.class public final synthetic Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$1:Lorg/wikipedia/feed/model/Card;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/model/Card;Lkotlin/jvm/functions/Function1;ILorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$1:Lorg/wikipedia/feed/model/Card;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput p4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$3:I

    .line 10
    .line 11
    iput-object p5, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/16 v5, 0x10

    .line 10
    .line 11
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    iget-object v7, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 14
    .line 15
    iget v8, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$3:I

    .line 16
    .line 17
    iget-object v9, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$2:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    iget-object v10, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$1:Lorg/wikipedia/feed/model/Card;

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x1

    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    check-cast v10, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 31
    .line 32
    move-object/from16 v2, p2

    .line 33
    .line 34
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    move-object/from16 v3, p3

    .line 37
    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    and-int/lit8 v1, v3, 0x11

    .line 48
    .line 49
    if-eq v1, v5, :cond_0

    .line 50
    .line 51
    move v1, v12

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v11

    .line 54
    :goto_0
    and-int/2addr v3, v12

    .line 55
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_d

    .line 60
    .line 61
    iget-object v14, v10, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->items:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    or-int/2addr v1, v3

    .line 72
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    if-ne v3, v6, :cond_2

    .line 79
    .line 80
    :cond_1
    new-instance v3, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;

    .line 81
    .line 82
    invoke-direct {v3, v9, v10, v11}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    move-object v15, v3

    .line 89
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    or-int/2addr v1, v3

    .line 100
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-nez v1, :cond_3

    .line 105
    .line 106
    if-ne v3, v6, :cond_4

    .line 107
    .line 108
    :cond_3
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 109
    .line 110
    const/4 v1, 0x6

    .line 111
    invoke-direct {v3, v9, v10, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/Card;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    move-object/from16 v16, v3

    .line 118
    .line 119
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 120
    .line 121
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    or-int/2addr v1, v3

    .line 130
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-nez v1, :cond_5

    .line 135
    .line 136
    if-ne v3, v6, :cond_6

    .line 137
    .line 138
    :cond_5
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 139
    .line 140
    const/16 v1, 0xf

    .line 141
    .line 142
    invoke-direct {v3, v1, v9, v10}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    move-object/from16 v17, v3

    .line 149
    .line 150
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 151
    .line 152
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    or-int/2addr v1, v3

    .line 161
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-nez v1, :cond_7

    .line 166
    .line 167
    if-ne v3, v6, :cond_8

    .line 168
    .line 169
    :cond_7
    new-instance v3, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;

    .line 170
    .line 171
    invoke-direct {v3, v9, v10, v12}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_8
    move-object/from16 v18, v3

    .line 178
    .line 179
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 180
    .line 181
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    or-int/2addr v1, v3

    .line 190
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    or-int/2addr v1, v3

    .line 195
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-nez v1, :cond_9

    .line 200
    .line 201
    if-ne v3, v6, :cond_a

    .line 202
    .line 203
    :cond_9
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;

    .line 204
    .line 205
    const/4 v1, 0x5

    .line 206
    invoke-direct {v3, v8, v1, v10, v9}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    move-object/from16 v19, v3

    .line 213
    .line 214
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 215
    .line 216
    new-instance v1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;

    .line 217
    .line 218
    const/4 v3, 0x4

    .line 219
    invoke-direct {v1, v10, v7, v9, v3}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 220
    .line 221
    .line 222
    const v3, 0x386e60d3

    .line 223
    .line 224
    .line 225
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 226
    .line 227
    .line 228
    move-result-object v20

    .line 229
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    or-int/2addr v1, v3

    .line 238
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    if-nez v1, :cond_b

    .line 243
    .line 244
    if-ne v3, v6, :cond_c

    .line 245
    .line 246
    :cond_b
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 247
    .line 248
    const/16 v1, 0x19

    .line 249
    .line 250
    invoke-direct {v3, v1, v9, v10}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_c
    move-object/from16 v21, v3

    .line 257
    .line 258
    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 259
    .line 260
    const/high16 v23, 0xc00000

    .line 261
    .line 262
    iget-object v13, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 263
    .line 264
    move-object/from16 v22, v2

    .line 265
    .line 266
    invoke-static/range {v13 .. v23}, Lorg/wikipedia/util/TabUtil;->DidYouKnowModule(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_d
    move-object/from16 v22, v2

    .line 271
    .line 272
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 273
    .line 274
    .line 275
    :goto_1
    return-object v4

    .line 276
    :pswitch_0
    check-cast v10, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 277
    .line 278
    move-object/from16 v1, p1

    .line 279
    .line 280
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 281
    .line 282
    move-object/from16 v13, p2

    .line 283
    .line 284
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 285
    .line 286
    move-object/from16 v14, p3

    .line 287
    .line 288
    check-cast v14, Ljava/lang/Integer;

    .line 289
    .line 290
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v14

    .line 294
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    and-int/lit8 v1, v14, 0x11

    .line 298
    .line 299
    if-eq v1, v5, :cond_e

    .line 300
    .line 301
    move v1, v12

    .line 302
    goto :goto_2

    .line 303
    :cond_e
    move v1, v11

    .line 304
    :goto_2
    and-int/lit8 v5, v14, 0x1

    .line 305
    .line 306
    invoke-virtual {v13, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_1b

    .line 311
    .line 312
    iget-object v14, v10, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->events:Ljava/util/List;

    .line 313
    .line 314
    new-instance v1, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;

    .line 315
    .line 316
    invoke-direct {v1, v10, v7, v9}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayCard;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function1;)V

    .line 317
    .line 318
    .line 319
    const v5, -0x2fc8d543

    .line 320
    .line 321
    .line 322
    invoke-static {v5, v1, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    or-int/2addr v1, v5

    .line 335
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    if-nez v1, :cond_f

    .line 340
    .line 341
    if-ne v5, v6, :cond_10

    .line 342
    .line 343
    :cond_f
    new-instance v5, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda18;

    .line 344
    .line 345
    invoke-direct {v5, v9, v10, v11}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/onthisday/OnThisDayCard;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_10
    move-object/from16 v16, v5

    .line 352
    .line 353
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 354
    .line 355
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    or-int/2addr v1, v5

    .line 364
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    if-nez v1, :cond_11

    .line 369
    .line 370
    if-ne v5, v6, :cond_12

    .line 371
    .line 372
    :cond_11
    new-instance v5, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 373
    .line 374
    invoke-direct {v5, v9, v10, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/Card;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :cond_12
    move-object/from16 v17, v5

    .line 381
    .line 382
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 383
    .line 384
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    or-int/2addr v1, v3

    .line 393
    iget-object v0, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 394
    .line 395
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    or-int/2addr v1, v3

    .line 400
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    if-nez v1, :cond_13

    .line 405
    .line 406
    if-ne v3, v6, :cond_14

    .line 407
    .line 408
    :cond_13
    new-instance v3, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 409
    .line 410
    const/16 v1, 0x15

    .line 411
    .line 412
    invoke-direct {v3, v9, v10, v0, v1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_14
    move-object/from16 v18, v3

    .line 419
    .line 420
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 421
    .line 422
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    or-int/2addr v1, v3

    .line 431
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    if-nez v1, :cond_15

    .line 436
    .line 437
    if-ne v3, v6, :cond_16

    .line 438
    .line 439
    :cond_15
    new-instance v3, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 440
    .line 441
    const/16 v1, 0x9

    .line 442
    .line 443
    invoke-direct {v3, v1, v9, v10}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    :cond_16
    move-object/from16 v19, v3

    .line 450
    .line 451
    check-cast v19, Lkotlin/jvm/functions/Function3;

    .line 452
    .line 453
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    or-int/2addr v1, v3

    .line 462
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    if-nez v1, :cond_17

    .line 467
    .line 468
    if-ne v3, v6, :cond_18

    .line 469
    .line 470
    :cond_17
    new-instance v3, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda18;

    .line 471
    .line 472
    invoke-direct {v3, v9, v10, v12}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/onthisday/OnThisDayCard;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :cond_18
    move-object/from16 v20, v3

    .line 479
    .line 480
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 481
    .line 482
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    or-int/2addr v1, v3

    .line 491
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    or-int/2addr v1, v3

    .line 496
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    if-nez v1, :cond_19

    .line 501
    .line 502
    if-ne v3, v6, :cond_1a

    .line 503
    .line 504
    :cond_19
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;

    .line 505
    .line 506
    invoke-direct {v3, v8, v2, v10, v9}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    :cond_1a
    move-object/from16 v21, v3

    .line 513
    .line 514
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 515
    .line 516
    const/16 v23, 0x180

    .line 517
    .line 518
    move-object/from16 v22, v13

    .line 519
    .line 520
    move-object v13, v0

    .line 521
    invoke-static/range {v13 .. v23}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->OnThisDayModule(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 522
    .line 523
    .line 524
    goto :goto_3

    .line 525
    :cond_1b
    move-object/from16 v22, v13

    .line 526
    .line 527
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 528
    .line 529
    .line 530
    :goto_3
    return-object v4

    .line 531
    :pswitch_1
    check-cast v10, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 532
    .line 533
    move-object/from16 v1, p1

    .line 534
    .line 535
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 536
    .line 537
    move-object/from16 v13, p2

    .line 538
    .line 539
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 540
    .line 541
    move-object/from16 v14, p3

    .line 542
    .line 543
    check-cast v14, Ljava/lang/Integer;

    .line 544
    .line 545
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 546
    .line 547
    .line 548
    move-result v14

    .line 549
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    and-int/lit8 v1, v14, 0x11

    .line 553
    .line 554
    if-eq v1, v5, :cond_1c

    .line 555
    .line 556
    move v1, v12

    .line 557
    goto :goto_4

    .line 558
    :cond_1c
    move v1, v11

    .line 559
    :goto_4
    and-int/lit8 v5, v14, 0x1

    .line 560
    .line 561
    invoke-virtual {v13, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-eqz v1, :cond_29

    .line 566
    .line 567
    iget-object v14, v10, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 568
    .line 569
    new-instance v1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;

    .line 570
    .line 571
    invoke-direct {v1, v10, v7, v9, v2}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 572
    .line 573
    .line 574
    const v2, -0x66ea118

    .line 575
    .line 576
    .line 577
    invoke-static {v2, v1, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 578
    .line 579
    .line 580
    move-result-object v15

    .line 581
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    or-int/2addr v1, v2

    .line 590
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    if-nez v1, :cond_1d

    .line 595
    .line 596
    if-ne v2, v6, :cond_1e

    .line 597
    .line 598
    :cond_1d
    new-instance v2, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda11;

    .line 599
    .line 600
    invoke-direct {v2, v9, v10, v11}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/topread/TopReadCard;I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    :cond_1e
    move-object/from16 v16, v2

    .line 607
    .line 608
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 609
    .line 610
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    or-int/2addr v1, v2

    .line 619
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    if-nez v1, :cond_1f

    .line 624
    .line 625
    if-ne v2, v6, :cond_20

    .line 626
    .line 627
    :cond_1f
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 628
    .line 629
    invoke-direct {v2, v9, v10, v12}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/Card;I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    :cond_20
    move-object/from16 v17, v2

    .line 636
    .line 637
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 638
    .line 639
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    or-int/2addr v1, v2

    .line 648
    iget-object v0, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda50;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 649
    .line 650
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    or-int/2addr v1, v2

    .line 655
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    if-nez v1, :cond_21

    .line 660
    .line 661
    if-ne v2, v6, :cond_22

    .line 662
    .line 663
    :cond_21
    new-instance v2, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 664
    .line 665
    const/16 v1, 0x14

    .line 666
    .line 667
    invoke-direct {v2, v9, v10, v0, v1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    :cond_22
    move-object/from16 v18, v2

    .line 674
    .line 675
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 676
    .line 677
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    or-int/2addr v1, v2

    .line 686
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    if-nez v1, :cond_23

    .line 691
    .line 692
    if-ne v2, v6, :cond_24

    .line 693
    .line 694
    :cond_23
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 695
    .line 696
    const/16 v1, 0x18

    .line 697
    .line 698
    invoke-direct {v2, v1, v9, v10}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    :cond_24
    move-object/from16 v19, v2

    .line 705
    .line 706
    check-cast v19, Lkotlin/jvm/functions/Function2;

    .line 707
    .line 708
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    or-int/2addr v1, v2

    .line 717
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    if-nez v1, :cond_25

    .line 722
    .line 723
    if-ne v2, v6, :cond_26

    .line 724
    .line 725
    :cond_25
    new-instance v2, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda11;

    .line 726
    .line 727
    invoke-direct {v2, v9, v10, v12}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/topread/TopReadCard;I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    :cond_26
    move-object/from16 v20, v2

    .line 734
    .line 735
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 736
    .line 737
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v1

    .line 741
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    or-int/2addr v1, v2

    .line 746
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    or-int/2addr v1, v2

    .line 751
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    if-nez v1, :cond_27

    .line 756
    .line 757
    if-ne v2, v6, :cond_28

    .line 758
    .line 759
    :cond_27
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;

    .line 760
    .line 761
    invoke-direct {v2, v8, v3, v10, v9}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 765
    .line 766
    .line 767
    :cond_28
    move-object/from16 v21, v2

    .line 768
    .line 769
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 770
    .line 771
    const/16 v23, 0x180

    .line 772
    .line 773
    move-object/from16 v22, v13

    .line 774
    .line 775
    move-object v13, v0

    .line 776
    invoke-static/range {v13 .. v23}, Lokio/Okio__OkioKt;->TopReadModule(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/topread/TopRead;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 777
    .line 778
    .line 779
    goto :goto_5

    .line 780
    :cond_29
    move-object/from16 v22, v13

    .line 781
    .line 782
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 783
    .line 784
    .line 785
    :goto_5
    return-object v4

    .line 786
    nop

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
