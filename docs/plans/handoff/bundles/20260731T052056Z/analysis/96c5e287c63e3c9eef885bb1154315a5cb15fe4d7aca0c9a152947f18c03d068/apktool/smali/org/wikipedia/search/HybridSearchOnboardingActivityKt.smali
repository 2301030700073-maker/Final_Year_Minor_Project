.class public abstract Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final defaultSuggestedQueries:Ljava/util/List;

.field public static final onboardingItems:Ljava/util/List;

.field public static final suggestedQueriesPerLanguage:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/16 v4, 0x8

    .line 5
    .line 6
    const v1, 0x7f080138

    .line 7
    .line 8
    .line 9
    const v2, 0x7f1202e0

    .line 10
    .line 11
    .line 12
    const v3, 0x7f1202c9

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    const v2, 0x7f0801fe

    .line 24
    .line 25
    .line 26
    const v3, 0x7f1202c6

    .line 27
    .line 28
    .line 29
    const v4, 0x7f1202c5

    .line 30
    .line 31
    .line 32
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v3, v2, [Lorg/wikipedia/compose/components/OnboardingItem;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object v0, v3, v4

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput-object v1, v3, v0

    .line 43
    .line 44
    invoke-static {v3}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sput-object v1, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->onboardingItems:Ljava/util/List;

    .line 49
    .line 50
    const v1, 0x7f1202dd

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const v3, 0x7f1202db

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const v5, 0x7f1202de

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const v6, 0x7f1202dc

    .line 72
    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const v7, 0x7f1202da

    .line 79
    .line 80
    .line 81
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const/4 v8, 0x5

    .line 86
    new-array v9, v8, [Ljava/lang/Integer;

    .line 87
    .line 88
    aput-object v1, v9, v4

    .line 89
    .line 90
    aput-object v3, v9, v0

    .line 91
    .line 92
    aput-object v5, v9, v2

    .line 93
    .line 94
    const/4 v1, 0x3

    .line 95
    aput-object v6, v9, v1

    .line 96
    .line 97
    const/4 v3, 0x4

    .line 98
    aput-object v7, v9, v3

    .line 99
    .line 100
    invoke-static {v9}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    sput-object v5, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->defaultSuggestedQueries:Ljava/util/List;

    .line 105
    .line 106
    const v5, 0x7f1202cb

    .line 107
    .line 108
    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const v6, 0x7f1202ce

    .line 114
    .line 115
    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const v7, 0x7f1202d1

    .line 121
    .line 122
    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    const v9, 0x7f1202d4

    .line 128
    .line 129
    .line 130
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    const v10, 0x7f1202d7

    .line 135
    .line 136
    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    new-array v11, v8, [Ljava/lang/Integer;

    .line 142
    .line 143
    aput-object v5, v11, v4

    .line 144
    .line 145
    aput-object v6, v11, v0

    .line 146
    .line 147
    aput-object v7, v11, v2

    .line 148
    .line 149
    aput-object v9, v11, v1

    .line 150
    .line 151
    aput-object v10, v11, v3

    .line 152
    .line 153
    invoke-static {v11}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    new-instance v6, Lkotlin/Pair;

    .line 158
    .line 159
    const-string v7, "el"

    .line 160
    .line 161
    invoke-direct {v6, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const v5, 0x7f1202cc

    .line 165
    .line 166
    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const v7, 0x7f1202cf

    .line 172
    .line 173
    .line 174
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const v9, 0x7f1202d2

    .line 179
    .line 180
    .line 181
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    const v10, 0x7f1202d5

    .line 186
    .line 187
    .line 188
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    const v11, 0x7f1202d8

    .line 193
    .line 194
    .line 195
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    new-array v12, v8, [Ljava/lang/Integer;

    .line 200
    .line 201
    aput-object v5, v12, v4

    .line 202
    .line 203
    aput-object v7, v12, v0

    .line 204
    .line 205
    aput-object v9, v12, v2

    .line 206
    .line 207
    aput-object v10, v12, v1

    .line 208
    .line 209
    aput-object v11, v12, v3

    .line 210
    .line 211
    invoke-static {v12}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    new-instance v7, Lkotlin/Pair;

    .line 216
    .line 217
    const-string v9, "fr"

    .line 218
    .line 219
    invoke-direct {v7, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    const v5, 0x7f1202cd

    .line 223
    .line 224
    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const v9, 0x7f1202d0

    .line 230
    .line 231
    .line 232
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    const v10, 0x7f1202d3

    .line 237
    .line 238
    .line 239
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    const v11, 0x7f1202d6

    .line 244
    .line 245
    .line 246
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    const v12, 0x7f1202d9

    .line 251
    .line 252
    .line 253
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    new-array v8, v8, [Ljava/lang/Integer;

    .line 258
    .line 259
    aput-object v5, v8, v4

    .line 260
    .line 261
    aput-object v9, v8, v0

    .line 262
    .line 263
    aput-object v10, v8, v2

    .line 264
    .line 265
    aput-object v11, v8, v1

    .line 266
    .line 267
    aput-object v12, v8, v3

    .line 268
    .line 269
    invoke-static {v8}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    new-instance v5, Lkotlin/Pair;

    .line 274
    .line 275
    const-string v8, "pt"

    .line 276
    .line 277
    invoke-direct {v5, v8, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    new-array v1, v1, [Lkotlin/Pair;

    .line 281
    .line 282
    aput-object v6, v1, v4

    .line 283
    .line 284
    aput-object v7, v1, v0

    .line 285
    .line 286
    aput-object v5, v1, v2

    .line 287
    .line 288
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    sput-object v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->suggestedQueriesPerLanguage:Ljava/util/Map;

    .line 293
    .line 294
    return-void
.end method

.method public static final HybridSearchOnboardingScreen(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 23

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v0, p6

    .line 12
    .line 13
    move/from16 v1, p7

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const v7, 0x614597e3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    .line 36
    or-int/lit8 v7, v1, 0x6

    .line 37
    .line 38
    and-int/lit8 v8, v1, 0x30

    .line 39
    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    const/16 v8, 0x20

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/16 v8, 0x10

    .line 52
    .line 53
    :goto_0
    or-int/2addr v7, v8

    .line 54
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_2

    .line 59
    .line 60
    const/16 v8, 0x100

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/16 v8, 0x80

    .line 64
    .line 65
    :goto_1
    or-int/2addr v7, v8

    .line 66
    and-int/lit16 v8, v1, 0xc00

    .line 67
    .line 68
    if-nez v8, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_3

    .line 75
    .line 76
    const/16 v8, 0x800

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/16 v8, 0x400

    .line 80
    .line 81
    :goto_2
    or-int/2addr v7, v8

    .line 82
    :cond_4
    and-int/lit16 v8, v1, 0x6000

    .line 83
    .line 84
    if-nez v8, :cond_6

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_5

    .line 91
    .line 92
    const/16 v8, 0x4000

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    const/16 v8, 0x2000

    .line 96
    .line 97
    :goto_3
    or-int/2addr v7, v8

    .line 98
    :cond_6
    const/high16 v8, 0x30000

    .line 99
    .line 100
    and-int/2addr v8, v1

    .line 101
    if-nez v8, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_7

    .line 108
    .line 109
    const/high16 v8, 0x20000

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_7
    const/high16 v8, 0x10000

    .line 113
    .line 114
    :goto_4
    or-int/2addr v7, v8

    .line 115
    :cond_8
    const v8, 0x12493

    .line 116
    .line 117
    .line 118
    and-int/2addr v8, v7

    .line 119
    const v9, 0x12492

    .line 120
    .line 121
    .line 122
    const/4 v10, 0x0

    .line 123
    const/4 v11, 0x1

    .line 124
    if-eq v8, v9, :cond_9

    .line 125
    .line 126
    move v8, v11

    .line 127
    goto :goto_5

    .line 128
    :cond_9
    move v8, v10

    .line 129
    :goto_5
    and-int/2addr v7, v11

    .line 130
    invoke-virtual {v0, v7, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_a

    .line 135
    .line 136
    sget-object v22, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 137
    .line 138
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    sget-object v8, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 143
    .line 144
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    check-cast v8, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 149
    .line 150
    iget-wide v13, v8, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 151
    .line 152
    sget-object v8, Lorg/wikipedia/search/NoSearchResultsKt;->lambda$1726883487:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 153
    .line 154
    new-instance v9, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    invoke-direct {v9, v4, v6, v10, v10}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IB)V

    .line 157
    .line 158
    .line 159
    const v10, 0x525f277e

    .line 160
    .line 161
    .line 162
    invoke-static {v10, v9, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    new-instance v10, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;

    .line 167
    .line 168
    const/16 v11, 0xa

    .line 169
    .line 170
    invoke-direct {v10, v3, v2, v5, v11}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 171
    .line 172
    .line 173
    const v11, 0x1645d374

    .line 174
    .line 175
    .line 176
    invoke-static {v11, v10, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 177
    .line 178
    .line 179
    move-result-object v18

    .line 180
    const v20, 0x300001b0

    .line 181
    .line 182
    .line 183
    const/16 v21, 0x1b8

    .line 184
    .line 185
    const/4 v10, 0x0

    .line 186
    const/4 v11, 0x0

    .line 187
    const/4 v12, 0x0

    .line 188
    const-wide/16 v15, 0x0

    .line 189
    .line 190
    const/16 v17, 0x0

    .line 191
    .line 192
    move-object/from16 v19, v0

    .line 193
    .line 194
    invoke-static/range {v7 .. v21}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 195
    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 199
    .line 200
    .line 201
    move-object/from16 v22, p0

    .line 202
    .line 203
    :goto_6
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    if-eqz v9, :cond_b

    .line 208
    .line 209
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda3;

    .line 210
    .line 211
    const/4 v8, 0x4

    .line 212
    move v7, v1

    .line 213
    move-object/from16 v1, v22

    .line 214
    .line 215
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/Function;II)V

    .line 216
    .line 217
    .line 218
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 219
    .line 220
    :cond_b
    return-void
.end method

.method public static final MainBottomBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move/from16 v12, p3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v2, 0x6a280dbe

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int/2addr v2, v12

    .line 31
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/16 v4, 0x20

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    move v3, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x10

    .line 42
    .line 43
    :goto_1
    or-int v11, v2, v3

    .line 44
    .line 45
    and-int/lit8 v2, v11, 0x13

    .line 46
    .line 47
    const/16 v3, 0x12

    .line 48
    .line 49
    const/4 v13, 0x1

    .line 50
    if-eq v2, v3, :cond_2

    .line 51
    .line 52
    move v2, v13

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 v2, 0x0

    .line 55
    :goto_2
    and-int/lit8 v3, v11, 0x1

    .line 56
    .line 57
    invoke-virtual {v5, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 64
    .line 65
    const/high16 v15, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-static {v14, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/high16 v3, 0x41400000    # 12.0f

    .line 72
    .line 73
    const/high16 v6, 0x41c00000    # 24.0f

    .line 74
    .line 75
    invoke-static {v2, v6, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v3, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 80
    .line 81
    new-instance v7, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 v8, 0xa

    .line 84
    .line 85
    invoke-direct {v7, v8}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v6, v13, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 89
    .line 90
    .line 91
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 92
    .line 93
    const/16 v7, 0x36

    .line 94
    .line 95
    invoke-static {v3, v6, v5, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-wide v6, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 100
    .line 101
    ushr-long v8, v6, v4

    .line 102
    .line 103
    xor-long/2addr v6, v8

    .line 104
    long-to-int v4, v6

    .line 105
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v5, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 119
    .line 120
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 121
    .line 122
    .line 123
    iget-boolean v8, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 124
    .line 125
    if-eqz v8, :cond_3

    .line 126
    .line 127
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 132
    .line 133
    .line 134
    :goto_3
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 135
    .line 136
    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 149
    .line 150
    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 154
    .line 155
    invoke-static {v5, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 156
    .line 157
    .line 158
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 159
    .line 160
    invoke-static {v5, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v14, v15}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 168
    .line 169
    sget-object v9, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 170
    .line 171
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 176
    .line 177
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 178
    .line 179
    const-wide/16 v4, 0x0

    .line 180
    .line 181
    const/16 v7, 0xe

    .line 182
    .line 183
    move-object/from16 v6, p2

    .line 184
    .line 185
    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    sget-object v7, Lorg/wikipedia/search/NoSearchResultsKt;->lambda$-2130079875:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 190
    .line 191
    shr-int/lit8 v2, v11, 0x3

    .line 192
    .line 193
    and-int/lit8 v2, v2, 0xe

    .line 194
    .line 195
    const/high16 v16, 0x30000000

    .line 196
    .line 197
    or-int v2, v2, v16

    .line 198
    .line 199
    const/16 v10, 0x1ec

    .line 200
    .line 201
    const/4 v3, 0x0

    .line 202
    const/4 v4, 0x0

    .line 203
    const/4 v6, 0x0

    .line 204
    move-object v13, v9

    .line 205
    move v9, v2

    .line 206
    move-object v2, v8

    .line 207
    move-object/from16 v8, p2

    .line 208
    .line 209
    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/CardKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 210
    .line 211
    .line 212
    move-object v5, v8

    .line 213
    invoke-static {v14, v15}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 222
    .line 223
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 224
    .line 225
    const-wide/16 v3, 0x0

    .line 226
    .line 227
    const/16 v6, 0xe

    .line 228
    .line 229
    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    sget-object v8, Lorg/wikipedia/search/NoSearchResultsKt;->lambda$994939882:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 234
    .line 235
    and-int/lit8 v1, v11, 0xe

    .line 236
    .line 237
    or-int v10, v1, v16

    .line 238
    .line 239
    const/16 v11, 0x1ec

    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    const/4 v3, 0x0

    .line 243
    const/4 v5, 0x0

    .line 244
    const/4 v6, 0x0

    .line 245
    move-object v1, v7

    .line 246
    const/4 v7, 0x0

    .line 247
    move-object/from16 v13, p1

    .line 248
    .line 249
    move-object/from16 v9, p2

    .line 250
    .line 251
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 252
    .line 253
    .line 254
    move-object v5, v9

    .line 255
    const/4 v1, 0x1

    .line 256
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_4
    move-object v13, v1

    .line 261
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 262
    .line 263
    .line 264
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-eqz v1, :cond_5

    .line 269
    .line 270
    new-instance v2, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;

    .line 271
    .line 272
    invoke-direct {v2, v0, v13, v12}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 273
    .line 274
    .line 275
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 276
    .line 277
    :cond_5
    return-void
.end method

.method public static final SearchExamplesView(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v12, p4

    .line 10
    .line 11
    move/from16 v0, p5

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const v5, -0x69fa9100

    .line 23
    .line 24
    .line 25
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v5, 0x2

    .line 37
    :goto_0
    or-int/2addr v5, v0

    .line 38
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, 0x20

    .line 43
    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    move v6, v7

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v6, 0x10

    .line 49
    .line 50
    :goto_1
    or-int/2addr v5, v6

    .line 51
    and-int/lit16 v6, v0, 0x180

    .line 52
    .line 53
    if-nez v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    const/16 v6, 0x100

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v6, 0x80

    .line 65
    .line 66
    :goto_2
    or-int/2addr v5, v6

    .line 67
    :cond_3
    and-int/lit16 v6, v0, 0xc00

    .line 68
    .line 69
    if-nez v6, :cond_5

    .line 70
    .line 71
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    const/16 v6, 0x800

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    const/16 v6, 0x400

    .line 81
    .line 82
    :goto_3
    or-int/2addr v5, v6

    .line 83
    :cond_5
    and-int/lit16 v6, v5, 0x493

    .line 84
    .line 85
    const/16 v8, 0x492

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v15, 0x1

    .line 89
    if-eq v6, v8, :cond_6

    .line 90
    .line 91
    move v6, v15

    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move v6, v9

    .line 94
    :goto_4
    and-int/2addr v5, v15

    .line 95
    invoke-virtual {v12, v5, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 102
    .line 103
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Landroid/content/Context;

    .line 108
    .line 109
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 110
    .line 111
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 112
    .line 113
    invoke-static {v6, v8, v12, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    iget-wide v10, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 118
    .line 119
    ushr-long v7, v10, v7

    .line 120
    .line 121
    xor-long/2addr v7, v10

    .line 122
    long-to-int v7, v7

    .line 123
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v12, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 137
    .line 138
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 139
    .line 140
    .line 141
    iget-boolean v13, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 142
    .line 143
    if-eqz v13, :cond_7

    .line 144
    .line 145
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 150
    .line 151
    .line 152
    :goto_5
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 153
    .line 154
    invoke-static {v12, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 155
    .line 156
    .line 157
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 158
    .line 159
    invoke-static {v12, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 167
    .line 168
    invoke-static {v12, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 169
    .line 170
    .line 171
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 172
    .line 173
    invoke-static {v12, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 174
    .line 175
    .line 176
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 177
    .line 178
    invoke-static {v12, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    const/high16 v6, 0x3f800000    # 1.0f

    .line 182
    .line 183
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 184
    .line 185
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 186
    .line 187
    .line 188
    move-result-object v16

    .line 189
    const/high16 v20, 0x40800000    # 4.0f

    .line 190
    .line 191
    const/16 v21, 0x5

    .line 192
    .line 193
    const/16 v17, 0x0

    .line 194
    .line 195
    const/high16 v18, 0x41400000    # 12.0f

    .line 196
    .line 197
    const/16 v19, 0x0

    .line 198
    .line 199
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    new-instance v16, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 204
    .line 205
    const/16 v21, 0x0

    .line 206
    .line 207
    const/16 v20, 0x8

    .line 208
    .line 209
    const v17, 0x7f080197

    .line 210
    .line 211
    .line 212
    const v18, 0x7f1202df

    .line 213
    .line 214
    .line 215
    const v19, 0x7f1202ca

    .line 216
    .line 217
    .line 218
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v8, v16

    .line 222
    .line 223
    const/4 v10, 0x6

    .line 224
    invoke-static {v6, v8, v12, v10, v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->OnboardingListItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/compose/components/OnboardingItem;Landroidx/compose/runtime/GapComposer;II)V

    .line 225
    .line 226
    .line 227
    const/16 v20, 0x0

    .line 228
    .line 229
    const/16 v21, 0xc

    .line 230
    .line 231
    const/high16 v17, 0x42100000    # 36.0f

    .line 232
    .line 233
    const/high16 v18, 0x41000000    # 8.0f

    .line 234
    .line 235
    const/16 v19, 0x0

    .line 236
    .line 237
    move-object/from16 v16, v7

    .line 238
    .line 239
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    move-object v8, v6

    .line 244
    move/from16 v7, v18

    .line 245
    .line 246
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 247
    .line 248
    new-instance v9, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 249
    .line 250
    const/16 v10, 0xa

    .line 251
    .line 252
    invoke-direct {v9, v10}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-direct {v6, v7, v15, v9}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 256
    .line 257
    .line 258
    new-instance v9, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 259
    .line 260
    new-instance v11, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    invoke-direct {v11, v10}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-direct {v9, v7, v15, v11}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 266
    .line 267
    .line 268
    new-instance v7, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda13;

    .line 269
    .line 270
    invoke-direct {v7, v2, v5, v3, v4}, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 271
    .line 272
    .line 273
    const v5, -0x287a9c7b

    .line 274
    .line 275
    .line 276
    invoke-static {v5, v7, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    const v13, 0x1801b6

    .line 281
    .line 282
    .line 283
    const/16 v14, 0x38

    .line 284
    .line 285
    move-object v5, v8

    .line 286
    const/4 v8, 0x0

    .line 287
    move-object v7, v9

    .line 288
    const/4 v9, 0x0

    .line 289
    const/4 v10, 0x0

    .line 290
    invoke-static/range {v5 .. v14}, Landroidx/compose/foundation/layout/OffsetKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 298
    .line 299
    .line 300
    :goto_6
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    if-eqz v6, :cond_9

    .line 305
    .line 306
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;

    .line 307
    .line 308
    move/from16 v5, p5

    .line 309
    .line 310
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 311
    .line 312
    .line 313
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 314
    .line 315
    :cond_9
    return-void
.end method
