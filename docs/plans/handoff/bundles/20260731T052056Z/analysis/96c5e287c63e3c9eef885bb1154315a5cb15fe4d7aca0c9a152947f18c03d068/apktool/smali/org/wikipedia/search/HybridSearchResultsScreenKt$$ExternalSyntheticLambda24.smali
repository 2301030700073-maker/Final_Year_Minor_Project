.class public final synthetic Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$0:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$2:Lkotlin/jvm/functions/Function4;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$3:Lkotlin/jvm/functions/Function3;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0x90

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    const/16 v5, 0x20

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 15
    .line 16
    iget-object v8, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$3:Lkotlin/jvm/functions/Function3;

    .line 17
    .line 18
    iget-object v9, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$2:Lkotlin/jvm/functions/Function4;

    .line 19
    .line 20
    iget-object v10, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$0:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v11, 0x1

    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 29
    .line 30
    move-object/from16 v12, p2

    .line 31
    .line 32
    check-cast v12, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v12

    .line 38
    move-object/from16 v13, p3

    .line 39
    .line 40
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    move-object/from16 v14, p4

    .line 43
    .line 44
    check-cast v14, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    and-int/lit8 v1, v14, 0x30

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    move v4, v5

    .line 64
    :cond_0
    or-int/2addr v14, v4

    .line 65
    :cond_1
    and-int/lit16 v1, v14, 0x91

    .line 66
    .line 67
    if-eq v1, v3, :cond_2

    .line 68
    .line 69
    move v1, v11

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v1, v6

    .line 72
    :goto_0
    and-int/lit8 v3, v14, 0x1

    .line 73
    .line 74
    invoke-virtual {v13, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_9

    .line 79
    .line 80
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lorg/wikipedia/search/SearchResult;

    .line 85
    .line 86
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    or-int/2addr v3, v4

    .line 95
    and-int/lit8 v4, v14, 0x70

    .line 96
    .line 97
    if-ne v4, v5, :cond_3

    .line 98
    .line 99
    move v10, v11

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v10, v6

    .line 102
    :goto_1
    or-int/2addr v3, v10

    .line 103
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    if-ne v10, v7, :cond_5

    .line 110
    .line 111
    :cond_4
    new-instance v10, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;

    .line 112
    .line 113
    invoke-direct {v10, v9, v1, v12, v11}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function4;Lorg/wikipedia/search/SearchResult;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    move-object/from16 v16, v10

    .line 120
    .line 121
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 122
    .line 123
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    or-int/2addr v3, v9

    .line 132
    if-ne v4, v5, :cond_6

    .line 133
    .line 134
    move v6, v11

    .line 135
    :cond_6
    or-int/2addr v3, v6

    .line 136
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    if-nez v3, :cond_7

    .line 141
    .line 142
    if-ne v4, v7, :cond_8

    .line 143
    .line 144
    :cond_7
    new-instance v4, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda15;

    .line 145
    .line 146
    invoke-direct {v4, v8, v1, v12, v11}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function3;Lorg/wikipedia/search/SearchResult;II)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    move-object/from16 v17, v4

    .line 153
    .line 154
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    const/16 v19, 0x0

    .line 157
    .line 158
    const/16 v20, 0x1

    .line 159
    .line 160
    move-object/from16 v18, v13

    .line 161
    .line 162
    const/4 v13, 0x0

    .line 163
    iget-object v15, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$1:Ljava/lang/String;

    .line 164
    .line 165
    move-object v14, v1

    .line 166
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultPageItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/search/SearchResult;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_9
    move-object/from16 v18, v13

    .line 171
    .line 172
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 173
    .line 174
    .line 175
    :goto_2
    return-object v2

    .line 176
    :pswitch_0
    move-object/from16 v1, p1

    .line 177
    .line 178
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 179
    .line 180
    move-object/from16 v12, p2

    .line 181
    .line 182
    check-cast v12, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    move-object/from16 v13, p3

    .line 189
    .line 190
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 191
    .line 192
    move-object/from16 v14, p4

    .line 193
    .line 194
    check-cast v14, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    and-int/lit8 v1, v14, 0x30

    .line 204
    .line 205
    if-nez v1, :cond_b

    .line 206
    .line 207
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_a

    .line 212
    .line 213
    move v4, v5

    .line 214
    :cond_a
    or-int/2addr v14, v4

    .line 215
    :cond_b
    and-int/lit16 v1, v14, 0x91

    .line 216
    .line 217
    if-eq v1, v3, :cond_c

    .line 218
    .line 219
    move v1, v11

    .line 220
    goto :goto_3

    .line 221
    :cond_c
    move v1, v6

    .line 222
    :goto_3
    and-int/lit8 v3, v14, 0x1

    .line 223
    .line 224
    invoke-virtual {v13, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_13

    .line 229
    .line 230
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Lorg/wikipedia/search/SearchResult;

    .line 235
    .line 236
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    or-int/2addr v3, v4

    .line 245
    and-int/lit8 v4, v14, 0x70

    .line 246
    .line 247
    if-ne v4, v5, :cond_d

    .line 248
    .line 249
    move v10, v11

    .line 250
    goto :goto_4

    .line 251
    :cond_d
    move v10, v6

    .line 252
    :goto_4
    or-int/2addr v3, v10

    .line 253
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    const/4 v14, 0x2

    .line 258
    if-nez v3, :cond_e

    .line 259
    .line 260
    if-ne v10, v7, :cond_f

    .line 261
    .line 262
    :cond_e
    new-instance v10, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;

    .line 263
    .line 264
    invoke-direct {v10, v9, v1, v12, v14}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function4;Lorg/wikipedia/search/SearchResult;II)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_f
    move-object/from16 v16, v10

    .line 271
    .line 272
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 273
    .line 274
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    or-int/2addr v3, v9

    .line 283
    if-ne v4, v5, :cond_10

    .line 284
    .line 285
    move v6, v11

    .line 286
    :cond_10
    or-int/2addr v3, v6

    .line 287
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    if-nez v3, :cond_11

    .line 292
    .line 293
    if-ne v4, v7, :cond_12

    .line 294
    .line 295
    :cond_11
    new-instance v4, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda15;

    .line 296
    .line 297
    invoke-direct {v4, v8, v1, v12, v14}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function3;Lorg/wikipedia/search/SearchResult;II)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_12
    move-object/from16 v17, v4

    .line 304
    .line 305
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 306
    .line 307
    const/16 v19, 0x0

    .line 308
    .line 309
    const/16 v20, 0x1

    .line 310
    .line 311
    move-object/from16 v18, v13

    .line 312
    .line 313
    const/4 v13, 0x0

    .line 314
    iget-object v15, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;->f$1:Ljava/lang/String;

    .line 315
    .line 316
    move-object v14, v1

    .line 317
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultPageItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/search/SearchResult;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_13
    move-object/from16 v18, v13

    .line 322
    .line 323
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 324
    .line 325
    .line 326
    :goto_5
    return-object v2

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
