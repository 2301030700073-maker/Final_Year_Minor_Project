.class public final synthetic Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$2:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$3:I

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$3:I

    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/feed/model/WikiSiteCard;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 17
    iput p5, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$2:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0xd

    .line 7
    .line 8
    const/16 v4, 0xc

    .line 9
    .line 10
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 11
    .line 12
    iget v6, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$3:I

    .line 13
    .line 14
    iget-object v7, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$2:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v9, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$1:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v10, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    .line 21
    .line 22
    const/16 v11, 0x10

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    const/4 v13, 0x0

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    check-cast v10, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 30
    .line 31
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

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
    if-eq v1, v11, :cond_0

    .line 55
    .line 56
    move v1, v12

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v1, v13

    .line 59
    :goto_0
    and-int/2addr v3, v12

    .line 60
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const/16 v18, 0x0

    .line 67
    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    iget v14, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$3:I

    .line 71
    .line 72
    iget-object v15, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda49;->f$2:Lkotlin/jvm/functions/Function1;

    .line 73
    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    move-object/from16 v19, v2

    .line 79
    .line 80
    invoke-static/range {v14 .. v20}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->ArticlesNumberView(ILkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/GapComposer;I)V

    .line 81
    .line 82
    .line 83
    move-object/from16 v0, v19

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {v10, v9, v1, v0, v13}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->UpdatesFrequencyView(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move-object v0, v2

    .line 91
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-object v8

    .line 95
    :pswitch_0
    move-object v15, v9

    .line 96
    check-cast v15, Lorg/wikipedia/feed/image/FeaturedImageCard;

    .line 97
    .line 98
    move-object v14, v10

    .line 99
    check-cast v14, Lorg/wikipedia/dataclient/WikiSite;

    .line 100
    .line 101
    move-object/from16 v0, p1

    .line 102
    .line 103
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 104
    .line 105
    move-object/from16 v1, p2

    .line 106
    .line 107
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 108
    .line 109
    move-object/from16 v9, p3

    .line 110
    .line 111
    check-cast v9, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    and-int/lit8 v0, v9, 0x11

    .line 121
    .line 122
    if-eq v0, v11, :cond_2

    .line 123
    .line 124
    move v0, v12

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move v0, v13

    .line 127
    :goto_2
    and-int/2addr v9, v12

    .line 128
    invoke-virtual {v1, v9, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_f

    .line 133
    .line 134
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    if-nez v0, :cond_3

    .line 143
    .line 144
    if-ne v9, v5, :cond_4

    .line 145
    .line 146
    :cond_3
    new-instance v9, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 147
    .line 148
    const/16 v0, 0xa

    .line 149
    .line 150
    invoke-direct {v9, v7, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    move-object/from16 v16, v9

    .line 157
    .line 158
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 159
    .line 160
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    or-int/2addr v0, v9

    .line 169
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    if-nez v0, :cond_5

    .line 174
    .line 175
    if-ne v9, v5, :cond_6

    .line 176
    .line 177
    :cond_5
    new-instance v9, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;

    .line 178
    .line 179
    invoke-direct {v9, v7, v15, v13}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda26;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/image/FeaturedImageCard;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    move-object/from16 v17, v9

    .line 186
    .line 187
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 188
    .line 189
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    or-int/2addr v0, v9

    .line 198
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    if-nez v0, :cond_7

    .line 203
    .line 204
    if-ne v9, v5, :cond_8

    .line 205
    .line 206
    :cond_7
    new-instance v9, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 207
    .line 208
    invoke-direct {v9, v7, v15}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/image/FeaturedImageCard;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    move-object/from16 v18, v9

    .line 215
    .line 216
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 217
    .line 218
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    if-nez v0, :cond_9

    .line 227
    .line 228
    if-ne v9, v5, :cond_a

    .line 229
    .line 230
    :cond_9
    new-instance v9, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 231
    .line 232
    invoke-direct {v9, v7, v4}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_a
    move-object/from16 v19, v9

    .line 239
    .line 240
    check-cast v19, Lkotlin/jvm/functions/Function1;

    .line 241
    .line 242
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    if-nez v0, :cond_b

    .line 251
    .line 252
    if-ne v4, v5, :cond_c

    .line 253
    .line 254
    :cond_b
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 255
    .line 256
    invoke-direct {v4, v7, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_c
    move-object/from16 v20, v4

    .line 263
    .line 264
    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 265
    .line 266
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    or-int/2addr v0, v3

    .line 275
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    or-int/2addr v0, v3

    .line 280
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    if-nez v0, :cond_d

    .line 285
    .line 286
    if-ne v3, v5, :cond_e

    .line 287
    .line 288
    :cond_d
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;

    .line 289
    .line 290
    invoke-direct {v3, v6, v2, v15, v7}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_e
    move-object/from16 v21, v3

    .line 297
    .line 298
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 299
    .line 300
    const/16 v23, 0x0

    .line 301
    .line 302
    move-object/from16 v22, v1

    .line 303
    .line 304
    invoke-static/range {v14 .. v23}, Lorg/wikipedia/util/UriUtil;->FeaturedImageModule(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/image/FeaturedImageCard;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_f
    move-object/from16 v22, v1

    .line 309
    .line 310
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 311
    .line 312
    .line 313
    :goto_3
    return-object v8

    .line 314
    :pswitch_1
    check-cast v9, Lorg/wikipedia/feed/news/NewsCard;

    .line 315
    .line 316
    move-object v14, v10

    .line 317
    check-cast v14, Lorg/wikipedia/dataclient/WikiSite;

    .line 318
    .line 319
    move-object/from16 v0, p1

    .line 320
    .line 321
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 322
    .line 323
    move-object/from16 v1, p2

    .line 324
    .line 325
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 326
    .line 327
    move-object/from16 v2, p3

    .line 328
    .line 329
    check-cast v2, Ljava/lang/Integer;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    and-int/lit8 v0, v2, 0x11

    .line 339
    .line 340
    if-eq v0, v11, :cond_10

    .line 341
    .line 342
    move v13, v12

    .line 343
    :cond_10
    and-int/lit8 v0, v2, 0x1

    .line 344
    .line 345
    invoke-virtual {v1, v0, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_19

    .line 350
    .line 351
    iget-object v15, v9, Lorg/wikipedia/feed/news/NewsCard;->news:Ljava/util/List;

    .line 352
    .line 353
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    or-int/2addr v0, v2

    .line 362
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    if-nez v0, :cond_11

    .line 367
    .line 368
    if-ne v2, v5, :cond_12

    .line 369
    .line 370
    :cond_11
    new-instance v2, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 371
    .line 372
    invoke-direct {v2, v11, v7, v9}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_12
    move-object/from16 v16, v2

    .line 379
    .line 380
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 381
    .line 382
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    or-int/2addr v0, v2

    .line 391
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    if-nez v0, :cond_13

    .line 396
    .line 397
    if-ne v2, v5, :cond_14

    .line 398
    .line 399
    :cond_13
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 400
    .line 401
    const/16 v0, 0xe

    .line 402
    .line 403
    invoke-direct {v2, v0, v7, v9}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    :cond_14
    move-object/from16 v17, v2

    .line 410
    .line 411
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 412
    .line 413
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    or-int/2addr v0, v2

    .line 422
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    if-nez v0, :cond_15

    .line 427
    .line 428
    if-ne v2, v5, :cond_16

    .line 429
    .line 430
    :cond_15
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 431
    .line 432
    invoke-direct {v2, v7, v9, v4}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/Card;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :cond_16
    move-object/from16 v18, v2

    .line 439
    .line 440
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 441
    .line 442
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    or-int/2addr v0, v2

    .line 451
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    or-int/2addr v0, v2

    .line 456
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    if-nez v0, :cond_17

    .line 461
    .line 462
    if-ne v2, v5, :cond_18

    .line 463
    .line 464
    :cond_17
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;

    .line 465
    .line 466
    const/4 v0, 0x7

    .line 467
    invoke-direct {v2, v6, v0, v9, v7}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    :cond_18
    move-object/from16 v19, v2

    .line 474
    .line 475
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 476
    .line 477
    const/16 v21, 0x0

    .line 478
    .line 479
    move-object/from16 v20, v1

    .line 480
    .line 481
    invoke-static/range {v14 .. v21}, Lokhttp3/HttpUrl$Companion;->NewsModule(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 482
    .line 483
    .line 484
    goto :goto_4

    .line 485
    :cond_19
    move-object/from16 v20, v1

    .line 486
    .line 487
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 488
    .line 489
    .line 490
    :goto_4
    return-object v8

    .line 491
    :pswitch_2
    check-cast v10, Lorg/wikipedia/dataclient/WikiSite;

    .line 492
    .line 493
    check-cast v9, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    .line 494
    .line 495
    move-object/from16 v0, p1

    .line 496
    .line 497
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 498
    .line 499
    move-object/from16 v1, p2

    .line 500
    .line 501
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 502
    .line 503
    move-object/from16 v4, p3

    .line 504
    .line 505
    check-cast v4, Ljava/lang/Integer;

    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    and-int/lit8 v0, v4, 0x11

    .line 515
    .line 516
    if-eq v0, v11, :cond_1a

    .line 517
    .line 518
    move v0, v12

    .line 519
    goto :goto_5

    .line 520
    :cond_1a
    move v0, v13

    .line 521
    :goto_5
    and-int/2addr v4, v12

    .line 522
    invoke-virtual {v1, v4, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_27

    .line 527
    .line 528
    iget-object v0, v9, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 529
    .line 530
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    or-int/2addr v4, v11

    .line 539
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v11

    .line 543
    or-int/2addr v4, v11

    .line 544
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v11

    .line 548
    if-nez v4, :cond_1b

    .line 549
    .line 550
    if-ne v11, v5, :cond_1c

    .line 551
    .line 552
    :cond_1b
    new-instance v11, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;

    .line 553
    .line 554
    invoke-direct {v11, v13, v7, v10, v9}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    :cond_1c
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 561
    .line 562
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v13

    .line 570
    or-int/2addr v4, v13

    .line 571
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v13

    .line 575
    if-nez v4, :cond_1d

    .line 576
    .line 577
    if-ne v13, v5, :cond_1e

    .line 578
    .line 579
    :cond_1d
    new-instance v13, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 580
    .line 581
    invoke-direct {v13, v3, v7, v9}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    :cond_1e
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 588
    .line 589
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v4

    .line 597
    or-int/2addr v3, v4

    .line 598
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    if-nez v3, :cond_1f

    .line 603
    .line 604
    if-ne v4, v5, :cond_20

    .line 605
    .line 606
    :cond_1f
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 607
    .line 608
    invoke-direct {v4, v7, v9, v2}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/Card;I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    :cond_20
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 615
    .line 616
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    or-int/2addr v2, v3

    .line 625
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    or-int/2addr v2, v3

    .line 630
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    if-nez v2, :cond_21

    .line 635
    .line 636
    if-ne v3, v5, :cond_22

    .line 637
    .line 638
    :cond_21
    new-instance v3, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;

    .line 639
    .line 640
    invoke-direct {v3, v12, v7, v10, v9}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    :cond_22
    move-object v14, v3

    .line 647
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 648
    .line 649
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    or-int/2addr v2, v3

    .line 658
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    or-int/2addr v2, v3

    .line 663
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    if-nez v2, :cond_23

    .line 668
    .line 669
    if-ne v3, v5, :cond_24

    .line 670
    .line 671
    :cond_23
    new-instance v3, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;

    .line 672
    .line 673
    const/4 v2, 0x2

    .line 674
    invoke-direct {v3, v2, v7, v10, v9}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/featured/FeaturedArticleCard;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    :cond_24
    move-object v15, v3

    .line 681
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 682
    .line 683
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    or-int/2addr v2, v3

    .line 692
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    or-int/2addr v2, v3

    .line 697
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    if-nez v2, :cond_25

    .line 702
    .line 703
    if-ne v3, v5, :cond_26

    .line 704
    .line 705
    :cond_25
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;

    .line 706
    .line 707
    const/4 v2, 0x6

    .line 708
    invoke-direct {v3, v6, v2, v9, v7}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    :cond_26
    move-object/from16 v16, v3

    .line 715
    .line 716
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 717
    .line 718
    const/16 v18, 0x0

    .line 719
    .line 720
    move-object/from16 v17, v1

    .line 721
    .line 722
    move-object v9, v10

    .line 723
    move-object v12, v13

    .line 724
    move-object v10, v0

    .line 725
    move-object v13, v4

    .line 726
    invoke-static/range {v9 .. v18}, Lokhttp3/Cookie$Companion;->FeaturedArticleModule(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 727
    .line 728
    .line 729
    goto :goto_6

    .line 730
    :cond_27
    move-object/from16 v17, v1

    .line 731
    .line 732
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 733
    .line 734
    .line 735
    :goto_6
    return-object v8

    .line 736
    nop

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
