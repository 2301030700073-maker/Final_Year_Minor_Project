.class public final synthetic Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/ForYouModule$Random;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/ForYouModule$Random;Lorg/wikipedia/dataclient/WikiSite;Landroid/content/Context;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouModule$Random;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$8:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$9:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
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
    move-object/from16 v2, p2

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    and-int/lit8 v4, v3, 0x6

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v4, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v4

    .line 37
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 38
    .line 39
    const/16 v6, 0x12

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x1

    .line 43
    if-eq v4, v6, :cond_2

    .line 44
    .line 45
    move v4, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v4, v7

    .line 48
    :goto_1
    and-int/2addr v3, v8

    .line 49
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_b

    .line 54
    .line 55
    iget-object v3, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouModule$Random;

    .line 56
    .line 57
    iget-object v4, v3, Lorg/wikipedia/feed/ForYouModule$Random;->cards:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast v4, Lorg/wikipedia/feed/model/RandomCard;

    .line 67
    .line 68
    new-instance v9, Lorg/wikipedia/history/HistoryEntry;

    .line 69
    .line 70
    iget-object v10, v4, Lorg/wikipedia/feed/model/RandomCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 71
    .line 72
    invoke-direct {v9, v6, v10}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 73
    .line 74
    .line 75
    iget-object v6, v4, Lorg/wikipedia/feed/model/RandomCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 76
    .line 77
    iget-object v10, v3, Lorg/wikipedia/feed/ForYouModule$Random;->cards:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lorg/wikipedia/feed/model/ForYouCard;

    .line 84
    .line 85
    iget-object v10, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 86
    .line 87
    iget-object v11, v10, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 88
    .line 89
    const v12, 0x7f1209ef

    .line 90
    .line 91
    .line 92
    new-array v13, v7, [Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v14, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v14, v11, v12, v13}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    new-instance v12, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 101
    .line 102
    iget-object v13, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$9:Lkotlin/jvm/functions/Function0;

    .line 103
    .line 104
    invoke-direct {v12, v13, v14, v10}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 105
    .line 106
    .line 107
    const v13, 0xb1c0b3b

    .line 108
    .line 109
    .line 110
    invoke-static {v13, v12, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    iget-object v13, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function2;

    .line 115
    .line 116
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    or-int/2addr v14, v15

    .line 125
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    or-int/2addr v14, v15

    .line 130
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 135
    .line 136
    if-nez v14, :cond_3

    .line 137
    .line 138
    if-ne v15, v5, :cond_4

    .line 139
    .line 140
    :cond_3
    new-instance v15, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda3;

    .line 141
    .line 142
    invoke-direct {v15, v13, v4, v9, v7}, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/feed/model/RandomCard;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 149
    .line 150
    iget-object v7, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function2;

    .line 151
    .line 152
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    or-int/2addr v13, v14

    .line 161
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    or-int/2addr v13, v14

    .line 166
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    if-nez v13, :cond_5

    .line 171
    .line 172
    if-ne v14, v5, :cond_6

    .line 173
    .line 174
    :cond_5
    new-instance v14, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda3;

    .line 175
    .line 176
    invoke-direct {v14, v7, v4, v9, v8}, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/feed/model/RandomCard;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 183
    .line 184
    iget-object v7, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function2;

    .line 185
    .line 186
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    or-int/2addr v8, v13

    .line 195
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    or-int/2addr v8, v13

    .line 200
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    if-nez v8, :cond_7

    .line 205
    .line 206
    if-ne v13, v5, :cond_8

    .line 207
    .line 208
    :cond_7
    new-instance v13, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda3;

    .line 209
    .line 210
    const/4 v8, 0x2

    .line 211
    invoke-direct {v13, v7, v4, v9, v8}, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/feed/model/RandomCard;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_8
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    iget-object v7, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$8:Lkotlin/jvm/functions/Function1;

    .line 220
    .line 221
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    or-int/2addr v8, v9

    .line 230
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    if-nez v8, :cond_9

    .line 235
    .line 236
    if-ne v9, v5, :cond_a

    .line 237
    .line 238
    :cond_9
    new-instance v9, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    const/16 v5, 0x18

    .line 241
    .line 242
    invoke-direct {v9, v5, v7, v4}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_a
    move-object/from16 v17, v9

    .line 249
    .line 250
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 251
    .line 252
    const/high16 v19, 0x6000000

    .line 253
    .line 254
    const/16 v20, 0x404c

    .line 255
    .line 256
    const/4 v4, 0x0

    .line 257
    const/4 v5, 0x0

    .line 258
    const/4 v8, 0x0

    .line 259
    move-object/from16 v18, v2

    .line 260
    .line 261
    move-object v2, v10

    .line 262
    move-object v10, v12

    .line 263
    move-object v12, v14

    .line 264
    iget-object v14, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function2;

    .line 265
    .line 266
    iget-object v0, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function0;

    .line 267
    .line 268
    const/16 v16, 0x0

    .line 269
    .line 270
    move-object v7, v6

    .line 271
    move-object v6, v3

    .line 272
    move-object v3, v7

    .line 273
    move-object v7, v1

    .line 274
    move-object v9, v11

    .line 275
    move-object v11, v15

    .line 276
    move-object v15, v0

    .line 277
    invoke-static/range {v2 .. v20}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouCardContent(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/CardVariation;ILorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/feed/model/ForYouCard;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_b
    move-object/from16 v18, v2

    .line 282
    .line 283
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 284
    .line 285
    .line 286
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 287
    .line 288
    return-object v0
.end method
