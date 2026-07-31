.class public final synthetic Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/ForYouModule$Discover;

.field public final synthetic f$1:I

.field public final synthetic f$10:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$11:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:I

.field public final synthetic f$6:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/ForYouModule$Discover;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Landroid/content/Context;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    .line 13
    .line 14
    iput p6, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function2;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$8:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$9:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$10:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$11:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    move-object/from16 v6, p2

    .line 12
    .line 13
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    move-object/from16 v2, p3

    .line 16
    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    and-int/lit8 v3, v2, 0x6

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v3, v4

    .line 37
    :goto_0
    or-int/2addr v2, v3

    .line 38
    :cond_1
    and-int/lit8 v3, v2, 0x13

    .line 39
    .line 40
    const/16 v5, 0x12

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    const/4 v8, 0x0

    .line 44
    if-eq v3, v5, :cond_2

    .line 45
    .line 46
    move v3, v7

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v3, v8

    .line 49
    :goto_1
    and-int/2addr v2, v7

    .line 50
    invoke-virtual {v6, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_d

    .line 55
    .line 56
    iget-object v2, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 57
    .line 58
    iget-object v3, v2, Lorg/wikipedia/feed/ForYouModule$Discover;->cards:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lorg/wikipedia/feed/model/ForYouCard;

    .line 65
    .line 66
    instance-of v3, v1, Lorg/wikipedia/feed/model/SeeAllRecommendationCard;

    .line 67
    .line 68
    move v5, v4

    .line 69
    iget-object v4, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    const v1, 0x788a169b

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    iget v3, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$1:I

    .line 82
    .line 83
    iget-object v5, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/feed/discover/DiscoverModuleKt;->SeeAllRecommendationsSlide(Landroidx/compose/ui/Modifier;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_3
    instance-of v3, v1, Lorg/wikipedia/feed/model/DiscoverCard;

    .line 94
    .line 95
    if-eqz v3, :cond_c

    .line 96
    .line 97
    const v3, 0x788e9cbf

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lorg/wikipedia/history/HistoryEntry;

    .line 104
    .line 105
    move-object v9, v1

    .line 106
    check-cast v9, Lorg/wikipedia/feed/model/DiscoverCard;

    .line 107
    .line 108
    iget-object v10, v9, Lorg/wikipedia/feed/model/DiscoverCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 109
    .line 110
    const/16 v11, 0x2c

    .line 111
    .line 112
    invoke-direct {v3, v11, v10}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 113
    .line 114
    .line 115
    iget-object v10, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 116
    .line 117
    new-array v11, v8, [Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v12, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    .line 120
    .line 121
    iget v13, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$5:I

    .line 122
    .line 123
    invoke-static {v12, v10, v13, v11}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    iget-object v11, v9, Lorg/wikipedia/feed/model/DiscoverCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 128
    .line 129
    const v13, 0x7f080198

    .line 130
    .line 131
    .line 132
    invoke-static {v13, v8, v6}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    iget-object v14, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 137
    .line 138
    new-array v15, v7, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v10, v15, v8

    .line 141
    .line 142
    const v10, 0x7f120274

    .line 143
    .line 144
    .line 145
    invoke-static {v12, v14, v10, v15}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    iget-object v12, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function2;

    .line 150
    .line 151
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v15

    .line 159
    or-int/2addr v14, v15

    .line 160
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    or-int/2addr v14, v15

    .line 165
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 170
    .line 171
    if-nez v14, :cond_4

    .line 172
    .line 173
    if-ne v15, v5, :cond_5

    .line 174
    .line 175
    :cond_4
    new-instance v15, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;

    .line 176
    .line 177
    invoke-direct {v15, v12, v9, v3, v8}, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/feed/model/DiscoverCard;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 184
    .line 185
    iget-object v12, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function2;

    .line 186
    .line 187
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v17

    .line 195
    or-int v14, v14, v17

    .line 196
    .line 197
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v17

    .line 201
    or-int v14, v14, v17

    .line 202
    .line 203
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    if-nez v14, :cond_6

    .line 208
    .line 209
    if-ne v8, v5, :cond_7

    .line 210
    .line 211
    :cond_6
    new-instance v8, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;

    .line 212
    .line 213
    invoke-direct {v8, v12, v9, v3, v7}, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/feed/model/DiscoverCard;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    move-object v12, v8

    .line 220
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 221
    .line 222
    iget-object v7, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$8:Lkotlin/jvm/functions/Function2;

    .line 223
    .line 224
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    or-int/2addr v8, v14

    .line 233
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v14

    .line 237
    or-int/2addr v8, v14

    .line 238
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    if-nez v8, :cond_8

    .line 243
    .line 244
    if-ne v14, v5, :cond_9

    .line 245
    .line 246
    :cond_8
    new-instance v14, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;

    .line 247
    .line 248
    const/4 v8, 0x2

    .line 249
    invoke-direct {v14, v7, v9, v3, v8}, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/feed/model/DiscoverCard;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_9
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 256
    .line 257
    iget-object v3, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$11:Lkotlin/jvm/functions/Function1;

    .line 258
    .line 259
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    or-int/2addr v7, v8

    .line 268
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    if-nez v7, :cond_a

    .line 273
    .line 274
    if-ne v8, v5, :cond_b

    .line 275
    .line 276
    :cond_a
    new-instance v8, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 277
    .line 278
    const/16 v5, 0x13

    .line 279
    .line 280
    invoke-direct {v8, v5, v3, v9}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_b
    move-object/from16 v17, v8

    .line 287
    .line 288
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 289
    .line 290
    const/high16 v19, 0x200000

    .line 291
    .line 292
    const/16 v20, 0x10c

    .line 293
    .line 294
    move-object/from16 v18, v6

    .line 295
    .line 296
    move-object v6, v2

    .line 297
    move-object v2, v4

    .line 298
    const/4 v4, 0x0

    .line 299
    const/4 v5, 0x0

    .line 300
    move-object v9, v10

    .line 301
    const/4 v10, 0x0

    .line 302
    move-object v8, v13

    .line 303
    move-object v13, v14

    .line 304
    iget-object v14, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$9:Lkotlin/jvm/functions/Function2;

    .line 305
    .line 306
    iget-object v0, v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;->f$10:Lkotlin/jvm/functions/Function0;

    .line 307
    .line 308
    const v16, 0x7f1201f5

    .line 309
    .line 310
    .line 311
    move-object v7, v1

    .line 312
    move-object v3, v11

    .line 313
    move-object v11, v15

    .line 314
    move-object v15, v0

    .line 315
    const/4 v0, 0x0

    .line 316
    invoke-static/range {v2 .. v20}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouCardContent(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/CardVariation;ILorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 317
    .line 318
    .line 319
    move-object/from16 v6, v18

    .line 320
    .line 321
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_c
    move v0, v8

    .line 326
    const v1, 0x789f8408

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 333
    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 337
    .line 338
    .line 339
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 340
    .line 341
    return-object v0
.end method
