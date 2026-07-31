.class public abstract Lorg/wikipedia/feed/discover/DiscoverModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final discoverPromptImageUrls:Ljava/util/List;


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
    sput-object v0, Lorg/wikipedia/feed/discover/DiscoverModuleKt;->discoverPromptImageUrls:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public static final DiscoverArticlesModule(Landroidx/compose/ui/Modifier;ILorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$Discover;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v4, p13

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const v0, -0x649fbd54

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    move-object/from16 v2, p0

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int v0, p14, v0

    .line 27
    .line 28
    move/from16 v7, p1

    .line 29
    .line 30
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/16 v8, 0x20

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    move v5, v8

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v5, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v5

    .line 43
    move-object/from16 v5, p2

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const/16 v11, 0x100

    .line 50
    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    move v9, v11

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v9, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, v9

    .line 58
    move-object/from16 v9, p3

    .line 59
    .line 60
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    if-eqz v12, :cond_3

    .line 65
    .line 66
    const/16 v12, 0x800

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v12, 0x400

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v12

    .line 72
    move/from16 v12, p4

    .line 73
    .line 74
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    if-eqz v13, :cond_4

    .line 79
    .line 80
    const/16 v13, 0x4000

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    const/16 v13, 0x2000

    .line 84
    .line 85
    :goto_4
    or-int/2addr v0, v13

    .line 86
    move-object/from16 v13, p5

    .line 87
    .line 88
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    if-eqz v14, :cond_5

    .line 93
    .line 94
    const/high16 v14, 0x20000

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    const/high16 v14, 0x10000

    .line 98
    .line 99
    :goto_5
    or-int/2addr v0, v14

    .line 100
    move-object/from16 v14, p6

    .line 101
    .line 102
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    if-eqz v15, :cond_6

    .line 107
    .line 108
    const/high16 v15, 0x100000

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_6
    const/high16 v15, 0x80000

    .line 112
    .line 113
    :goto_6
    or-int/2addr v0, v15

    .line 114
    move-object/from16 v15, p7

    .line 115
    .line 116
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    if-eqz v16, :cond_7

    .line 121
    .line 122
    const/high16 v16, 0x800000

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_7
    const/high16 v16, 0x400000

    .line 126
    .line 127
    :goto_7
    or-int v0, v0, v16

    .line 128
    .line 129
    move-object/from16 v1, p8

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v17

    .line 135
    if-eqz v17, :cond_8

    .line 136
    .line 137
    const/high16 v17, 0x4000000

    .line 138
    .line 139
    goto :goto_8

    .line 140
    :cond_8
    const/high16 v17, 0x2000000

    .line 141
    .line 142
    :goto_8
    or-int v0, v0, v17

    .line 143
    .line 144
    move-object/from16 v3, p9

    .line 145
    .line 146
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v18

    .line 150
    if-eqz v18, :cond_9

    .line 151
    .line 152
    const/high16 v18, 0x20000000

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_9
    const/high16 v18, 0x10000000

    .line 156
    .line 157
    :goto_9
    or-int v0, v0, v18

    .line 158
    .line 159
    move/from16 v18, v0

    .line 160
    .line 161
    move-object/from16 v0, p10

    .line 162
    .line 163
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v19

    .line 167
    if-eqz v19, :cond_a

    .line 168
    .line 169
    const/16 v17, 0x4

    .line 170
    .line 171
    :goto_a
    move-object/from16 v6, p11

    .line 172
    .line 173
    goto :goto_b

    .line 174
    :cond_a
    const/16 v17, 0x2

    .line 175
    .line 176
    goto :goto_a

    .line 177
    :goto_b
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v19

    .line 181
    if-eqz v19, :cond_b

    .line 182
    .line 183
    goto :goto_c

    .line 184
    :cond_b
    const/16 v8, 0x10

    .line 185
    .line 186
    :goto_c
    or-int v8, v17, v8

    .line 187
    .line 188
    move-object/from16 v10, p12

    .line 189
    .line 190
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v17

    .line 194
    if-eqz v17, :cond_c

    .line 195
    .line 196
    goto :goto_d

    .line 197
    :cond_c
    const/16 v11, 0x80

    .line 198
    .line 199
    :goto_d
    or-int/2addr v8, v11

    .line 200
    const v11, 0x12492493

    .line 201
    .line 202
    .line 203
    and-int v11, v18, v11

    .line 204
    .line 205
    const v0, 0x12492492

    .line 206
    .line 207
    .line 208
    if-ne v11, v0, :cond_e

    .line 209
    .line 210
    and-int/lit16 v0, v8, 0x93

    .line 211
    .line 212
    const/16 v11, 0x92

    .line 213
    .line 214
    if-eq v0, v11, :cond_d

    .line 215
    .line 216
    goto :goto_e

    .line 217
    :cond_d
    const/4 v0, 0x0

    .line 218
    goto :goto_f

    .line 219
    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 220
    :goto_f
    and-int/lit8 v11, v18, 0x1

    .line 221
    .line 222
    invoke-virtual {v4, v11, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_f

    .line 227
    .line 228
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 229
    .line 230
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Landroid/content/Context;

    .line 235
    .line 236
    new-instance v5, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    move-object/from16 v16, v3

    .line 239
    .line 240
    move-object/from16 v17, v6

    .line 241
    .line 242
    move-object v6, v9

    .line 243
    move-object v9, v10

    .line 244
    move v11, v12

    .line 245
    move-object v12, v13

    .line 246
    move-object v13, v15

    .line 247
    move-object v10, v0

    .line 248
    move-object v15, v1

    .line 249
    move v0, v8

    .line 250
    move-object/from16 v8, p2

    .line 251
    .line 252
    invoke-direct/range {v5 .. v17}, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/feed/ForYouModule$Discover;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Landroid/content/Context;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 253
    .line 254
    .line 255
    const v1, -0x1b108528

    .line 256
    .line 257
    .line 258
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    and-int/lit8 v1, v18, 0xe

    .line 263
    .line 264
    or-int/lit16 v1, v1, 0xc00

    .line 265
    .line 266
    shr-int/lit8 v5, v18, 0x6

    .line 267
    .line 268
    and-int/lit8 v5, v5, 0x70

    .line 269
    .line 270
    or-int/2addr v1, v5

    .line 271
    shl-int/lit8 v0, v0, 0x6

    .line 272
    .line 273
    and-int/lit16 v0, v0, 0x380

    .line 274
    .line 275
    or-int v5, v1, v0

    .line 276
    .line 277
    move-object/from16 v1, p3

    .line 278
    .line 279
    move-object v0, v2

    .line 280
    move-object/from16 v2, p10

    .line 281
    .line 282
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouModulePager(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/ForYouModule;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 283
    .line 284
    .line 285
    goto :goto_10

    .line 286
    :cond_f
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 287
    .line 288
    .line 289
    :goto_10
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    new-instance v1, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda1;

    .line 296
    .line 297
    move-object/from16 v2, p0

    .line 298
    .line 299
    move/from16 v3, p1

    .line 300
    .line 301
    move-object/from16 v4, p2

    .line 302
    .line 303
    move-object/from16 v5, p3

    .line 304
    .line 305
    move/from16 v6, p4

    .line 306
    .line 307
    move-object/from16 v7, p5

    .line 308
    .line 309
    move-object/from16 v8, p6

    .line 310
    .line 311
    move-object/from16 v9, p7

    .line 312
    .line 313
    move-object/from16 v10, p8

    .line 314
    .line 315
    move-object/from16 v11, p9

    .line 316
    .line 317
    move-object/from16 v12, p10

    .line 318
    .line 319
    move-object/from16 v13, p11

    .line 320
    .line 321
    move-object/from16 v14, p12

    .line 322
    .line 323
    move/from16 v15, p14

    .line 324
    .line 325
    invoke-direct/range {v1 .. v15}, Lorg/wikipedia/feed/discover/DiscoverModuleKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;ILorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/ForYouModule$Discover;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    .line 326
    .line 327
    .line 328
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 329
    .line 330
    :cond_10
    return-void
.end method

.method public static final DiscoverEnablePromptModule(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
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
    const v0, 0x21bed425

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
    const v4, 0x7f120277

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
    const v4, 0x7f120276

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
    const v4, 0x7f120275

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
    const v1, 0x7f080198

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
    sget-object v10, Lorg/wikipedia/feed/discover/DiscoverModuleKt;->discoverPromptImageUrls:Ljava/util/List;

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
    const/4 v2, 0x0

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

.method public static final SeeAllRecommendationsSlide(Landroidx/compose/ui/Modifier;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 37

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v14, p4

    .line 6
    .line 7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v0, -0x56ff75d5

    .line 11
    .line 12
    .line 13
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    or-int/lit8 v0, p5, 0x6

    .line 17
    .line 18
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, 0x10

    .line 29
    .line 30
    :goto_0
    or-int/2addr v0, v2

    .line 31
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/16 v2, 0x100

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v2, 0x80

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v2

    .line 43
    move-object/from16 v4, p3

    .line 44
    .line 45
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const/16 v2, 0x800

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v2, 0x400

    .line 55
    .line 56
    :goto_2
    or-int/2addr v0, v2

    .line 57
    and-int/lit16 v2, v0, 0x493

    .line 58
    .line 59
    const/16 v6, 0x492

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x1

    .line 63
    if-eq v2, v6, :cond_3

    .line 64
    .line 65
    move v2, v8

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v2, v7

    .line 68
    :goto_3
    and-int/lit8 v6, v0, 0x1

    .line 69
    .line 70
    invoke-virtual {v14, v6, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 77
    .line 78
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/content/Context;

    .line 83
    .line 84
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 85
    .line 86
    sget-wide v9, Lorg/wikipedia/compose/ComposeColors;->Green800:J

    .line 87
    .line 88
    sget-object v11, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 89
    .line 90
    invoke-static {v6, v9, v10, v11}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/high16 v9, 0x41800000    # 16.0f

    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v11, 0x2

    .line 98
    invoke-static {v6, v9, v10, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    mul-int/lit8 v6, v1, 0x2

    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x40

    .line 105
    .line 106
    int-to-float v6, v6

    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    const/16 v20, 0xd

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    const/16 v18, 0x0

    .line 114
    .line 115
    move/from16 v17, v6

    .line 116
    .line 117
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    sget-object v10, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 122
    .line 123
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 124
    .line 125
    const/4 v13, 0x6

    .line 126
    invoke-static {v10, v12, v14, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    iget-wide v12, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 131
    .line 132
    ushr-long v15, v12, v3

    .line 133
    .line 134
    xor-long/2addr v12, v15

    .line 135
    long-to-int v3, v12

    .line 136
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-static {v14, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 145
    .line 146
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 150
    .line 151
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 152
    .line 153
    .line 154
    iget-boolean v15, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 155
    .line 156
    if-eqz v15, :cond_4

    .line 157
    .line 158
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 163
    .line 164
    .line 165
    :goto_4
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 166
    .line 167
    invoke-static {v14, v10, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 171
    .line 172
    invoke-static {v14, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v14, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 185
    .line 186
    invoke-static {v14, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 187
    .line 188
    .line 189
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 190
    .line 191
    invoke-static {v14, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    const-string v3, "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Africa_and_Europe_from_a_Million_Miles_Away.png/500px-Africa_and_Europe_from_a_Million_Miles_Away.png"

    .line 195
    .line 196
    const/16 v6, 0x30

    .line 197
    .line 198
    const/4 v10, 0x0

    .line 199
    invoke-static {v6, v14, v10, v3}, Lorg/wikipedia/feed/discover/DiscoverModuleKt;->SkeletonArticlePreviewRow(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 203
    .line 204
    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-static {v14, v9}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 209
    .line 210
    .line 211
    const-string v9, "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Edele_Tronier_Ruins_of_St_Catherine%27s_Church_in_Visby%2C_Gotland.jpg/500px-Edele_Tronier_Ruins_of_St_Catherine%27s_Church_in_Visby%2C_Gotland.jpg?_=20220126092935"

    .line 212
    .line 213
    invoke-static {v6, v14, v10, v9}, Lorg/wikipedia/feed/discover/DiscoverModuleKt;->SkeletonArticlePreviewRow(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const/high16 v6, 0x42800000    # 64.0f

    .line 217
    .line 218
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-static {v14, v6}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 223
    .line 224
    .line 225
    const/high16 v6, 0x3f800000    # 1.0f

    .line 226
    .line 227
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    iget-object v10, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 232
    .line 233
    const v12, 0x7f12027a

    .line 234
    .line 235
    .line 236
    new-array v13, v7, [Ljava/lang/Object;

    .line 237
    .line 238
    invoke-static {v2, v10, v12, v13}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    sget-object v12, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 243
    .line 244
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    check-cast v13, Landroidx/compose/material3/Typography;

    .line 249
    .line 250
    iget-object v15, v13, Landroidx/compose/material3/Typography;->headlineMedium:Landroidx/compose/ui/text/TextStyle;

    .line 251
    .line 252
    const/16 v26, 0x0

    .line 253
    .line 254
    const v27, 0xffffdf

    .line 255
    .line 256
    .line 257
    const-wide/16 v16, 0x0

    .line 258
    .line 259
    const-wide/16 v18, 0x0

    .line 260
    .line 261
    const/16 v20, 0x0

    .line 262
    .line 263
    sget-object v21, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 264
    .line 265
    const-wide/16 v22, 0x0

    .line 266
    .line 267
    const-wide/16 v24, 0x0

    .line 268
    .line 269
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 270
    .line 271
    .line 272
    move-result-object v25

    .line 273
    sget-object v13, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 274
    .line 275
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v15

    .line 279
    check-cast v15, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 280
    .line 281
    iget-wide v6, v15, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 282
    .line 283
    const/16 v28, 0x0

    .line 284
    .line 285
    const v29, 0x1fff8

    .line 286
    .line 287
    .line 288
    move v15, v8

    .line 289
    move-wide/from16 v35, v6

    .line 290
    .line 291
    move-object v7, v9

    .line 292
    move-wide/from16 v8, v35

    .line 293
    .line 294
    move-object v6, v10

    .line 295
    const/4 v10, 0x0

    .line 296
    move/from16 v18, v11

    .line 297
    .line 298
    move-object/from16 v17, v12

    .line 299
    .line 300
    const-wide/16 v11, 0x0

    .line 301
    .line 302
    move-object/from16 v19, v13

    .line 303
    .line 304
    const/4 v13, 0x0

    .line 305
    const/4 v14, 0x0

    .line 306
    move/from16 v21, v15

    .line 307
    .line 308
    const/16 v20, 0x0

    .line 309
    .line 310
    const-wide/16 v15, 0x0

    .line 311
    .line 312
    move-object/from16 v22, v17

    .line 313
    .line 314
    const/16 v17, 0x0

    .line 315
    .line 316
    move/from16 v24, v18

    .line 317
    .line 318
    move-object/from16 v23, v19

    .line 319
    .line 320
    const-wide/16 v18, 0x0

    .line 321
    .line 322
    move/from16 v26, v20

    .line 323
    .line 324
    const/16 v20, 0x0

    .line 325
    .line 326
    move/from16 v27, v21

    .line 327
    .line 328
    const/16 v21, 0x0

    .line 329
    .line 330
    move-object/from16 v30, v22

    .line 331
    .line 332
    const/16 v22, 0x0

    .line 333
    .line 334
    move-object/from16 v31, v23

    .line 335
    .line 336
    const/16 v23, 0x0

    .line 337
    .line 338
    move/from16 v32, v24

    .line 339
    .line 340
    const/16 v24, 0x0

    .line 341
    .line 342
    move/from16 v33, v27

    .line 343
    .line 344
    const/16 v27, 0x30

    .line 345
    .line 346
    move-object/from16 v26, p4

    .line 347
    .line 348
    move/from16 v34, v0

    .line 349
    .line 350
    move-object/from16 v0, v30

    .line 351
    .line 352
    move-object/from16 v1, v31

    .line 353
    .line 354
    const/high16 v4, 0x3f800000    # 1.0f

    .line 355
    .line 356
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v14, v26

    .line 360
    .line 361
    const/high16 v6, 0x41400000    # 12.0f

    .line 362
    .line 363
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    invoke-static {v14, v6}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    iget-object v6, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 375
    .line 376
    const v8, 0x7f120279

    .line 377
    .line 378
    .line 379
    const/4 v9, 0x0

    .line 380
    new-array v9, v9, [Ljava/lang/Object;

    .line 381
    .line 382
    invoke-static {v2, v6, v8, v9}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 391
    .line 392
    iget-object v15, v0, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 393
    .line 394
    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 395
    .line 396
    invoke-static {v8, v9}, Lcoil3/util/ContextsKt;->getSp(D)J

    .line 397
    .line 398
    .line 399
    move-result-wide v22

    .line 400
    const/16 v26, 0x0

    .line 401
    .line 402
    const v27, 0xffff7f

    .line 403
    .line 404
    .line 405
    const-wide/16 v16, 0x0

    .line 406
    .line 407
    const/16 v20, 0x0

    .line 408
    .line 409
    const/16 v21, 0x0

    .line 410
    .line 411
    const-wide/16 v24, 0x0

    .line 412
    .line 413
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 414
    .line 415
    .line 416
    move-result-object v25

    .line 417
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 422
    .line 423
    iget-wide v8, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 424
    .line 425
    const/4 v14, 0x0

    .line 426
    const-wide/16 v15, 0x0

    .line 427
    .line 428
    const/16 v17, 0x0

    .line 429
    .line 430
    const/16 v20, 0x0

    .line 431
    .line 432
    const/16 v21, 0x0

    .line 433
    .line 434
    const/16 v22, 0x0

    .line 435
    .line 436
    const/16 v23, 0x0

    .line 437
    .line 438
    const/16 v24, 0x0

    .line 439
    .line 440
    const/16 v27, 0x30

    .line 441
    .line 442
    move-object/from16 v26, p4

    .line 443
    .line 444
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 445
    .line 446
    .line 447
    move-object/from16 v14, v26

    .line 448
    .line 449
    const/high16 v0, 0x41c00000    # 24.0f

    .line 450
    .line 451
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 456
    .line 457
    .line 458
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 459
    .line 460
    new-instance v7, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 461
    .line 462
    invoke-direct {v7, v0}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 463
    .line 464
    .line 465
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    .line 466
    .line 467
    invoke-static {v4, v0, v1}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 468
    .line 469
    .line 470
    move-result-object v11

    .line 471
    new-instance v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;

    .line 472
    .line 473
    const/4 v1, 0x2

    .line 474
    invoke-direct {v0, v2, v5, v1}, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 475
    .line 476
    .line 477
    const v1, 0x4920fb43

    .line 478
    .line 479
    .line 480
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 481
    .line 482
    .line 483
    move-result-object v13

    .line 484
    shr-int/lit8 v0, v34, 0x9

    .line 485
    .line 486
    and-int/lit8 v0, v0, 0xe

    .line 487
    .line 488
    const/high16 v1, 0x30180000

    .line 489
    .line 490
    or-int v15, v0, v1

    .line 491
    .line 492
    const/16 v16, 0x1bc

    .line 493
    .line 494
    const/4 v8, 0x0

    .line 495
    const/4 v9, 0x0

    .line 496
    const/4 v12, 0x0

    .line 497
    move-object/from16 v6, p3

    .line 498
    .line 499
    invoke-static/range {v6 .. v16}, Landroidx/compose/material3/CardKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 500
    .line 501
    .line 502
    const/high16 v0, 0x42200000    # 40.0f

    .line 503
    .line 504
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 509
    .line 510
    .line 511
    const/4 v15, 0x1

    .line 512
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 513
    .line 514
    .line 515
    goto :goto_5

    .line 516
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 517
    .line 518
    .line 519
    move-object/from16 v3, p0

    .line 520
    .line 521
    :goto_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    if-eqz v6, :cond_6

    .line 526
    .line 527
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 528
    .line 529
    move/from16 v1, p1

    .line 530
    .line 531
    move-object/from16 v4, p3

    .line 532
    .line 533
    move/from16 v2, p5

    .line 534
    .line 535
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(IILandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 536
    .line 537
    .line 538
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 539
    .line 540
    :cond_6
    return-void
.end method

.method public static final SkeletonArticlePreviewRow(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V
    .locals 31

    .line 1
    move-object/from16 v9, p1

    .line 2
    .line 3
    const v1, 0x90a0616

    .line 4
    .line 5
    .line 6
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v1, p0, 0x6

    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x13

    .line 12
    .line 13
    const/16 v3, 0x12

    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v14, 0x1

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    move v2, v14

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v13

    .line 22
    :goto_0
    and-int/2addr v1, v14

    .line 23
    invoke-virtual {v9, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v15, 0x3

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->White:J

    .line 31
    .line 32
    const v3, 0x3df5c28f    # 0.12f

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-wide v5, Lorg/wikipedia/compose/ComposeColors;->Green600:J

    .line 45
    .line 46
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 47
    .line 48
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Lkotlin/Pair;

    .line 52
    .line 53
    invoke-direct {v8, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const v4, 0x3f19999a    # 0.6f

    .line 57
    .line 58
    .line 59
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 64
    .line 65
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 66
    .line 67
    .line 68
    new-instance v10, Lkotlin/Pair;

    .line 69
    .line 70
    invoke-direct {v10, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const/high16 v4, 0x3f800000    # 1.0f

    .line 74
    .line 75
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v3, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 84
    .line 85
    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 86
    .line 87
    .line 88
    new-instance v5, Lkotlin/Pair;

    .line 89
    .line 90
    invoke-direct {v5, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-array v3, v15, [Lkotlin/Pair;

    .line 94
    .line 95
    aput-object v8, v3, v13

    .line 96
    .line 97
    aput-object v10, v3, v14

    .line 98
    .line 99
    const/4 v6, 0x2

    .line 100
    aput-object v5, v3, v6

    .line 101
    .line 102
    const-wide/16 v19, 0x0

    .line 103
    .line 104
    const/16 v21, 0xe

    .line 105
    .line 106
    const-wide/16 v17, 0x0

    .line 107
    .line 108
    move-object/from16 v16, v3

    .line 109
    .line 110
    invoke-static/range {v16 .. v21}, Landroidx/collection/internal/Lock;->linearGradient-mHitzGk$default([Lkotlin/Pair;JJI)Landroidx/compose/ui/graphics/LinearGradient;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance v7, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 121
    .line 122
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    const/16 v10, 0xa

    .line 125
    .line 126
    invoke-direct {v8, v10}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 127
    .line 128
    .line 129
    const/high16 v11, 0x41800000    # 16.0f

    .line 130
    .line 131
    invoke-direct {v7, v11, v14, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 132
    .line 133
    .line 134
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 135
    .line 136
    const/16 v12, 0x36

    .line 137
    .line 138
    invoke-static {v7, v8, v9, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    move v8, v11

    .line 143
    iget-wide v10, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 144
    .line 145
    const/16 v16, 0x20

    .line 146
    .line 147
    ushr-long v17, v10, v16

    .line 148
    .line 149
    xor-long v10, v10, v17

    .line 150
    .line 151
    long-to-int v10, v10

    .line 152
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-static {v9, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 161
    .line 162
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 166
    .line 167
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 168
    .line 169
    .line 170
    iget-boolean v4, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 171
    .line 172
    if-eqz v4, :cond_1

    .line 173
    .line 174
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 179
    .line 180
    .line 181
    :goto_1
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 182
    .line 183
    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 187
    .line 188
    invoke-static {v9, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 196
    .line 197
    invoke-static {v9, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 201
    .line 202
    invoke-static {v9, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 203
    .line 204
    .line 205
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 206
    .line 207
    invoke-static {v9, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    .line 209
    .line 210
    move-object v6, v4

    .line 211
    new-instance v4, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 212
    .line 213
    move/from16 v19, v8

    .line 214
    .line 215
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    .line 216
    .line 217
    invoke-direct {v8, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v4, v8}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 221
    .line 222
    .line 223
    new-instance v8, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 224
    .line 225
    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    .line 226
    .line 227
    invoke-direct {v13, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v8, v13}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 231
    .line 232
    .line 233
    const/high16 v1, 0x42b40000    # 90.0f

    .line 234
    .line 235
    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    move-object v2, v11

    .line 248
    const/4 v11, 0x6

    .line 249
    move-object v13, v12

    .line 250
    const/16 v12, 0x7be0

    .line 251
    .line 252
    move-object/from16 v19, v2

    .line 253
    .line 254
    const/4 v2, 0x0

    .line 255
    move-object/from16 v21, v6

    .line 256
    .line 257
    const/4 v6, 0x0

    .line 258
    move-object/from16 v22, v7

    .line 259
    .line 260
    const/4 v7, 0x0

    .line 261
    move-object/from16 v23, v5

    .line 262
    .line 263
    move-object v5, v8

    .line 264
    sget-object v8, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 265
    .line 266
    move-object/from16 v24, v10

    .line 267
    .line 268
    const v10, 0x9036

    .line 269
    .line 270
    .line 271
    move-object/from16 v25, v13

    .line 272
    .line 273
    move-object/from16 v28, v19

    .line 274
    .line 275
    move-object/from16 v26, v21

    .line 276
    .line 277
    move-object/from16 v27, v22

    .line 278
    .line 279
    move-object/from16 v30, v23

    .line 280
    .line 281
    move-object/from16 v29, v24

    .line 282
    .line 283
    const/high16 v0, 0x3f800000    # 1.0f

    .line 284
    .line 285
    move-object v13, v3

    .line 286
    move-object v3, v1

    .line 287
    move-object/from16 v1, p3

    .line 288
    .line 289
    invoke-static/range {v1 .. v12}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 290
    .line 291
    .line 292
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 293
    .line 294
    invoke-direct {v1, v0, v14}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 298
    .line 299
    new-instance v2, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 300
    .line 301
    const/16 v3, 0xa

    .line 302
    .line 303
    invoke-direct {v2, v3}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 304
    .line 305
    .line 306
    const/high16 v3, 0x41400000    # 12.0f

    .line 307
    .line 308
    invoke-direct {v0, v3, v14, v2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 309
    .line 310
    .line 311
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 312
    .line 313
    const/4 v3, 0x6

    .line 314
    invoke-static {v0, v2, v9, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-wide v4, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 319
    .line 320
    ushr-long v6, v4, v16

    .line 321
    .line 322
    xor-long/2addr v4, v6

    .line 323
    long-to-int v2, v4

    .line 324
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-static {v9, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 333
    .line 334
    .line 335
    iget-boolean v5, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 336
    .line 337
    if-eqz v5, :cond_2

    .line 338
    .line 339
    move-object/from16 v5, v25

    .line 340
    .line 341
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 342
    .line 343
    .line 344
    :goto_2
    move-object/from16 v6, v26

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 348
    .line 349
    .line 350
    goto :goto_2

    .line 351
    :goto_3
    invoke-static {v9, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v0, v27

    .line 355
    .line 356
    invoke-static {v9, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v0, v28

    .line 360
    .line 361
    move-object/from16 v4, v29

    .line 362
    .line 363
    invoke-static {v2, v9, v0, v9, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v9, v1, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 367
    .line 368
    .line 369
    const v0, 0x3f4ccccd    # 0.8f

    .line 370
    .line 371
    .line 372
    move-object/from16 v1, v30

    .line 373
    .line 374
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const/high16 v2, 0x41a00000    # 20.0f

    .line 379
    .line 380
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    const/high16 v4, 0x41200000    # 10.0f

    .line 385
    .line 386
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    invoke-static {v0, v5}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const/4 v5, 0x0

    .line 395
    invoke-static {v0, v13, v5, v3}, Landroidx/compose/foundation/ImageKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/LinearGradient;Landroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    const/4 v6, 0x0

    .line 400
    invoke-static {v0, v9, v6}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 401
    .line 402
    .line 403
    const/high16 v0, 0x3f000000    # 0.5f

    .line 404
    .line 405
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-static {v0, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v0, v13, v5, v3}, Landroidx/compose/foundation/ImageKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/LinearGradient;Landroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v0, v9, v6}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 432
    .line 433
    .line 434
    goto :goto_4

    .line 435
    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 436
    .line 437
    .line 438
    move-object/from16 v1, p2

    .line 439
    .line 440
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    if-eqz v0, :cond_4

    .line 445
    .line 446
    new-instance v2, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;

    .line 447
    .line 448
    const/4 v5, 0x3

    .line 449
    move/from16 v3, p0

    .line 450
    .line 451
    move-object/from16 v4, p3

    .line 452
    .line 453
    invoke-direct {v2, v1, v4, v3, v5}, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;II)V

    .line 454
    .line 455
    .line 456
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 457
    .line 458
    :cond_4
    return-void
.end method
