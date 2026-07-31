.class public abstract Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivityKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final lambda$-2113332089:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const v3, -0x7df6e379

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivityKt;->lambda$-2113332089:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final ExploreFeedBuildingScreen(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v13, p2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, -0x6d7e1d1c

    .line 9
    .line 10
    .line 11
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    or-int/lit8 v1, p3, 0x6

    .line 15
    .line 16
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x20

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v2, 0x10

    .line 27
    .line 28
    :goto_0
    or-int/2addr v1, v2

    .line 29
    and-int/lit8 v2, v1, 0x13

    .line 30
    .line 31
    const/16 v4, 0x12

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eq v2, v4, :cond_1

    .line 36
    .line 37
    move v2, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v5

    .line 40
    :goto_1
    and-int/lit8 v4, v1, 0x1

    .line 41
    .line 42
    invoke-virtual {v13, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v4, 0x3

    .line 47
    if-eqz v2, :cond_8

    .line 48
    .line 49
    new-instance v10, Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;

    .line 50
    .line 51
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    const v2, -0x4a6a3202

    .line 55
    .line 56
    .line 57
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 58
    .line 59
    .line 60
    new-instance v8, Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    const/4 v14, 0x0

    .line 64
    invoke-direct {v8, v4, v2, v14}, Landroidx/paging/CachedPagingDataKt$cachedIn$5;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 68
    .line 69
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v9, v2

    .line 74
    check-cast v9, Landroid/content/Context;

    .line 75
    .line 76
    const v2, 0x52c617e1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 87
    .line 88
    if-ne v2, v15, :cond_2

    .line 89
    .line 90
    new-instance v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    .line 91
    .line 92
    invoke-direct {v2}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    move-object v11, v2

    .line 103
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 106
    .line 107
    .line 108
    const v2, 0x52c61904

    .line 109
    .line 110
    .line 111
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 112
    .line 113
    .line 114
    const-string v2, "__LottieInternalDefaultCacheKey__"

    .line 115
    .line 116
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    if-nez v7, :cond_3

    .line 125
    .line 126
    if-ne v12, v15, :cond_4

    .line 127
    .line 128
    :cond_3
    invoke-static {v9, v10, v2}, Landroidx/room/Room;->lottieTask(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    check-cast v12, Lcom/airbnb/lottie/LottieTask;

    .line 136
    .line 137
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 138
    .line 139
    .line 140
    new-instance v7, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 141
    .line 142
    const/4 v12, 0x0

    .line 143
    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;-><init>(Landroidx/paging/CachedPagingDataKt$cachedIn$5;Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v10, v2, v7, v13}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    .line 154
    .line 155
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 156
    .line 157
    .line 158
    and-int/lit8 v1, v1, 0x70

    .line 159
    .line 160
    if-ne v1, v3, :cond_5

    .line 161
    .line 162
    move v5, v6

    .line 163
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-nez v5, :cond_6

    .line 168
    .line 169
    if-ne v1, v15, :cond_7

    .line 170
    .line 171
    :cond_6
    new-instance v1, Lorg/wikipedia/history/HistoryFragment$Companion$clearAllHistory$1$2;

    .line 172
    .line 173
    invoke-direct {v1, v0, v14, v6}, Lorg/wikipedia/history/HistoryFragment$Companion$clearAllHistory$1$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 180
    .line 181
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 182
    .line 183
    invoke-static {v13, v3, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 187
    .line 188
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 193
    .line 194
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 199
    .line 200
    iget-wide v7, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 201
    .line 202
    new-instance v3, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;

    .line 203
    .line 204
    const/16 v5, 0xc

    .line 205
    .line 206
    invoke-direct {v3, v5, v2}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;-><init>(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const v2, -0x7b33524d

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v3, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    const/high16 v14, 0x30000000

    .line 217
    .line 218
    const/16 v15, 0x1be

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    const/4 v3, 0x0

    .line 222
    move v5, v4

    .line 223
    const/4 v4, 0x0

    .line 224
    move v6, v5

    .line 225
    const/4 v5, 0x0

    .line 226
    move v9, v6

    .line 227
    const/4 v6, 0x0

    .line 228
    move v11, v9

    .line 229
    const-wide/16 v9, 0x0

    .line 230
    .line 231
    move/from16 v17, v11

    .line 232
    .line 233
    const/4 v11, 0x0

    .line 234
    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v1, v16

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 241
    .line 242
    .line 243
    move-object/from16 v1, p0

    .line 244
    .line 245
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    if-eqz v2, :cond_9

    .line 250
    .line 251
    new-instance v3, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda9;

    .line 252
    .line 253
    move/from16 v4, p3

    .line 254
    .line 255
    const/4 v5, 0x3

    .line 256
    invoke-direct {v3, v4, v1, v0, v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda9;-><init>(ILandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;I)V

    .line 257
    .line 258
    .line 259
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 260
    .line 261
    :cond_9
    return-void
.end method
