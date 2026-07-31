.class public abstract Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# static fields
.field public static failedClearing:Z

.field public static groupAndOutChildren:Lkotlin/Pair;

.field public static startTouchMillis:J

.field public static startTouchX:F

.field public static startTouchY:F

.field public static touchSlopPx:I


# direct methods
.method public static final ContinueReadingModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$ContinueReading;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v12, p10

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, 0x5bdc7f5f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    move-object/from16 v13, p0

    .line 18
    .line 19
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p11, v0

    .line 29
    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v3

    .line 44
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v3, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v3

    .line 56
    move-object/from16 v4, p3

    .line 57
    .line 58
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    const/16 v3, 0x800

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v3, 0x400

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v3

    .line 70
    move-object/from16 v5, p4

    .line 71
    .line 72
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    const/16 v3, 0x4000

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const/16 v3, 0x2000

    .line 82
    .line 83
    :goto_4
    or-int/2addr v0, v3

    .line 84
    move-object/from16 v6, p5

    .line 85
    .line 86
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    const/high16 v3, 0x20000

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_5
    const/high16 v3, 0x10000

    .line 96
    .line 97
    :goto_5
    or-int/2addr v0, v3

    .line 98
    move-object/from16 v7, p6

    .line 99
    .line 100
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    const/high16 v3, 0x100000

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_6
    const/high16 v3, 0x80000

    .line 110
    .line 111
    :goto_6
    or-int/2addr v0, v3

    .line 112
    move-object/from16 v8, p7

    .line 113
    .line 114
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_7

    .line 119
    .line 120
    const/high16 v3, 0x800000

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_7
    const/high16 v3, 0x400000

    .line 124
    .line 125
    :goto_7
    or-int/2addr v0, v3

    .line 126
    move-object/from16 v14, p8

    .line 127
    .line 128
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    const/high16 v3, 0x4000000

    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_8
    const/high16 v3, 0x2000000

    .line 138
    .line 139
    :goto_8
    or-int/2addr v0, v3

    .line 140
    move-object/from16 v10, p9

    .line 141
    .line 142
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_9

    .line 147
    .line 148
    const/high16 v3, 0x20000000

    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_9
    const/high16 v3, 0x10000000

    .line 152
    .line 153
    :goto_9
    or-int v15, v0, v3

    .line 154
    .line 155
    const v0, 0x12492493

    .line 156
    .line 157
    .line 158
    and-int/2addr v0, v15

    .line 159
    const v3, 0x12492492

    .line 160
    .line 161
    .line 162
    const/4 v9, 0x0

    .line 163
    if-eq v0, v3, :cond_a

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    goto :goto_a

    .line 167
    :cond_a
    move v0, v9

    .line 168
    :goto_a
    and-int/lit8 v3, v15, 0x1

    .line 169
    .line 170
    invoke-virtual {v12, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_d

    .line 175
    .line 176
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 177
    .line 178
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/content/Context;

    .line 183
    .line 184
    iget-object v3, v1, Lorg/wikipedia/feed/ForYouModule$ContinueReading;->cards:Ljava/util/List;

    .line 185
    .line 186
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Lorg/wikipedia/feed/model/ForYouCard;

    .line 191
    .line 192
    if-eqz v3, :cond_b

    .line 193
    .line 194
    invoke-virtual {v3}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    goto :goto_b

    .line 199
    :cond_b
    const/4 v3, 0x0

    .line 200
    :goto_b
    if-eqz v3, :cond_c

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    :cond_c
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    move-object v4, v0

    .line 211
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda2;

    .line 212
    .line 213
    const/4 v11, 0x2

    .line 214
    move-object v9, v8

    .line 215
    move-object v8, v7

    .line 216
    move-object v7, v5

    .line 217
    move-object/from16 v5, p3

    .line 218
    .line 219
    invoke-direct/range {v0 .. v11}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/feed/ForYouModule;Lorg/wikipedia/dataclient/WikiSite;ILandroid/content/Context;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    .line 220
    .line 221
    .line 222
    const v1, 0x7e7e5c8b

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    and-int/lit8 v0, v15, 0xe

    .line 230
    .line 231
    or-int/lit16 v0, v0, 0xc00

    .line 232
    .line 233
    shr-int/lit8 v1, v15, 0x3

    .line 234
    .line 235
    and-int/lit8 v1, v1, 0x70

    .line 236
    .line 237
    or-int/2addr v0, v1

    .line 238
    shr-int/lit8 v1, v15, 0x12

    .line 239
    .line 240
    and-int/lit16 v1, v1, 0x380

    .line 241
    .line 242
    or-int v5, v0, v1

    .line 243
    .line 244
    move-object/from16 v1, p2

    .line 245
    .line 246
    move-object v4, v12

    .line 247
    move-object v0, v13

    .line 248
    move-object v2, v14

    .line 249
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouModulePager(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/ForYouModule;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 250
    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_d
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 254
    .line 255
    .line 256
    :goto_c
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    if-eqz v13, :cond_e

    .line 261
    .line 262
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda13;

    .line 263
    .line 264
    const/4 v12, 0x2

    .line 265
    move-object/from16 v1, p0

    .line 266
    .line 267
    move-object/from16 v2, p1

    .line 268
    .line 269
    move-object/from16 v3, p2

    .line 270
    .line 271
    move-object/from16 v4, p3

    .line 272
    .line 273
    move-object/from16 v5, p4

    .line 274
    .line 275
    move-object/from16 v6, p5

    .line 276
    .line 277
    move-object/from16 v7, p6

    .line 278
    .line 279
    move-object/from16 v8, p7

    .line 280
    .line 281
    move-object/from16 v9, p8

    .line 282
    .line 283
    move-object/from16 v10, p9

    .line 284
    .line 285
    move/from16 v11, p11

    .line 286
    .line 287
    invoke-direct/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    .line 288
    .line 289
    .line 290
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 291
    .line 292
    :cond_e
    return-void
.end method

.method public static final HomeFeedSettingsScreen(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v15, p6

    .line 4
    .line 5
    const v0, 0x6e8dd086

    .line 6
    .line 7
    .line 8
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, p7, 0x6

    .line 12
    .line 13
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x10

    .line 23
    .line 24
    :goto_0
    or-int/2addr v0, v1

    .line 25
    move-object/from16 v3, p2

    .line 26
    .line 27
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x100

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x80

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    move-object/from16 v4, p3

    .line 40
    .line 41
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x800

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x400

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    move-object/from16 v5, p4

    .line 54
    .line 55
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    const/16 v1, 0x4000

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/16 v1, 0x2000

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v1

    .line 67
    move-object/from16 v6, p5

    .line 68
    .line 69
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    const/high16 v1, 0x20000

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const/high16 v1, 0x10000

    .line 79
    .line 80
    :goto_4
    or-int/2addr v0, v1

    .line 81
    const v1, 0x12493

    .line 82
    .line 83
    .line 84
    and-int/2addr v1, v0

    .line 85
    const v7, 0x12492

    .line 86
    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x1

    .line 90
    if-eq v1, v7, :cond_5

    .line 91
    .line 92
    move v1, v9

    .line 93
    goto :goto_5

    .line 94
    :cond_5
    move v1, v8

    .line 95
    :goto_5
    and-int/2addr v0, v9

    .line 96
    invoke-virtual {v15, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;

    .line 103
    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    invoke-direct {v0, v2, v1, v8}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function0;IB)V

    .line 107
    .line 108
    .line 109
    const v1, 0x42dd174a

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 117
    .line 118
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 123
    .line 124
    iget-wide v9, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 125
    .line 126
    new-instance v3, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda13;

    .line 127
    .line 128
    const/4 v8, 0x4

    .line 129
    move-object v7, v5

    .line 130
    move-object v5, v4

    .line 131
    move-object v4, v6

    .line 132
    move-object/from16 v6, p2

    .line 133
    .line 134
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 135
    .line 136
    .line 137
    const v1, 0x7ee92795

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v3, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    const v16, 0x30000036

    .line 145
    .line 146
    .line 147
    const/16 v17, 0x1bc

    .line 148
    .line 149
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v8, 0x0

    .line 155
    const-wide/16 v11, 0x0

    .line 156
    .line 157
    const/4 v13, 0x0

    .line 158
    move-object v4, v0

    .line 159
    invoke-static/range {v3 .. v17}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 160
    .line 161
    .line 162
    move-object v1, v3

    .line 163
    goto :goto_6

    .line 164
    :cond_6
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 165
    .line 166
    .line 167
    move-object/from16 v1, p0

    .line 168
    .line 169
    :goto_6
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    if-eqz v9, :cond_7

    .line 174
    .line 175
    new-instance v0, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda2;

    .line 176
    .line 177
    const/4 v8, 0x5

    .line 178
    move-object/from16 v3, p2

    .line 179
    .line 180
    move-object/from16 v4, p3

    .line 181
    .line 182
    move-object/from16 v5, p4

    .line 183
    .line 184
    move-object/from16 v6, p5

    .line 185
    .line 186
    move/from16 v7, p7

    .line 187
    .line 188
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 189
    .line 190
    .line 191
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 192
    .line 193
    :cond_7
    return-void
.end method

.method public static dispatchTouchEvent(Landroid/view/Window;Landroid/view/MotionEvent;)V
    .locals 16

    .line 1
    sget v0, Lorg/jsoup/select/NodeTraversor;->touchSlopPx:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lorg/jsoup/select/NodeTraversor;->touchSlopPx:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_7

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    sget-wide v4, Lorg/jsoup/select/NodeTraversor;->startTouchMillis:J

    .line 38
    .line 39
    sub-long/2addr v2, v4

    .line 40
    sget v0, Lorg/jsoup/select/NodeTraversor;->startTouchX:F

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    sub-float/2addr v0, v4

    .line 47
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sget v4, Lorg/jsoup/select/NodeTraversor;->startTouchY:F

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    sub-float/2addr v4, v5

    .line 58
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    sget v5, Lorg/jsoup/select/NodeTraversor;->touchSlopPx:I

    .line 63
    .line 64
    int-to-float v5, v5

    .line 65
    cmpg-float v0, v0, v5

    .line 66
    .line 67
    if-gtz v0, :cond_6

    .line 68
    .line 69
    cmpg-float v0, v4, v5

    .line 70
    .line 71
    if-gtz v0, :cond_6

    .line 72
    .line 73
    new-instance v0, Landroid/graphics/Point;

    .line 74
    .line 75
    sget v4, Lorg/jsoup/select/NodeTraversor;->startTouchX:F

    .line 76
    .line 77
    float-to-int v4, v4

    .line 78
    sget v5, Lorg/jsoup/select/NodeTraversor;->startTouchY:F

    .line 79
    .line 80
    float-to-int v5, v5

    .line 81
    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    new-array v5, v5, [I

    .line 93
    .line 94
    new-instance v6, Landroidx/core/view/ViewKt$allViews$1;

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    invoke-direct {v6, v7, v4, v8}, Landroidx/core/view/ViewKt$allViews$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v6}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    move-object v6, v8

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {v4}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_3

    .line 111
    .line 112
    invoke-virtual {v4}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    move-object v10, v9

    .line 117
    check-cast v10, Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    .line 121
    .line 122
    aget v11, v5, v7

    .line 123
    .line 124
    aget v12, v5, v1

    .line 125
    .line 126
    new-instance v13, Landroid/graphics/Rect;

    .line 127
    .line 128
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    add-int/2addr v14, v11

    .line 133
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    add-int/2addr v15, v12

    .line 138
    invoke-direct {v13, v11, v12, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 139
    .line 140
    .line 141
    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 142
    .line 143
    iget v12, v0, Landroid/graphics/Point;->y:I

    .line 144
    .line 145
    invoke-virtual {v13, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-eqz v11, :cond_2

    .line 150
    .line 151
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-nez v11, :cond_2

    .line 156
    .line 157
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-eqz v11, :cond_2

    .line 162
    .line 163
    invoke-virtual {v10}, Landroid/view/View;->isClickable()Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-eqz v10, :cond_2

    .line 168
    .line 169
    move-object v6, v9

    .line 170
    goto :goto_0

    .line 171
    :cond_3
    check-cast v6, Landroid/view/View;

    .line 172
    .line 173
    if-eqz v6, :cond_6

    .line 174
    .line 175
    instance-of v0, v6, Landroid/widget/TextView;

    .line 176
    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    move-object v0, v6

    .line 180
    check-cast v0, Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    instance-of v0, v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 187
    .line 188
    if-nez v0, :cond_6

    .line 189
    .line 190
    :cond_4
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    int-to-long v0, v0

    .line 195
    cmp-long v0, v2, v0

    .line 196
    .line 197
    if-lez v0, :cond_5

    .line 198
    .line 199
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v6}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableNameForView(Landroid/view/View;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 216
    .line 217
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 218
    .line 219
    invoke-static {v1, v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, ".longclick"

    .line 232
    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-direct {v2, v1, v0}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_5
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v6}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 260
    .line 261
    .line 262
    :cond_6
    :goto_1
    return-void

    .line 263
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 264
    .line 265
    .line 266
    move-result-wide v0

    .line 267
    sput-wide v0, Lorg/jsoup/select/NodeTraversor;->startTouchMillis:J

    .line 268
    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    sput v0, Lorg/jsoup/select/NodeTraversor;->startTouchX:F

    .line 274
    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    sput v0, Lorg/jsoup/select/NodeTraversor;->startTouchY:F

    .line 280
    .line 281
    return-void
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const v1, 0x7f1205d3

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v2, "org.wikipedia"

    .line 20
    .line 21
    const/16 v3, 0x80

    .line 22
    .line 23
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    new-array v3, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 36
    .line 37
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-nez p0, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v0, p0

    .line 64
    :catchall_0
    :goto_0
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 65
    .line 66
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-object v0
.end method

.method public static getColors(Landroidx/compose/runtime/GapComposer;)Lorg/wikipedia/compose/theme/WikipediaColor;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 8
    .line 9
    return-object p0
.end method

.method public static isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lokhttp3/Response;->code:I

    .line 5
    .line 6
    const/16 v1, 0xc8

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x19a

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x19e

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x1f5

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0xcb

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0xcc

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x133

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    const/16 v1, 0x134

    .line 35
    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x194

    .line 39
    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    const/16 v1, 0x195

    .line 43
    .line 44
    if-eq v0, v1, :cond_1

    .line 45
    .line 46
    packed-switch v0, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v0, v0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 64
    .line 65
    const/4 v1, -0x1

    .line 66
    if-ne v0, v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-boolean v0, v0, Lokhttp3/CacheControl;->isPublic:Z

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-boolean v0, v0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 81
    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 90
    .line 91
    if-nez p0, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 98
    .line 99
    if-nez p0, :cond_2

    .line 100
    .line 101
    const/4 p0, 0x1

    .line 102
    return p0

    .line 103
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 104
    return p0

    .line 105
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(JLjava/util/List;Z)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lkotlin/Pair;

    .line 18
    .line 19
    const-string v4, "readingListName"

    .line 20
    .line 21
    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v2, Lkotlin/Pair;

    .line 33
    .line 34
    const-string v4, "readingListSize"

    .line 35
    .line 36
    invoke-direct {v2, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance p1, Lkotlin/Pair;

    .line 44
    .line 45
    const-string p2, "readingListPage"

    .line 46
    .line 47
    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance p2, Lkotlin/Pair;

    .line 55
    .line 56
    const-string p3, "hasActionMode"

    .line 57
    .line 58
    invoke-direct {p2, p3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x4

    .line 62
    new-array p0, p0, [Lkotlin/Pair;

    .line 63
    .line 64
    aput-object v3, p0, v1

    .line 65
    .line 66
    const/4 p3, 0x1

    .line 67
    aput-object v2, p0, p3

    .line 68
    .line 69
    const/4 p3, 0x2

    .line 70
    aput-object p1, p0, p3

    .line 71
    .line 72
    const/4 p1, 0x3

    .line 73
    aput-object p2, p0, p1

    .line 74
    .line 75
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-nez v2, :cond_7

    .line 11
    .line 12
    iget-object v6, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->siblingIndex()I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v8, v1

    .line 26
    :goto_1
    invoke-interface {p0, v3, p1}, Lorg/jsoup/select/NodeVisitor;->head(ILorg/jsoup/nodes/Node;)V

    .line 27
    .line 28
    .line 29
    if-eqz v6, :cond_6

    .line 30
    .line 31
    iget-object v9, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 32
    .line 33
    if-eq v9, v6, :cond_6

    .line 34
    .line 35
    iget-object p1, v6, Lorg/jsoup/nodes/Element;->childNodes:Lorg/jsoup/nodes/Element$NodeList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ge v8, p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_2
    if-nez v3, :cond_2

    .line 50
    .line 51
    move-object v8, v0

    .line 52
    goto :goto_3

    .line 53
    :cond_2
    move-object v8, v7

    .line 54
    :goto_3
    if-eqz p1, :cond_3

    .line 55
    .line 56
    if-eq p1, v8, :cond_3

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_3
    if-nez v3, :cond_4

    .line 60
    .line 61
    goto :goto_7

    .line 62
    :cond_4
    if-eqz v7, :cond_5

    .line 63
    .line 64
    iget-object p1, v7, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 65
    .line 66
    if-ne p1, v6, :cond_5

    .line 67
    .line 68
    move-object p1, v7

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 71
    .line 72
    move v2, v4

    .line 73
    move-object p1, v6

    .line 74
    goto :goto_0

    .line 75
    :cond_6
    :goto_4
    move v2, v5

    .line 76
    goto :goto_0

    .line 77
    :cond_7
    if-ne v2, v5, :cond_8

    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-lez v2, :cond_8

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    :goto_5
    move v2, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_8
    invoke-interface {p0, v3, p1}, Lorg/jsoup/select/NodeVisitor;->tail(ILorg/jsoup/nodes/Node;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-nez v3, :cond_b

    .line 101
    .line 102
    if-eqz v2, :cond_a

    .line 103
    .line 104
    if-ne v2, v0, :cond_9

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_9
    :goto_6
    move-object p1, v2

    .line 108
    goto :goto_5

    .line 109
    :cond_a
    :goto_7
    return-void

    .line 110
    :cond_b
    if-eqz v2, :cond_c

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_c
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 114
    .line 115
    add-int/lit8 v3, v3, -0x1

    .line 116
    .line 117
    move v2, v4

    .line 118
    goto :goto_0
.end method

.method public static uncheckedClearStaticPool(Landroid/app/Application;)V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/jsoup/select/NodeTraversor;->failedClearing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lorg/jsoup/select/NodeTraversor;->groupAndOutChildren:Lkotlin/Pair;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    const/16 v2, 0x20

    .line 17
    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Landroid/view/View;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lkotlin/Pair;

    .line 37
    .line 38
    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lorg/jsoup/select/NodeTraversor;->groupAndOutChildren:Lkotlin/Pair;

    .line 42
    .line 43
    move-object v0, v1

    .line 44
    :cond_2
    iget-object p0, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Landroid/view/ViewGroup;

    .line 47
    .line 48
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    const/4 p0, 0x1

    .line 57
    sput-boolean p0, Lorg/jsoup/select/NodeTraversor;->failedClearing:Z

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public abstract getParentContext()Landroid/content/Context;
.end method

.method public abstract getSearchHintString()Ljava/lang/String;
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "searchActionMode"

    .line 8
    .line 9
    iput-object v0, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/jsoup/select/NodeTraversor;->getSearchHintString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lorg/wikipedia/views/SearchActionProvider;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/jsoup/select/NodeTraversor;->getParentContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lorg/jsoup/select/NodeTraversor;->getSearchHintString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/16 v3, 0x15

    .line 32
    .line 33
    invoke-direct {v2, v3, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, v0, v1, v2}, Lorg/wikipedia/views/SearchActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/views/SearchActionProvider$Callback;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0
.end method

.method public abstract onQueryChange(Ljava/lang/String;)V
.end method
