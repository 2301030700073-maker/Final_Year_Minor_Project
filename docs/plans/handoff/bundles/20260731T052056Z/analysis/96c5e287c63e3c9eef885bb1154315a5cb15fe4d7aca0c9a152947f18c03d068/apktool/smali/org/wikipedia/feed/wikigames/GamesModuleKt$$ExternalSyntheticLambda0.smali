.class public final synthetic Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/ForYouModule$Games;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$6:Landroid/content/Context;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/ForYouModule$Games;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouModule$Games;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$6:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    move-object v8, p2

    .line 8
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    check-cast p3, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    and-int/lit8 p3, p2, 0x6

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const/4 p3, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p3, v0

    .line 30
    :goto_0
    or-int/2addr p2, p3

    .line 31
    :cond_1
    and-int/lit8 p3, p2, 0x13

    .line 32
    .line 33
    const/16 v1, 0x12

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v11, 0x0

    .line 37
    if-eq p3, v1, :cond_2

    .line 38
    .line 39
    move p3, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move p3, v11

    .line 42
    :goto_1
    and-int/2addr p2, v2

    .line 43
    invoke-virtual {v8, p2, p3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_c

    .line 48
    .line 49
    iget-object p2, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouModule$Games;

    .line 50
    .line 51
    iget-object p3, p2, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    const/high16 v1, 0x41800000    # 16.0f

    .line 58
    .line 59
    if-le p3, v2, :cond_3

    .line 60
    .line 61
    const/high16 p3, 0x42200000    # 40.0f

    .line 62
    .line 63
    move v3, p3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v3, v1

    .line 66
    :goto_2
    sget-object p3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-static {p3, v1, v2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object p3, p2, Lorg/wikipedia/feed/ForYouModule$Games;->cards:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lorg/wikipedia/feed/model/ForYouCard;

    .line 80
    .line 81
    instance-of p3, p1, Lorg/wikipedia/feed/model/WikiGameCard;

    .line 82
    .line 83
    iget-object v1, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 84
    .line 85
    if-eqz p3, :cond_b

    .line 86
    .line 87
    const p3, 0x2599eba9

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 91
    .line 92
    .line 93
    move-object p3, p1

    .line 94
    check-cast p3, Lorg/wikipedia/feed/model/WikiGameCard;

    .line 95
    .line 96
    iget-object v2, p3, Lorg/wikipedia/feed/model/WikiGameCard;->wikiGame:Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 97
    .line 98
    instance-of v4, v2, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 99
    .line 100
    if-eqz v4, :cond_a

    .line 101
    .line 102
    const v4, 0x1368cfc

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 106
    .line 107
    .line 108
    move-object v4, v2

    .line 109
    iget-object v2, v4, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;->state:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

    .line 110
    .line 111
    iget-object v5, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    or-int/2addr v6, v7

    .line 122
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 127
    .line 128
    if-nez v6, :cond_4

    .line 129
    .line 130
    if-ne v7, v9, :cond_5

    .line 131
    .line 132
    :cond_4
    new-instance v7, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    const/16 v6, 0x19

    .line 135
    .line 136
    invoke-direct {v7, v6, v5, v4}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    move-object v4, v7

    .line 143
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 144
    .line 145
    iget-object v5, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function2;

    .line 146
    .line 147
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    or-int/2addr v6, v7

    .line 156
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    or-int/2addr v6, v7

    .line 161
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    if-nez v6, :cond_6

    .line 166
    .line 167
    if-ne v7, v9, :cond_7

    .line 168
    .line 169
    :cond_6
    new-instance v7, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 170
    .line 171
    const/16 v6, 0xf

    .line 172
    .line 173
    invoke-direct {v7, v5, p2, p3, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    move-object v5, v7

    .line 180
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 181
    .line 182
    iget-object p2, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function1;

    .line 183
    .line 184
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    or-int/2addr p1, v6

    .line 193
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-nez p1, :cond_8

    .line 198
    .line 199
    if-ne v6, v9, :cond_9

    .line 200
    .line 201
    :cond_8
    new-instance v6, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    const/16 p1, 0x1a

    .line 204
    .line 205
    invoke-direct {v6, p1, p2, p3}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    move-object v7, v6

    .line 212
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 213
    .line 214
    const/4 v9, 0x6

    .line 215
    iget-object v6, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    .line 216
    .line 217
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/feed/wikigames/GamesModuleKt;->OnThisDayGameModuleCard-aA_HZ9I(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_a
    const p0, 0x1368379

    .line 228
    .line 229
    .line 230
    invoke-static {v8, p0, v11}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    throw p0

    .line 235
    :cond_b
    const p1, 0x25a3a0bf

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 239
    .line 240
    .line 241
    iget-object p1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 242
    .line 243
    const p2, 0x7f120287

    .line 244
    .line 245
    .line 246
    new-array p3, v11, [Ljava/lang/Object;

    .line 247
    .line 248
    iget-object v2, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$6:Landroid/content/Context;

    .line 249
    .line 250
    invoke-static {v2, p1, p2, p3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object p2, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 255
    .line 256
    const p3, 0x7f120286

    .line 257
    .line 258
    .line 259
    new-array v4, v11, [Ljava/lang/Object;

    .line 260
    .line 261
    invoke-static {v2, p2, p3, v4}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    iget-object p3, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 266
    .line 267
    const v1, 0x7f120285

    .line 268
    .line 269
    .line 270
    new-array v4, v11, [Ljava/lang/Object;

    .line 271
    .line 272
    invoke-static {v2, p3, v1, v4}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    const p3, 0x7f08015d

    .line 277
    .line 278
    .line 279
    invoke-static {p3, v11, v8}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 280
    .line 281
    .line 282
    move-result-object p3

    .line 283
    sget-object v4, Lorg/wikipedia/feed/wikigames/GamesModuleKt;->promptImageUrls:Ljava/util/List;

    .line 284
    .line 285
    const v9, 0x31000

    .line 286
    .line 287
    .line 288
    const/4 v10, 0x0

    .line 289
    iget-object v7, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function0;

    .line 290
    .line 291
    move-object v1, p2

    .line 292
    move-object v5, v0

    .line 293
    move v6, v3

    .line 294
    move-object v0, p1

    .line 295
    move-object v3, p3

    .line 296
    invoke-static/range {v0 .. v10}, Lorg/wikipedia/feed/ForYouCardKt;->FeedFeatureTeaserModule-0vH8DBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Ljava/util/List;Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 304
    .line 305
    .line 306
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 307
    .line 308
    return-object p0
.end method
