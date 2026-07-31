.class public abstract Lorg/wikipedia/feed/wikigames/GamesModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final promptImageUrls:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Monet_w861.jpg/500px-Monet_w861.jpg"

    .line 2
    .line 3
    const-string v1, "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/500px-Mercury_in_color_-_Prockter07_centered.jpg"

    .line 4
    .line 5
    const-string v2, "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Red_eyed_tree_frog_edit2.jpg/500px-Red_eyed_tree_frog_edit2.jpg"

    .line 6
    .line 7
    const-string v3, "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Palais_de_l%27Industrie_-_%C3%89douard_Baldus.jpg/500px-Palais_de_l%27Industrie_-_%C3%89douard_Baldus.jpg"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/wikipedia/feed/wikigames/GamesModuleKt;->promptImageUrls:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public static final GameEventCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 12

    .line 1
    move/from16 v10, p4

    .line 2
    .line 3
    const v0, -0x771ecb20

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, v10, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, v10

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, v10

    .line 25
    :goto_1
    and-int/lit8 v1, v10, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit16 v1, v10, 0x180

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    const/16 v1, 0x100

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    const/16 v1, 0x80

    .line 55
    .line 56
    :goto_3
    or-int/2addr v0, v1

    .line 57
    :cond_5
    move v8, v0

    .line 58
    and-int/lit16 v0, v8, 0x93

    .line 59
    .line 60
    const/16 v1, 0x92

    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    if-eq v0, v1, :cond_6

    .line 64
    .line 65
    move v0, v9

    .line 66
    goto :goto_4

    .line 67
    :cond_6
    const/4 v0, 0x0

    .line 68
    :goto_4
    and-int/lit8 v1, v8, 0x1

    .line 69
    .line 70
    invoke-virtual {p3, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    const/high16 v0, 0x41800000    # 16.0f

    .line 77
    .line 78
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    sget-wide v0, Lorg/wikipedia/compose/ComposeColors;->Gray700:J

    .line 83
    .line 84
    const/4 v5, 0x6

    .line 85
    const/16 v6, 0xe

    .line 86
    .line 87
    const-wide/16 v2, 0x0

    .line 88
    .line 89
    move-object v4, p3

    .line 90
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->cardColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;II)Landroidx/compose/material3/CardColors;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;

    .line 95
    .line 96
    invoke-direct {v0, v9, p1}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const v1, 0x3c5298cd

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v0, p3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    and-int/lit8 v0, v8, 0xe

    .line 107
    .line 108
    const v1, 0x180030

    .line 109
    .line 110
    .line 111
    or-int/2addr v0, v1

    .line 112
    const v1, 0xe000

    .line 113
    .line 114
    .line 115
    shl-int/lit8 v3, v8, 0x6

    .line 116
    .line 117
    and-int/2addr v1, v3

    .line 118
    or-int v8, v0, v1

    .line 119
    .line 120
    const/16 v9, 0x8

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    move-object v0, p0

    .line 125
    move-object v4, p2

    .line 126
    move-object v7, p3

    .line 127
    move-object v5, v11

    .line 128
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiCard-jfnsLPA(Landroidx/compose/ui/Modifier;FLandroidx/compose/material3/CardColors;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 133
    .line 134
    .line 135
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    if-eqz v6, :cond_8

    .line 140
    .line 141
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 142
    .line 143
    const/16 v5, 0x11

    .line 144
    .line 145
    move-object v1, p0

    .line 146
    move-object v2, p1

    .line 147
    move-object v3, p2

    .line 148
    move v4, v10

    .line 149
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 153
    .line 154
    :cond_8
    return-void
.end method

.method public static final GamesModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$Games;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 14

    .line 1
    move-object/from16 v4, p9

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const v0, 0x60734ab6

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x2

    .line 42
    :goto_0
    or-int v0, p10, v0

    .line 43
    .line 44
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const/16 v1, 0x20

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/16 v1, 0x10

    .line 54
    .line 55
    :goto_1
    or-int/2addr v0, v1

    .line 56
    move-object/from16 v6, p2

    .line 57
    .line 58
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const/16 v1, 0x100

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/16 v1, 0x80

    .line 68
    .line 69
    :goto_2
    or-int/2addr v0, v1

    .line 70
    move-object/from16 v5, p3

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    const/16 v1, 0x800

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const/16 v1, 0x400

    .line 82
    .line 83
    :goto_3
    or-int/2addr v0, v1

    .line 84
    move-object/from16 v13, p4

    .line 85
    .line 86
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    const/16 v1, 0x4000

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    const/16 v1, 0x2000

    .line 96
    .line 97
    :goto_4
    or-int/2addr v0, v1

    .line 98
    move-object/from16 v7, p5

    .line 99
    .line 100
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    const/high16 v1, 0x20000

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_5
    const/high16 v1, 0x10000

    .line 110
    .line 111
    :goto_5
    or-int/2addr v0, v1

    .line 112
    move-object/from16 v8, p6

    .line 113
    .line 114
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    const/high16 v1, 0x100000

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_6
    const/high16 v1, 0x80000

    .line 124
    .line 125
    :goto_6
    or-int/2addr v0, v1

    .line 126
    move-object/from16 v2, p7

    .line 127
    .line 128
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    const/high16 v1, 0x800000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_7
    const/high16 v1, 0x400000

    .line 138
    .line 139
    :goto_7
    or-int/2addr v0, v1

    .line 140
    move-object/from16 v10, p8

    .line 141
    .line 142
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    const/high16 v1, 0x4000000

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_8
    const/high16 v1, 0x2000000

    .line 152
    .line 153
    :goto_8
    or-int/2addr v0, v1

    .line 154
    const v1, 0x2492493

    .line 155
    .line 156
    .line 157
    and-int/2addr v1, v0

    .line 158
    const v3, 0x2492492

    .line 159
    .line 160
    .line 161
    if-eq v1, v3, :cond_9

    .line 162
    .line 163
    const/4 v1, 0x1

    .line 164
    goto :goto_9

    .line 165
    :cond_9
    const/4 v1, 0x0

    .line 166
    :goto_9
    and-int/lit8 v3, v0, 0x1

    .line 167
    .line 168
    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_a

    .line 173
    .line 174
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 175
    .line 176
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    move-object v12, v1

    .line 181
    check-cast v12, Landroid/content/Context;

    .line 182
    .line 183
    new-instance v5, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;

    .line 184
    .line 185
    move-object v9, v7

    .line 186
    move-object v11, v10

    .line 187
    move-object v7, p1

    .line 188
    move-object v10, v8

    .line 189
    move-object/from16 v8, p3

    .line 190
    .line 191
    invoke-direct/range {v5 .. v13}, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/feed/ForYouModule$Games;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 192
    .line 193
    .line 194
    const v1, 0x1ae814e2

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    and-int/lit8 v1, v0, 0xe

    .line 202
    .line 203
    or-int/lit16 v1, v1, 0xc00

    .line 204
    .line 205
    shr-int/lit8 v5, v0, 0x3

    .line 206
    .line 207
    and-int/lit8 v5, v5, 0x70

    .line 208
    .line 209
    or-int/2addr v1, v5

    .line 210
    shr-int/lit8 v0, v0, 0xf

    .line 211
    .line 212
    and-int/lit16 v0, v0, 0x380

    .line 213
    .line 214
    or-int v5, v1, v0

    .line 215
    .line 216
    move-object v0, p0

    .line 217
    move-object/from16 v1, p2

    .line 218
    .line 219
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouModulePager(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/ForYouModule;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 220
    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_a
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 224
    .line 225
    .line 226
    :goto_a
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;

    .line 233
    .line 234
    move-object v2, p0

    .line 235
    move-object v3, p1

    .line 236
    move-object/from16 v4, p2

    .line 237
    .line 238
    move-object/from16 v5, p3

    .line 239
    .line 240
    move-object/from16 v6, p4

    .line 241
    .line 242
    move-object/from16 v7, p5

    .line 243
    .line 244
    move-object/from16 v8, p6

    .line 245
    .line 246
    move-object/from16 v9, p7

    .line 247
    .line 248
    move-object/from16 v10, p8

    .line 249
    .line 250
    move/from16 v11, p10

    .line 251
    .line 252
    invoke-direct/range {v1 .. v11}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$Games;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 253
    .line 254
    .line 255
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 256
    .line 257
    :cond_b
    return-void
.end method

.method public static final OnThisDayGameModuleCard-aA_HZ9I(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 43

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v12, p2

    .line 4
    .line 5
    move-object/from16 v13, p4

    .line 6
    .line 7
    move-object/from16 v8, p8

    .line 8
    .line 9
    const v0, -0x76398b20

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x10

    .line 25
    .line 26
    :goto_0
    or-int v0, p9, v0

    .line 27
    .line 28
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/16 v3, 0x100

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v3, 0x80

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v3

    .line 40
    move/from16 v4, p3

    .line 41
    .line 42
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const/16 v3, 0x800

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v3, 0x400

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v3

    .line 54
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    const/16 v3, 0x4000

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v3, 0x2000

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v3

    .line 66
    move-object/from16 v11, p5

    .line 67
    .line 68
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    const/high16 v3, 0x20000

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/high16 v3, 0x10000

    .line 78
    .line 79
    :goto_4
    or-int/2addr v0, v3

    .line 80
    move-object/from16 v3, p6

    .line 81
    .line 82
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    const/high16 v5, 0x100000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/high16 v5, 0x80000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v5

    .line 94
    move-object/from16 v5, p7

    .line 95
    .line 96
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_6

    .line 101
    .line 102
    const/high16 v6, 0x800000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    const/high16 v6, 0x400000

    .line 106
    .line 107
    :goto_6
    or-int v38, v0, v6

    .line 108
    .line 109
    const v0, 0x492493

    .line 110
    .line 111
    .line 112
    and-int v0, v38, v0

    .line 113
    .line 114
    const v6, 0x492492

    .line 115
    .line 116
    .line 117
    const/4 v9, 0x1

    .line 118
    if-eq v0, v6, :cond_7

    .line 119
    .line 120
    move v0, v9

    .line 121
    goto :goto_7

    .line 122
    :cond_7
    const/4 v0, 0x0

    .line 123
    :goto_7
    and-int/lit8 v6, v38, 0x1

    .line 124
    .line 125
    invoke-virtual {v8, v6, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_11

    .line 130
    .line 131
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 132
    .line 133
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 144
    .line 145
    if-ne v6, v10, :cond_8

    .line 146
    .line 147
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 157
    .line 158
    instance-of v14, v12, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;

    .line 159
    .line 160
    if-eqz v14, :cond_9

    .line 161
    .line 162
    const v14, 0x7f1204d9

    .line 163
    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_9
    instance-of v14, v12, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 167
    .line 168
    if-eqz v14, :cond_a

    .line 169
    .line 170
    const v14, 0x7f1204c0

    .line 171
    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_a
    instance-of v14, v12, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 175
    .line 176
    if-eqz v14, :cond_10

    .line 177
    .line 178
    const v14, 0x7f1204e0

    .line 179
    .line 180
    .line 181
    :goto_8
    const/16 v17, 0x0

    .line 182
    .line 183
    const/16 v19, 0x5

    .line 184
    .line 185
    const/4 v15, 0x0

    .line 186
    const/high16 v16, 0x41800000    # 16.0f

    .line 187
    .line 188
    move/from16 v18, v4

    .line 189
    .line 190
    move v4, v14

    .line 191
    move-object/from16 v14, p0

    .line 192
    .line 193
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    move/from16 v14, v16

    .line 198
    .line 199
    const/16 v39, 0x20

    .line 200
    .line 201
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 202
    .line 203
    new-instance v7, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    const/16 v3, 0xa

    .line 206
    .line 207
    invoke-direct {v7, v3}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-direct {v2, v14, v9, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 211
    .line 212
    .line 213
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 214
    .line 215
    const/4 v7, 0x6

    .line 216
    invoke-static {v2, v3, v8, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    move-object v7, v10

    .line 221
    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 222
    .line 223
    ushr-long v16, v9, v39

    .line 224
    .line 225
    xor-long v9, v9, v16

    .line 226
    .line 227
    long-to-int v9, v9

    .line 228
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-static {v8, v15}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 237
    .line 238
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 242
    .line 243
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 244
    .line 245
    .line 246
    iget-boolean v3, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 247
    .line 248
    if-eqz v3, :cond_b

    .line 249
    .line 250
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 251
    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 255
    .line 256
    .line 257
    :goto_9
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 258
    .line 259
    invoke-static {v8, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 263
    .line 264
    invoke-static {v8, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 272
    .line 273
    invoke-static {v8, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 274
    .line 275
    .line 276
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 277
    .line 278
    invoke-static {v8, v9}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 279
    .line 280
    .line 281
    move/from16 v40, v4

    .line 282
    .line 283
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 284
    .line 285
    invoke-static {v8, v14, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 286
    .line 287
    .line 288
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 289
    .line 290
    const/high16 v11, 0x3f800000    # 1.0f

    .line 291
    .line 292
    invoke-static {v14, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 297
    .line 298
    move-object/from16 v41, v7

    .line 299
    .line 300
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 301
    .line 302
    const/16 v12, 0x30

    .line 303
    .line 304
    invoke-static {v7, v11, v8, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    iget-wide v11, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 309
    .line 310
    ushr-long v17, v11, v39

    .line 311
    .line 312
    xor-long v11, v11, v17

    .line 313
    .line 314
    long-to-int v11, v11

    .line 315
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    invoke-static {v8, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 324
    .line 325
    .line 326
    move-object/from16 v17, v14

    .line 327
    .line 328
    iget-boolean v14, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 329
    .line 330
    if-eqz v14, :cond_c

    .line 331
    .line 332
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 333
    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 337
    .line 338
    .line 339
    :goto_a
    invoke-static {v8, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v8, v12, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 343
    .line 344
    .line 345
    invoke-static {v11, v8, v10, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 346
    .line 347
    .line 348
    const/4 v7, 0x1

    .line 349
    const/high16 v11, 0x3f800000    # 1.0f

    .line 350
    .line 351
    invoke-static {v8, v5, v4, v11, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    iget-object v12, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 356
    .line 357
    const v14, 0x7f1204f3

    .line 358
    .line 359
    .line 360
    const/4 v7, 0x0

    .line 361
    new-array v11, v7, [Ljava/lang/Object;

    .line 362
    .line 363
    invoke-static {v0, v12, v14, v11}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v14

    .line 367
    move-object/from16 v7, v17

    .line 368
    .line 369
    sget-wide v16, Landroidx/compose/ui/graphics/Color;->White:J

    .line 370
    .line 371
    sget-object v11, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 372
    .line 373
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    check-cast v11, Landroidx/compose/material3/Typography;

    .line 378
    .line 379
    iget-object v11, v11, Landroidx/compose/material3/Typography;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 380
    .line 381
    const/16 v29, 0x0

    .line 382
    .line 383
    const v30, 0xffffdf

    .line 384
    .line 385
    .line 386
    const-wide/16 v19, 0x0

    .line 387
    .line 388
    const-wide/16 v21, 0x0

    .line 389
    .line 390
    const/16 v23, 0x0

    .line 391
    .line 392
    sget-object v24, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 393
    .line 394
    const-wide/16 v25, 0x0

    .line 395
    .line 396
    const-wide/16 v27, 0x0

    .line 397
    .line 398
    move-object/from16 v18, v11

    .line 399
    .line 400
    invoke-static/range {v18 .. v30}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 401
    .line 402
    .line 403
    move-result-object v33

    .line 404
    const/16 v36, 0x6000

    .line 405
    .line 406
    const v37, 0x1bff8

    .line 407
    .line 408
    .line 409
    const/16 v18, 0x0

    .line 410
    .line 411
    const/16 v21, 0x0

    .line 412
    .line 413
    const/16 v22, 0x0

    .line 414
    .line 415
    const-wide/16 v23, 0x0

    .line 416
    .line 417
    const/16 v25, 0x0

    .line 418
    .line 419
    const-wide/16 v26, 0x0

    .line 420
    .line 421
    const/16 v28, 0x0

    .line 422
    .line 423
    const/16 v29, 0x0

    .line 424
    .line 425
    const/16 v30, 0x1

    .line 426
    .line 427
    const/16 v31, 0x0

    .line 428
    .line 429
    const/16 v32, 0x0

    .line 430
    .line 431
    const/16 v35, 0x180

    .line 432
    .line 433
    move-object v12, v15

    .line 434
    move-object v15, v5

    .line 435
    move-object v5, v12

    .line 436
    move-object v12, v7

    .line 437
    move-object/from16 v34, v8

    .line 438
    .line 439
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 440
    .line 441
    .line 442
    move-wide/from16 v14, v16

    .line 443
    .line 444
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 445
    .line 446
    const/4 v11, 0x0

    .line 447
    invoke-static {v7, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    iget-wide v14, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 452
    .line 453
    ushr-long v18, v14, v39

    .line 454
    .line 455
    xor-long v14, v14, v18

    .line 456
    .line 457
    long-to-int v11, v14

    .line 458
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 459
    .line 460
    .line 461
    move-result-object v14

    .line 462
    invoke-static {v8, v12}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 463
    .line 464
    .line 465
    move-result-object v15

    .line 466
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 467
    .line 468
    .line 469
    iget-boolean v13, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 470
    .line 471
    if-eqz v13, :cond_d

    .line 472
    .line 473
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 474
    .line 475
    .line 476
    goto :goto_b

    .line 477
    :cond_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 478
    .line 479
    .line 480
    :goto_b
    invoke-static {v8, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 481
    .line 482
    .line 483
    invoke-static {v8, v14, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v11, v8, v10, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 487
    .line 488
    .line 489
    invoke-static {v8, v15, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    move-object/from16 v7, v41

    .line 497
    .line 498
    if-ne v2, v7, :cond_e

    .line 499
    .line 500
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 501
    .line 502
    const/16 v3, 0x19

    .line 503
    .line 504
    invoke-direct {v2, v6, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 511
    .line 512
    new-instance v3, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 513
    .line 514
    const/16 v4, 0xd

    .line 515
    .line 516
    invoke-direct {v3, v0, v1, v4}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 517
    .line 518
    .line 519
    const v4, -0x6f88efa2

    .line 520
    .line 521
    .line 522
    invoke-static {v4, v3, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    const v9, 0x180006

    .line 527
    .line 528
    .line 529
    const/16 v10, 0x3e

    .line 530
    .line 531
    move-object/from16 v41, v7

    .line 532
    .line 533
    move-object v7, v3

    .line 534
    const/4 v3, 0x0

    .line 535
    const/4 v4, 0x0

    .line 536
    const/4 v5, 0x0

    .line 537
    move-object v11, v6

    .line 538
    const/4 v6, 0x0

    .line 539
    move/from16 v14, v40

    .line 540
    .line 541
    move-object/from16 v15, v41

    .line 542
    .line 543
    const/4 v13, 0x1

    .line 544
    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 545
    .line 546
    .line 547
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    check-cast v2, Ljava/lang/Boolean;

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    if-ne v3, v15, :cond_f

    .line 562
    .line 563
    new-instance v3, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 564
    .line 565
    const/16 v4, 0x1a

    .line 566
    .line 567
    invoke-direct {v3, v11, v4}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    :cond_f
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 574
    .line 575
    and-int/lit8 v4, v38, 0x70

    .line 576
    .line 577
    or-int/lit16 v4, v4, 0x6d80

    .line 578
    .line 579
    const/high16 v5, 0x70000

    .line 580
    .line 581
    and-int v5, v38, v5

    .line 582
    .line 583
    or-int/2addr v4, v5

    .line 584
    const/high16 v5, 0x380000

    .line 585
    .line 586
    and-int v5, v38, v5

    .line 587
    .line 588
    or-int/2addr v4, v5

    .line 589
    shl-int/lit8 v5, v38, 0x3

    .line 590
    .line 591
    const/high16 v6, 0xe000000

    .line 592
    .line 593
    and-int/2addr v5, v6

    .line 594
    or-int v10, v4, v5

    .line 595
    .line 596
    const/16 v11, 0x80

    .line 597
    .line 598
    move-object v4, v0

    .line 599
    move v0, v2

    .line 600
    move-object v2, v3

    .line 601
    const/4 v3, 0x0

    .line 602
    move-object v5, v4

    .line 603
    const/4 v4, 0x0

    .line 604
    const/4 v7, 0x0

    .line 605
    move-object/from16 v6, p6

    .line 606
    .line 607
    move-object v15, v5

    .line 608
    move-object v9, v8

    .line 609
    move/from16 v40, v14

    .line 610
    .line 611
    const/high16 v14, 0x3f800000    # 1.0f

    .line 612
    .line 613
    move-object/from16 v5, p5

    .line 614
    .line 615
    move-object/from16 v8, p7

    .line 616
    .line 617
    invoke-static/range {v0 .. v11}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouCardDropdownMenu(ZLorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 618
    .line 619
    .line 620
    move-object v11, v1

    .line 621
    move-object v8, v9

    .line 622
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 626
    .line 627
    .line 628
    invoke-static {v12, v14}, Landroidx/compose/animation/core/Animation$-CC;->weight$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-virtual/range {p2 .. p2}, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;->getEvent1()Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    shr-int/lit8 v2, v38, 0x6

    .line 637
    .line 638
    and-int/lit16 v2, v2, 0x380

    .line 639
    .line 640
    move-object/from16 v5, p4

    .line 641
    .line 642
    invoke-static {v0, v1, v5, v8, v2}, Lorg/wikipedia/feed/wikigames/GamesModuleKt;->GameEventCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 643
    .line 644
    .line 645
    invoke-static {v12, v14}, Landroidx/compose/animation/core/Animation$-CC;->weight$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual/range {p2 .. p2}, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;->getEvent2()Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-static {v0, v1, v5, v8, v2}, Lorg/wikipedia/feed/wikigames/GamesModuleKt;->GameEventCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 654
    .line 655
    .line 656
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 657
    .line 658
    new-instance v1, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 659
    .line 660
    invoke-direct {v1, v0}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 661
    .line 662
    .line 663
    sget-object v0, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 664
    .line 665
    new-instance v0, Landroidx/compose/foundation/shape/PercentCornerSize;

    .line 666
    .line 667
    const/high16 v2, 0x42480000    # 50.0f

    .line 668
    .line 669
    invoke-direct {v0, v2}, Landroidx/compose/foundation/shape/PercentCornerSize;-><init>(F)V

    .line 670
    .line 671
    .line 672
    new-instance v3, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 673
    .line 674
    invoke-direct {v3, v0, v0, v0, v0}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 675
    .line 676
    .line 677
    move-wide/from16 v6, v16

    .line 678
    .line 679
    invoke-static {v14, v6, v7}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-static {v6, v7, v8}, Landroidx/compose/material3/ButtonDefaults;->outlinedButtonColors-ro_MJ88(JLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ButtonColors;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    new-instance v2, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda8;

    .line 688
    .line 689
    move/from16 v14, v40

    .line 690
    .line 691
    invoke-direct {v2, v15, v11, v14}, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 692
    .line 693
    .line 694
    const v6, 0x21910c8

    .line 695
    .line 696
    .line 697
    invoke-static {v6, v2, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 698
    .line 699
    .line 700
    move-result-object v7

    .line 701
    shr-int/lit8 v2, v38, 0xc

    .line 702
    .line 703
    and-int/lit8 v2, v2, 0xe

    .line 704
    .line 705
    const/high16 v6, 0x30180000

    .line 706
    .line 707
    or-int v9, v2, v6

    .line 708
    .line 709
    const/16 v10, 0x1a4

    .line 710
    .line 711
    const/4 v2, 0x0

    .line 712
    const/4 v6, 0x0

    .line 713
    move-object/from16 v42, v5

    .line 714
    .line 715
    move-object v5, v0

    .line 716
    move-object/from16 v0, v42

    .line 717
    .line 718
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/CardKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 722
    .line 723
    .line 724
    goto :goto_c

    .line 725
    :cond_10
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :cond_11
    move-object v11, v1

    .line 730
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 731
    .line 732
    .line 733
    :goto_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 734
    .line 735
    .line 736
    move-result-object v10

    .line 737
    if-eqz v10, :cond_12

    .line 738
    .line 739
    new-instance v0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;

    .line 740
    .line 741
    move-object/from16 v1, p0

    .line 742
    .line 743
    move-object/from16 v3, p2

    .line 744
    .line 745
    move/from16 v4, p3

    .line 746
    .line 747
    move-object/from16 v5, p4

    .line 748
    .line 749
    move-object/from16 v6, p5

    .line 750
    .line 751
    move-object/from16 v7, p6

    .line 752
    .line 753
    move-object/from16 v8, p7

    .line 754
    .line 755
    move/from16 v9, p9

    .line 756
    .line 757
    move-object v2, v11

    .line 758
    invoke-direct/range {v0 .. v9}, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 759
    .line 760
    .line 761
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 762
    .line 763
    :cond_12
    return-void
.end method
