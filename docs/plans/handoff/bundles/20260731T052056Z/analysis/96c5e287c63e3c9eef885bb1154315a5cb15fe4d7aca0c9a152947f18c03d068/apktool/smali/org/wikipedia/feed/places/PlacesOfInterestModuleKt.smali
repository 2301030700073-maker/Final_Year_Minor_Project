.class public abstract Lorg/wikipedia/feed/places/PlacesOfInterestModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final placesPromptImageUrls:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Rio_de_Janeiro%2C_Brazil_003_version_2.jpg/500px-Rio_de_Janeiro%2C_Brazil_003_version_2.jpg"

    .line 2
    .line 3
    const-string v1, "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Snowy_Mountains_In_Sky_%28Unsplash%29.jpg/500px-Snowy_Mountains_In_Sky_%28Unsplash%29.jpg"

    .line 4
    .line 5
    const-string v2, "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Pyramids_of_Giza%2C_Giza%2C_GG%2C_EGY_%2846986591195%29.jpg/500px-Pyramids_of_Giza%2C_Giza%2C_GG%2C_EGY_%2846986591195%29.jpg"

    .line 6
    .line 7
    const-string v3, "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Pavillon_Sully_du_Louvre_002.jpg/500px-Pavillon_Sully_du_Louvre_002.jpg"

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
    sput-object v0, Lorg/wikipedia/feed/places/PlacesOfInterestModuleKt;->placesPromptImageUrls:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public static final PlacesOfInterestArticlesModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 15

    .line 1
    move-object/from16 v4, p10

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const v0, 0x4fa8333

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p11, v0

    .line 25
    .line 26
    move-object/from16 v7, p1

    .line 27
    .line 28
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v1

    .line 40
    move-object/from16 v6, p2

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v1, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v1

    .line 54
    move-object/from16 v5, p3

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x800

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v1, 0x400

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v1

    .line 68
    move-object/from16 v11, p4

    .line 69
    .line 70
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    const/16 v1, 0x4000

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    const/16 v1, 0x2000

    .line 80
    .line 81
    :goto_4
    or-int/2addr v0, v1

    .line 82
    move-object/from16 v10, p5

    .line 83
    .line 84
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const/high16 v1, 0x20000

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_5
    const/high16 v1, 0x10000

    .line 94
    .line 95
    :goto_5
    or-int/2addr v0, v1

    .line 96
    move-object/from16 v8, p6

    .line 97
    .line 98
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    const/high16 v1, 0x100000

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_6
    const/high16 v1, 0x80000

    .line 108
    .line 109
    :goto_6
    or-int/2addr v0, v1

    .line 110
    move-object/from16 v9, p7

    .line 111
    .line 112
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    const/high16 v1, 0x800000

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_7
    const/high16 v1, 0x400000

    .line 122
    .line 123
    :goto_7
    or-int/2addr v0, v1

    .line 124
    move-object/from16 v2, p8

    .line 125
    .line 126
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    const/high16 v1, 0x4000000

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_8
    const/high16 v1, 0x2000000

    .line 136
    .line 137
    :goto_8
    or-int/2addr v0, v1

    .line 138
    move-object/from16 v14, p9

    .line 139
    .line 140
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    const/high16 v1, 0x20000000

    .line 147
    .line 148
    goto :goto_9

    .line 149
    :cond_9
    const/high16 v1, 0x10000000

    .line 150
    .line 151
    :goto_9
    or-int/2addr v0, v1

    .line 152
    const v1, 0x12492493

    .line 153
    .line 154
    .line 155
    and-int/2addr v1, v0

    .line 156
    const v3, 0x12492492

    .line 157
    .line 158
    .line 159
    if-eq v1, v3, :cond_a

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    goto :goto_a

    .line 163
    :cond_a
    const/4 v1, 0x0

    .line 164
    :goto_a
    and-int/lit8 v3, v0, 0x1

    .line 165
    .line 166
    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    .line 174
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Landroid/content/Context;

    .line 179
    .line 180
    new-instance v5, Lorg/wikipedia/feed/places/PlacesOfInterestModuleKt$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    move-object v12, v8

    .line 183
    move-object v13, v9

    .line 184
    move-object/from16 v9, p3

    .line 185
    .line 186
    move-object v8, v1

    .line 187
    invoke-direct/range {v5 .. v14}, Lorg/wikipedia/feed/places/PlacesOfInterestModuleKt$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;Lorg/wikipedia/dataclient/WikiSite;Landroid/content/Context;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 188
    .line 189
    .line 190
    const v1, 0x699c55f

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    and-int/lit8 v1, v0, 0xe

    .line 198
    .line 199
    or-int/lit16 v1, v1, 0xc00

    .line 200
    .line 201
    shr-int/lit8 v5, v0, 0x3

    .line 202
    .line 203
    and-int/lit8 v5, v5, 0x70

    .line 204
    .line 205
    or-int/2addr v1, v5

    .line 206
    shr-int/lit8 v0, v0, 0x12

    .line 207
    .line 208
    and-int/lit16 v0, v0, 0x380

    .line 209
    .line 210
    or-int v5, v1, v0

    .line 211
    .line 212
    move-object v0, p0

    .line 213
    move-object/from16 v1, p2

    .line 214
    .line 215
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouModulePager(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/ForYouModule;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 216
    .line 217
    .line 218
    goto :goto_b

    .line 219
    :cond_b
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 220
    .line 221
    .line 222
    :goto_b
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_c

    .line 227
    .line 228
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda13;

    .line 229
    .line 230
    const/4 v13, 0x5

    .line 231
    move-object v2, p0

    .line 232
    move-object/from16 v3, p1

    .line 233
    .line 234
    move-object/from16 v4, p2

    .line 235
    .line 236
    move-object/from16 v5, p3

    .line 237
    .line 238
    move-object/from16 v6, p4

    .line 239
    .line 240
    move-object/from16 v7, p5

    .line 241
    .line 242
    move-object/from16 v8, p6

    .line 243
    .line 244
    move-object/from16 v9, p7

    .line 245
    .line 246
    move-object/from16 v10, p8

    .line 247
    .line 248
    move-object/from16 v11, p9

    .line 249
    .line 250
    move/from16 v12, p11

    .line 251
    .line 252
    invoke-direct/range {v1 .. v13}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    .line 253
    .line 254
    .line 255
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 256
    .line 257
    :cond_c
    return-void
.end method

.method public static final PlacesOfInterestLocationPromptModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    move-object/from16 v14, p3

    .line 4
    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v0, -0x16cab4ac

    .line 9
    .line 10
    .line 11
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    move-object/from16 v11, p0

    .line 15
    .line 16
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int v0, p4, v0

    .line 26
    .line 27
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    move-object/from16 v13, p2

    .line 40
    .line 41
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x100

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x80

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    and-int/lit16 v1, v0, 0x93

    .line 54
    .line 55
    const/16 v2, 0x92

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    if-eq v1, v2, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v1, v3

    .line 63
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {v14, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 72
    .line 73
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/content/Context;

    .line 78
    .line 79
    iget-object v2, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 80
    .line 81
    const v4, 0x7f12028b

    .line 82
    .line 83
    .line 84
    new-array v6, v3, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v1, v2, v4, v6}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    iget-object v2, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 91
    .line 92
    const v4, 0x7f12028a

    .line 93
    .line 94
    .line 95
    new-array v7, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-static {v1, v2, v4, v7}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iget-object v2, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 102
    .line 103
    const v4, 0x7f120289

    .line 104
    .line 105
    .line 106
    new-array v8, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {v1, v2, v4, v8}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    const v1, 0x7f08019b

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v3, v14}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    shl-int/lit8 v0, v0, 0xf

    .line 120
    .line 121
    const/high16 v1, 0x70000

    .line 122
    .line 123
    and-int/2addr v1, v0

    .line 124
    const/16 v2, 0x1000

    .line 125
    .line 126
    or-int/2addr v1, v2

    .line 127
    const/high16 v2, 0x1c00000

    .line 128
    .line 129
    and-int/2addr v0, v2

    .line 130
    or-int v15, v1, v0

    .line 131
    .line 132
    const/16 v16, 0x40

    .line 133
    .line 134
    sget-object v10, Lorg/wikipedia/feed/places/PlacesOfInterestModuleKt;->placesPromptImageUrls:Ljava/util/List;

    .line 135
    .line 136
    const/4 v12, 0x0

    .line 137
    invoke-static/range {v6 .. v16}, Lorg/wikipedia/feed/ForYouCardKt;->FeedFeatureTeaserModule-0vH8DBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Ljava/util/List;Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 142
    .line 143
    .line 144
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-eqz v6, :cond_5

    .line 149
    .line 150
    new-instance v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda2;

    .line 151
    .line 152
    const/4 v2, 0x1

    .line 153
    move-object/from16 v3, p0

    .line 154
    .line 155
    move-object/from16 v4, p2

    .line 156
    .line 157
    move/from16 v1, p4

    .line 158
    .line 159
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda2;-><init>(IILandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 160
    .line 161
    .line 162
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 163
    .line 164
    :cond_5
    return-void
.end method
