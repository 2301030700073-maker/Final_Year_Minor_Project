.class public abstract Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-1561479040:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$-1692121950:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$-410948748:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x64dbbb5e

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->lambda$-1692121950:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    const v2, -0x5d124780

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->lambda$-1561479040:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 34
    .line 35
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 42
    .line 43
    const v2, -0x187e948c

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->lambda$-410948748:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 50
    .line 51
    return-void
.end method

.method public static final AlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    move-object/from16 v12, p9

    check-cast v12, Landroidx/compose/runtime/GapComposer;

    const v0, 0x62c32f53

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p10, v0

    invoke-virtual {v12, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v3, p2

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v5, p3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    const/high16 v4, 0x1b0000

    or-int/2addr v0, v4

    move-object/from16 v7, p6

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x800000

    goto :goto_4

    :cond_4
    const/high16 v4, 0x400000

    :goto_4
    or-int/2addr v0, v4

    const/high16 v4, 0x30000000

    or-int/2addr v0, v4

    const v6, 0x12492493

    and-int/2addr v6, v0

    const v8, 0x12492492

    if-eq v6, v8, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v12, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 406
    new-instance v6, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    const/4 v8, 0x3

    invoke-direct {v6, p1, v8}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    const v9, -0x52871e5d

    invoke-static {v9, v6, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    and-int/lit8 v6, v0, 0xe

    or-int/2addr v4, v6

    shr-int/2addr v0, v8

    and-int/lit8 v6, v0, 0x70

    or-int/2addr v4, v6

    and-int/lit16 v6, v0, 0x380

    or-int/2addr v4, v6

    const v6, 0x36c00

    or-int/2addr v4, v6

    const/high16 v6, 0x380000

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    const/high16 v4, 0x6c00000

    or-int v13, v0, v4

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v4, v3

    move-object v3, p0

    .line 407
    invoke-static/range {v3 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->AlertDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 408
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v0

    move v9, v10

    goto :goto_6

    .line 409
    :cond_6
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move/from16 v9, p8

    .line 410
    :goto_6
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_7

    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZI)V

    .line 411
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final AlertDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 29

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
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move/from16 v8, p7

    .line 14
    .line 15
    move-object/from16 v9, p8

    .line 16
    .line 17
    move/from16 v10, p10

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-object/from16 v0, p9

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    const v4, 0x7b106e69

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    .line 41
    and-int/lit8 v4, v10, 0x6

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v4, 0x2

    .line 54
    :goto_0
    or-int/2addr v4, v10

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v4, v10

    .line 57
    :goto_1
    and-int/lit8 v12, v10, 0x30

    .line 58
    .line 59
    if-nez v12, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    if-eqz v12, :cond_2

    .line 66
    .line 67
    const/16 v12, 0x20

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/16 v12, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v4, v12

    .line 73
    :cond_3
    and-int/lit16 v12, v10, 0x180

    .line 74
    .line 75
    if-nez v12, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_4

    .line 82
    .line 83
    const/16 v12, 0x100

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    const/16 v12, 0x80

    .line 87
    .line 88
    :goto_3
    or-int/2addr v4, v12

    .line 89
    :cond_5
    and-int/lit16 v12, v10, 0xc00

    .line 90
    .line 91
    if-nez v12, :cond_7

    .line 92
    .line 93
    move-object/from16 v12, p3

    .line 94
    .line 95
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-eqz v13, :cond_6

    .line 100
    .line 101
    const/16 v13, 0x800

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    const/16 v13, 0x400

    .line 105
    .line 106
    :goto_4
    or-int/2addr v4, v13

    .line 107
    goto :goto_5

    .line 108
    :cond_7
    move-object/from16 v12, p3

    .line 109
    .line 110
    :goto_5
    and-int/lit16 v13, v10, 0x6000

    .line 111
    .line 112
    if-nez v13, :cond_9

    .line 113
    .line 114
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_8

    .line 121
    .line 122
    const/16 v13, 0x4000

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_8
    const/16 v13, 0x2000

    .line 126
    .line 127
    :goto_6
    or-int/2addr v4, v13

    .line 128
    :cond_9
    const/high16 v13, 0x30000

    .line 129
    .line 130
    and-int/2addr v13, v10

    .line 131
    if-nez v13, :cond_b

    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_a

    .line 138
    .line 139
    const/high16 v13, 0x20000

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_a
    const/high16 v13, 0x10000

    .line 143
    .line 144
    :goto_7
    or-int/2addr v4, v13

    .line 145
    :cond_b
    const/high16 v13, 0x180000

    .line 146
    .line 147
    and-int/2addr v13, v10

    .line 148
    if-nez v13, :cond_d

    .line 149
    .line 150
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-eqz v13, :cond_c

    .line 155
    .line 156
    const/high16 v13, 0x100000

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_c
    const/high16 v13, 0x80000

    .line 160
    .line 161
    :goto_8
    or-int/2addr v4, v13

    .line 162
    :cond_d
    const/high16 v13, 0xc00000

    .line 163
    .line 164
    and-int/2addr v13, v10

    .line 165
    if-nez v13, :cond_f

    .line 166
    .line 167
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    if-eqz v13, :cond_e

    .line 172
    .line 173
    const/high16 v13, 0x800000

    .line 174
    .line 175
    goto :goto_9

    .line 176
    :cond_e
    const/high16 v13, 0x400000

    .line 177
    .line 178
    :goto_9
    or-int/2addr v4, v13

    .line 179
    :cond_f
    const/high16 v13, 0x6000000

    .line 180
    .line 181
    and-int/2addr v13, v10

    .line 182
    if-nez v13, :cond_11

    .line 183
    .line 184
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-eqz v13, :cond_10

    .line 189
    .line 190
    const/high16 v13, 0x4000000

    .line 191
    .line 192
    goto :goto_a

    .line 193
    :cond_10
    const/high16 v13, 0x2000000

    .line 194
    .line 195
    :goto_a
    or-int/2addr v4, v13

    .line 196
    :cond_11
    const/high16 v13, 0x30000000

    .line 197
    .line 198
    and-int/2addr v13, v10

    .line 199
    if-nez v13, :cond_13

    .line 200
    .line 201
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    if-eqz v13, :cond_12

    .line 206
    .line 207
    const/high16 v13, 0x20000000

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :cond_12
    const/high16 v13, 0x10000000

    .line 211
    .line 212
    :goto_b
    or-int/2addr v4, v13

    .line 213
    :cond_13
    const v13, 0x12492493

    .line 214
    .line 215
    .line 216
    and-int/2addr v13, v4

    .line 217
    const v14, 0x12492492

    .line 218
    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    if-eq v13, v14, :cond_14

    .line 222
    .line 223
    const/4 v13, 0x1

    .line 224
    goto :goto_c

    .line 225
    :cond_14
    move v13, v15

    .line 226
    :goto_c
    and-int/lit8 v14, v4, 0x1

    .line 227
    .line 228
    invoke-virtual {v0, v14, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-eqz v13, :cond_17

    .line 233
    .line 234
    if-nez v5, :cond_15

    .line 235
    .line 236
    const v14, 0x1d296246

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 243
    .line 244
    .line 245
    const/4 v14, 0x0

    .line 246
    goto :goto_d

    .line 247
    :cond_15
    const v14, 0x1d296247

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 251
    .line 252
    .line 253
    new-instance v14, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;

    .line 254
    .line 255
    invoke-direct {v14, v5, v15}, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    .line 256
    .line 257
    .line 258
    const v13, 0x3e1e1346

    .line 259
    .line 260
    .line 261
    invoke-static {v13, v14, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 266
    .line 267
    .line 268
    move-object v14, v13

    .line 269
    :goto_d
    if-nez v6, :cond_16

    .line 270
    .line 271
    const v13, 0x1d2ec072

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 278
    .line 279
    .line 280
    const/4 v13, 0x0

    .line 281
    goto :goto_e

    .line 282
    :cond_16
    const v13, 0x1d2ec073

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 286
    .line 287
    .line 288
    new-instance v13, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 289
    .line 290
    const/16 v11, 0x12

    .line 291
    .line 292
    invoke-direct {v13, v11, v6, v7}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    const v11, -0x5f95da99

    .line 296
    .line 297
    .line 298
    invoke-static {v11, v13, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 303
    .line 304
    .line 305
    :goto_e
    new-instance v11, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;

    .line 306
    .line 307
    const/4 v15, 0x3

    .line 308
    invoke-direct {v11, v15, v2, v3, v8}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 309
    .line 310
    .line 311
    const v15, 0xa278b21

    .line 312
    .line 313
    .line 314
    invoke-static {v15, v11, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    new-instance v15, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda5;

    .line 319
    .line 320
    invoke-direct {v15, v1, v5}, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    .line 321
    .line 322
    .line 323
    const v1, -0x15eebb63

    .line 324
    .line 325
    .line 326
    invoke-static {v1, v15, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    new-instance v1, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 331
    .line 332
    const/4 v2, 0x4

    .line 333
    invoke-direct {v1, v9, v2}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 334
    .line 335
    .line 336
    const v2, -0x1df44d04

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 340
    .line 341
    .line 342
    move-result-object v16

    .line 343
    shr-int/lit8 v1, v4, 0x9

    .line 344
    .line 345
    and-int/lit8 v1, v1, 0xe

    .line 346
    .line 347
    const v2, 0x1b0030

    .line 348
    .line 349
    .line 350
    or-int/2addr v1, v2

    .line 351
    shr-int/lit8 v2, v4, 0x6

    .line 352
    .line 353
    and-int/lit16 v2, v2, 0x380

    .line 354
    .line 355
    or-int v28, v1, v2

    .line 356
    .line 357
    const/16 v17, 0x0

    .line 358
    .line 359
    const-wide/16 v18, 0x0

    .line 360
    .line 361
    const-wide/16 v20, 0x0

    .line 362
    .line 363
    const-wide/16 v22, 0x0

    .line 364
    .line 365
    const-wide/16 v24, 0x0

    .line 366
    .line 367
    const/16 v26, 0x0

    .line 368
    .line 369
    move-object/from16 v27, v12

    .line 370
    .line 371
    move-object v12, v11

    .line 372
    move-object/from16 v11, v27

    .line 373
    .line 374
    move-object/from16 v27, v0

    .line 375
    .line 376
    invoke-static/range {v11 .. v28}, Landroidx/compose/material3/CardKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V

    .line 377
    .line 378
    .line 379
    goto :goto_f

    .line 380
    :cond_17
    move-object/from16 v27, v0

    .line 381
    .line 382
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 383
    .line 384
    .line 385
    :goto_f
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 386
    .line 387
    .line 388
    move-result-object v11

    .line 389
    if-eqz v11, :cond_18

    .line 390
    .line 391
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda7;

    .line 392
    .line 393
    move-object/from16 v1, p0

    .line 394
    .line 395
    move-object/from16 v2, p1

    .line 396
    .line 397
    move-object/from16 v4, p3

    .line 398
    .line 399
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 400
    .line 401
    .line 402
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 403
    .line 404
    :cond_18
    return-void
.end method

.method public static final BasicDialog-FItCLgY(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    move/from16 v12, p12

    .line 6
    .line 7
    move/from16 v13, p13

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p11

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v2, 0x1c04b4cd

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v2, v12, 0x6

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x2

    .line 38
    :goto_0
    or-int/2addr v2, v12

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, v12

    .line 41
    :goto_1
    and-int/lit8 v4, v12, 0x30

    .line 42
    .line 43
    move-object/from16 v14, p1

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    const/16 v4, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v4, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v2, v4

    .line 59
    :cond_3
    and-int/lit16 v4, v12, 0x180

    .line 60
    .line 61
    move-object/from16 v15, p2

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    const/16 v4, 0x100

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/16 v4, 0x80

    .line 75
    .line 76
    :goto_3
    or-int/2addr v2, v4

    .line 77
    :cond_5
    and-int/lit16 v4, v12, 0xc00

    .line 78
    .line 79
    if-nez v4, :cond_7

    .line 80
    .line 81
    move-object/from16 v4, p3

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_6

    .line 88
    .line 89
    const/16 v5, 0x800

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    const/16 v5, 0x400

    .line 93
    .line 94
    :goto_4
    or-int/2addr v2, v5

    .line 95
    goto :goto_5

    .line 96
    :cond_7
    move-object/from16 v4, p3

    .line 97
    .line 98
    :goto_5
    and-int/lit16 v5, v12, 0x6000

    .line 99
    .line 100
    if-nez v5, :cond_9

    .line 101
    .line 102
    move-object/from16 v5, p4

    .line 103
    .line 104
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_8

    .line 109
    .line 110
    const/16 v7, 0x4000

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_8
    const/16 v7, 0x2000

    .line 114
    .line 115
    :goto_6
    or-int/2addr v2, v7

    .line 116
    goto :goto_7

    .line 117
    :cond_9
    move-object/from16 v5, p4

    .line 118
    .line 119
    :goto_7
    const/high16 v7, 0x30000

    .line 120
    .line 121
    and-int/2addr v7, v12

    .line 122
    if-nez v7, :cond_b

    .line 123
    .line 124
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_a

    .line 129
    .line 130
    const/high16 v7, 0x20000

    .line 131
    .line 132
    goto :goto_8

    .line 133
    :cond_a
    const/high16 v7, 0x10000

    .line 134
    .line 135
    :goto_8
    or-int/2addr v2, v7

    .line 136
    :cond_b
    const/high16 v7, 0x180000

    .line 137
    .line 138
    and-int/2addr v7, v12

    .line 139
    if-nez v7, :cond_d

    .line 140
    .line 141
    move-object/from16 v7, p6

    .line 142
    .line 143
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_c

    .line 148
    .line 149
    const/high16 v8, 0x100000

    .line 150
    .line 151
    goto :goto_9

    .line 152
    :cond_c
    const/high16 v8, 0x80000

    .line 153
    .line 154
    :goto_9
    or-int/2addr v2, v8

    .line 155
    goto :goto_a

    .line 156
    :cond_d
    move-object/from16 v7, p6

    .line 157
    .line 158
    :goto_a
    const/high16 v8, 0xc00000

    .line 159
    .line 160
    and-int/2addr v8, v12

    .line 161
    if-nez v8, :cond_10

    .line 162
    .line 163
    and-int/lit16 v8, v13, 0x80

    .line 164
    .line 165
    if-nez v8, :cond_e

    .line 166
    .line 167
    move/from16 v8, p7

    .line 168
    .line 169
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_f

    .line 174
    .line 175
    const/high16 v9, 0x800000

    .line 176
    .line 177
    goto :goto_b

    .line 178
    :cond_e
    move/from16 v8, p7

    .line 179
    .line 180
    :cond_f
    const/high16 v9, 0x400000

    .line 181
    .line 182
    :goto_b
    or-int/2addr v2, v9

    .line 183
    goto :goto_c

    .line 184
    :cond_10
    move/from16 v8, p7

    .line 185
    .line 186
    :goto_c
    const/high16 v9, 0x6000000

    .line 187
    .line 188
    and-int/2addr v9, v12

    .line 189
    if-nez v9, :cond_11

    .line 190
    .line 191
    const/high16 v9, 0x2000000

    .line 192
    .line 193
    or-int/2addr v2, v9

    .line 194
    :cond_11
    and-int/lit16 v9, v13, 0x200

    .line 195
    .line 196
    const/high16 v10, 0x30000000

    .line 197
    .line 198
    if-eqz v9, :cond_13

    .line 199
    .line 200
    or-int/2addr v2, v10

    .line 201
    :cond_12
    move-object/from16 v10, p10

    .line 202
    .line 203
    goto :goto_e

    .line 204
    :cond_13
    and-int/2addr v10, v12

    .line 205
    if-nez v10, :cond_12

    .line 206
    .line 207
    move-object/from16 v10, p10

    .line 208
    .line 209
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_14

    .line 214
    .line 215
    const/high16 v11, 0x20000000

    .line 216
    .line 217
    goto :goto_d

    .line 218
    :cond_14
    const/high16 v11, 0x10000000

    .line 219
    .line 220
    :goto_d
    or-int/2addr v2, v11

    .line 221
    :goto_e
    const v11, 0x12492493

    .line 222
    .line 223
    .line 224
    and-int/2addr v11, v2

    .line 225
    const v3, 0x12492492

    .line 226
    .line 227
    .line 228
    move/from16 v16, v2

    .line 229
    .line 230
    if-eq v11, v3, :cond_15

    .line 231
    .line 232
    const/4 v3, 0x1

    .line 233
    goto :goto_f

    .line 234
    :cond_15
    const/4 v3, 0x0

    .line 235
    :goto_f
    and-int/lit8 v11, v16, 0x1

    .line 236
    .line 237
    invoke-virtual {v0, v11, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_1c

    .line 242
    .line 243
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 244
    .line 245
    .line 246
    and-int/lit8 v3, v12, 0x1

    .line 247
    .line 248
    const v11, -0xe000001

    .line 249
    .line 250
    .line 251
    const v17, -0x1c00001

    .line 252
    .line 253
    .line 254
    if-eqz v3, :cond_18

    .line 255
    .line 256
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_16

    .line 261
    .line 262
    goto :goto_11

    .line 263
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 264
    .line 265
    .line 266
    and-int/lit16 v3, v13, 0x80

    .line 267
    .line 268
    if-eqz v3, :cond_17

    .line 269
    .line 270
    and-int v3, v16, v17

    .line 271
    .line 272
    goto :goto_10

    .line 273
    :cond_17
    move/from16 v3, v16

    .line 274
    .line 275
    :goto_10
    and-int/2addr v3, v11

    .line 276
    move-wide/from16 v22, p8

    .line 277
    .line 278
    move/from16 v21, v8

    .line 279
    .line 280
    move-object/from16 v24, v10

    .line 281
    .line 282
    const/4 v2, 0x0

    .line 283
    goto :goto_15

    .line 284
    :cond_18
    :goto_11
    and-int/lit16 v3, v13, 0x80

    .line 285
    .line 286
    if-eqz v3, :cond_19

    .line 287
    .line 288
    and-int v3, v16, v17

    .line 289
    .line 290
    const/4 v8, 0x0

    .line 291
    :goto_12
    move/from16 v16, v11

    .line 292
    .line 293
    goto :goto_13

    .line 294
    :cond_19
    move/from16 v3, v16

    .line 295
    .line 296
    goto :goto_12

    .line 297
    :goto_13
    sget-object v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 298
    .line 299
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 304
    .line 305
    move/from16 p7, v3

    .line 306
    .line 307
    iget-wide v2, v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->outlineVariant:J

    .line 308
    .line 309
    and-int v11, p7, v16

    .line 310
    .line 311
    if-eqz v9, :cond_1a

    .line 312
    .line 313
    new-instance v9, Landroidx/compose/ui/window/DialogProperties;

    .line 314
    .line 315
    const/4 v10, 0x7

    .line 316
    move-wide/from16 v18, v2

    .line 317
    .line 318
    const/4 v2, 0x0

    .line 319
    invoke-direct {v9, v10, v2, v2}, Landroidx/compose/ui/window/DialogProperties;-><init>(IZZ)V

    .line 320
    .line 321
    .line 322
    move/from16 v21, v8

    .line 323
    .line 324
    move-object/from16 v24, v9

    .line 325
    .line 326
    :goto_14
    move v3, v11

    .line 327
    move-wide/from16 v22, v18

    .line 328
    .line 329
    goto :goto_15

    .line 330
    :cond_1a
    move-wide/from16 v18, v2

    .line 331
    .line 332
    const/4 v2, 0x0

    .line 333
    move/from16 v21, v8

    .line 334
    .line 335
    move-object/from16 v24, v10

    .line 336
    .line 337
    goto :goto_14

    .line 338
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 339
    .line 340
    .line 341
    new-instance v8, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;

    .line 342
    .line 343
    invoke-direct {v8, v1, v2}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 344
    .line 345
    .line 346
    const v9, 0x76912424

    .line 347
    .line 348
    .line 349
    invoke-static {v9, v8, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 350
    .line 351
    .line 352
    move-result-object v18

    .line 353
    if-nez v6, :cond_1b

    .line 354
    .line 355
    const v8, -0x7848c65f

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 362
    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    move-object/from16 v19, v2

    .line 366
    .line 367
    goto :goto_16

    .line 368
    :cond_1b
    const v8, -0x7848c65e

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 372
    .line 373
    .line 374
    new-instance v8, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;

    .line 375
    .line 376
    const/4 v9, 0x2

    .line 377
    invoke-direct {v8, v6, v9}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 378
    .line 379
    .line 380
    const v9, 0x71d29caf

    .line 381
    .line 382
    .line 383
    invoke-static {v9, v8, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 388
    .line 389
    .line 390
    move-object/from16 v19, v8

    .line 391
    .line 392
    :goto_16
    shr-int/lit8 v2, v3, 0x3

    .line 393
    .line 394
    and-int/lit8 v8, v2, 0xe

    .line 395
    .line 396
    or-int/lit16 v8, v8, 0x6000

    .line 397
    .line 398
    and-int/lit8 v9, v2, 0x70

    .line 399
    .line 400
    or-int/2addr v8, v9

    .line 401
    and-int/lit16 v9, v2, 0x380

    .line 402
    .line 403
    or-int/2addr v8, v9

    .line 404
    and-int/lit16 v2, v2, 0x1c00

    .line 405
    .line 406
    or-int/2addr v2, v8

    .line 407
    const/high16 v8, 0x380000

    .line 408
    .line 409
    and-int/2addr v8, v3

    .line 410
    or-int/2addr v2, v8

    .line 411
    const/high16 v8, 0x1c00000

    .line 412
    .line 413
    and-int/2addr v8, v3

    .line 414
    or-int/2addr v2, v8

    .line 415
    const/high16 v8, 0x70000000

    .line 416
    .line 417
    and-int/2addr v3, v8

    .line 418
    or-int v26, v2, v3

    .line 419
    .line 420
    move-object/from16 v25, v0

    .line 421
    .line 422
    move-object/from16 v16, v4

    .line 423
    .line 424
    move-object/from16 v17, v5

    .line 425
    .line 426
    move-object/from16 v20, v7

    .line 427
    .line 428
    invoke-static/range {v14 .. v26}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->BasicDialog-FItCLgY(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V

    .line 429
    .line 430
    .line 431
    move/from16 v8, v21

    .line 432
    .line 433
    move-wide/from16 v9, v22

    .line 434
    .line 435
    move-object/from16 v11, v24

    .line 436
    .line 437
    goto :goto_17

    .line 438
    :cond_1c
    move-object/from16 v25, v0

    .line 439
    .line 440
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 441
    .line 442
    .line 443
    move-object v11, v10

    .line 444
    move-wide/from16 v9, p8

    .line 445
    .line 446
    :goto_17
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 447
    .line 448
    .line 449
    move-result-object v14

    .line 450
    if-eqz v14, :cond_1d

    .line 451
    .line 452
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda2;

    .line 453
    .line 454
    move-object/from16 v2, p1

    .line 455
    .line 456
    move-object/from16 v3, p2

    .line 457
    .line 458
    move-object/from16 v4, p3

    .line 459
    .line 460
    move-object/from16 v5, p4

    .line 461
    .line 462
    move-object/from16 v7, p6

    .line 463
    .line 464
    invoke-direct/range {v0 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/ui/window/DialogProperties;II)V

    .line 465
    .line 466
    .line 467
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 468
    .line 469
    :cond_1d
    return-void
.end method

.method public static final BasicDialog-FItCLgY(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    move-object/from16 v0, p11

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v2, -0x56273669

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v12

    goto :goto_1

    :cond_1
    move v2, v12

    :goto_1
    and-int/lit8 v3, v12, 0x30

    move-object/from16 v14, p1

    if-nez v3, :cond_3

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v12, 0x180

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v2, v4

    goto :goto_4

    :cond_5
    move-object/from16 v3, p2

    :goto_4
    and-int/lit16 v4, v12, 0xc00

    if-nez v4, :cond_7

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_5

    :cond_6
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v2, v5

    goto :goto_6

    :cond_7
    move-object/from16 v4, p3

    :goto_6
    and-int/lit16 v5, v12, 0x6000

    if-nez v5, :cond_9

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_7

    :cond_8
    const/16 v6, 0x2000

    :goto_7
    or-int/2addr v2, v6

    goto :goto_8

    :cond_9
    move-object/from16 v5, p4

    :goto_8
    const/high16 v6, 0x30000

    and-int/2addr v6, v12

    if-nez v6, :cond_b

    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v7, 0x10000

    :goto_9
    or-int/2addr v2, v7

    goto :goto_a

    :cond_b
    move-object/from16 v6, p5

    :goto_a
    const/high16 v7, 0x180000

    and-int/2addr v7, v12

    if-nez v7, :cond_d

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v8, 0x80000

    :goto_b
    or-int/2addr v2, v8

    goto :goto_c

    :cond_d
    move-object/from16 v7, p6

    :goto_c
    const/high16 v8, 0xc00000

    and-int/2addr v8, v12

    if-nez v8, :cond_f

    move/from16 v8, p7

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_e

    const/high16 v9, 0x800000

    goto :goto_d

    :cond_e
    const/high16 v9, 0x400000

    :goto_d
    or-int/2addr v2, v9

    goto :goto_e

    :cond_f
    move/from16 v8, p7

    :goto_e
    const/high16 v9, 0x6000000

    and-int/2addr v9, v12

    if-nez v9, :cond_11

    move-wide/from16 v9, p8

    invoke-virtual {v0, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x4000000

    goto :goto_f

    :cond_10
    const/high16 v13, 0x2000000

    :goto_f
    or-int/2addr v2, v13

    goto :goto_10

    :cond_11
    move-wide/from16 v9, p8

    :goto_10
    const/high16 v13, 0x30000000

    and-int/2addr v13, v12

    if-nez v13, :cond_13

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/high16 v13, 0x20000000

    goto :goto_11

    :cond_12
    const/high16 v13, 0x10000000

    :goto_11
    or-int/2addr v2, v13

    :cond_13
    const v13, 0x12492493

    and-int/2addr v13, v2

    const v15, 0x12492492

    if-eq v13, v15, :cond_14

    const/4 v13, 0x1

    goto :goto_12

    :cond_14
    const/4 v13, 0x0

    :goto_12
    and-int/lit8 v15, v2, 0x1

    invoke-virtual {v0, v15, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_16

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_15

    goto :goto_13

    .line 471
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_16
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 472
    new-instance v13, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda3;

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide/from16 v21, v9

    invoke-direct/range {v13 .. v22}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJ)V

    const v3, -0x61be01d2

    invoke-static {v3, v13, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit8 v4, v2, 0xe

    or-int/lit16 v4, v4, 0x180

    shr-int/lit8 v2, v2, 0x18

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v2, v4

    .line 473
    invoke-static {v1, v11, v3, v0, v2}, Landroidx/core/util/DebugUtils;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_14

    .line 474
    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 475
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_18

    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda4;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/ui/window/DialogProperties;I)V

    .line 476
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final BasicDialogContent-88mDfTA(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v8, p9

    .line 2
    .line 3
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, -0x14d31fe1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    move-object/from16 v10, p0

    .line 12
    .line 13
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int v0, p10, v0

    .line 23
    .line 24
    move-object/from16 v11, p1

    .line 25
    .line 26
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v1, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr v0, v1

    .line 38
    move-object/from16 v1, p2

    .line 39
    .line 40
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/16 v2, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v2, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v2

    .line 52
    move-object/from16 v13, p3

    .line 53
    .line 54
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    const/16 v2, 0x800

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v2, 0x400

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v2

    .line 66
    move-object/from16 v12, p4

    .line 67
    .line 68
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    const/16 v2, 0x4000

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/16 v2, 0x2000

    .line 78
    .line 79
    :goto_4
    or-int/2addr v0, v2

    .line 80
    move-object/from16 v15, p5

    .line 81
    .line 82
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    const/high16 v2, 0x20000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/high16 v2, 0x10000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v2

    .line 94
    move/from16 v2, p6

    .line 95
    .line 96
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    const/high16 v3, 0x100000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    const/high16 v3, 0x80000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v0, v3

    .line 108
    move-wide/from16 v3, p7

    .line 109
    .line 110
    invoke-virtual {v8, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_7

    .line 115
    .line 116
    const/high16 v5, 0x800000

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_7
    const/high16 v5, 0x400000

    .line 120
    .line 121
    :goto_7
    or-int/2addr v0, v5

    .line 122
    const v5, 0x492493

    .line 123
    .line 124
    .line 125
    and-int/2addr v5, v0

    .line 126
    const v6, 0x492492

    .line 127
    .line 128
    .line 129
    if-eq v5, v6, :cond_8

    .line 130
    .line 131
    const/4 v5, 0x1

    .line 132
    goto :goto_8

    .line 133
    :cond_8
    const/4 v5, 0x0

    .line 134
    :goto_8
    and-int/lit8 v6, v0, 0x1

    .line 135
    .line 136
    invoke-virtual {v8, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_b

    .line 141
    .line 142
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 143
    .line 144
    .line 145
    and-int/lit8 v5, p10, 0x1

    .line 146
    .line 147
    if-eqz v5, :cond_a

    .line 148
    .line 149
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_9

    .line 154
    .line 155
    goto :goto_9

    .line 156
    :cond_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 157
    .line 158
    .line 159
    :cond_a
    :goto_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 160
    .line 161
    .line 162
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapesKt;->LocalThemeShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 163
    .line 164
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 169
    .line 170
    iget-object v5, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->extraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 171
    .line 172
    new-instance v9, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;

    .line 173
    .line 174
    move-object/from16 v17, v11

    .line 175
    .line 176
    move-object v11, v13

    .line 177
    move-object/from16 v16, v15

    .line 178
    .line 179
    move-wide v13, v3

    .line 180
    move-object v15, v10

    .line 181
    move v10, v2

    .line 182
    invoke-direct/range {v9 .. v17}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;-><init>(ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 183
    .line 184
    .line 185
    const v2, -0x149d1884

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v9, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    shr-int/lit8 v0, v0, 0x6

    .line 193
    .line 194
    and-int/lit8 v0, v0, 0xe

    .line 195
    .line 196
    const/high16 v2, 0x30000

    .line 197
    .line 198
    or-int v9, v0, v2

    .line 199
    .line 200
    const/16 v10, 0x1c

    .line 201
    .line 202
    const-wide/16 v2, 0x0

    .line 203
    .line 204
    move-object v1, v5

    .line 205
    const-wide/16 v4, 0x0

    .line 206
    .line 207
    const/4 v6, 0x0

    .line 208
    move-object/from16 v0, p2

    .line 209
    .line 210
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 211
    .line 212
    .line 213
    goto :goto_a

    .line 214
    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 215
    .line 216
    .line 217
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_c

    .line 222
    .line 223
    new-instance v9, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda3;

    .line 224
    .line 225
    move-object/from16 v10, p0

    .line 226
    .line 227
    move-object/from16 v11, p1

    .line 228
    .line 229
    move-object/from16 v12, p2

    .line 230
    .line 231
    move-object/from16 v13, p3

    .line 232
    .line 233
    move-object/from16 v14, p4

    .line 234
    .line 235
    move-object/from16 v15, p5

    .line 236
    .line 237
    move/from16 v16, p6

    .line 238
    .line 239
    move-wide/from16 v17, p7

    .line 240
    .line 241
    move/from16 v19, p10

    .line 242
    .line 243
    invoke-direct/range {v9 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJI)V

    .line 244
    .line 245
    .line 246
    iput-object v9, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 247
    .line 248
    :cond_c
    return-void
.end method

.method public static final SubtitleTopAppBar(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v13, p4

    .line 12
    .line 13
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x7d544a26

    .line 16
    .line 17
    .line 18
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v5, 0x6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v13, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v5

    .line 37
    :goto_1
    and-int/lit8 v1, v5, 0x30

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    :cond_3
    and-int/lit16 v1, v5, 0x180

    .line 54
    .line 55
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 56
    .line 57
    if-nez v1, :cond_5

    .line 58
    .line 59
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    const/16 v1, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v1, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v0, v1

    .line 71
    :cond_5
    and-int/lit16 v1, v5, 0xc00

    .line 72
    .line 73
    move-object/from16 v3, p2

    .line 74
    .line 75
    if-nez v1, :cond_7

    .line 76
    .line 77
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    const/16 v1, 0x800

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v1, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr v0, v1

    .line 89
    :cond_7
    and-int/lit16 v1, v5, 0x6000

    .line 90
    .line 91
    move-object/from16 v4, p3

    .line 92
    .line 93
    if-nez v1, :cond_9

    .line 94
    .line 95
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_8

    .line 100
    .line 101
    const/16 v1, 0x4000

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    const/16 v1, 0x2000

    .line 105
    .line 106
    :goto_5
    or-int/2addr v0, v1

    .line 107
    :cond_9
    and-int/lit16 v1, v0, 0x2493

    .line 108
    .line 109
    const/16 v6, 0x2492

    .line 110
    .line 111
    if-eq v1, v6, :cond_a

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    const/4 v1, 0x0

    .line 116
    :goto_6
    and-int/lit8 v6, v0, 0x1

    .line 117
    .line 118
    invoke-virtual {v13, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_b

    .line 123
    .line 124
    new-instance v1, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 125
    .line 126
    const/16 v6, 0x13

    .line 127
    .line 128
    invoke-direct {v1, v6, p0, v2}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    const v6, -0x68b8be62

    .line 132
    .line 133
    .line 134
    invoke-static {v6, v1, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 139
    .line 140
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 145
    .line 146
    iget-wide v8, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 147
    .line 148
    invoke-static {v8, v9, v13}, Landroidx/compose/material3/CardKt;->topAppBarColors-5tl4gsc(JLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/TopAppBarColors;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    shr-int/lit8 v0, v0, 0x3

    .line 153
    .line 154
    and-int/lit8 v1, v0, 0x70

    .line 155
    .line 156
    or-int/lit8 v1, v1, 0x6

    .line 157
    .line 158
    and-int/lit16 v8, v0, 0x380

    .line 159
    .line 160
    or-int/2addr v1, v8

    .line 161
    and-int/lit16 v0, v0, 0x1c00

    .line 162
    .line 163
    or-int v14, v1, v0

    .line 164
    .line 165
    const/4 v10, 0x0

    .line 166
    const/4 v11, 0x0

    .line 167
    move-object v8, v3

    .line 168
    move-object v9, v4

    .line 169
    invoke-static/range {v6 .. v14}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;I)V

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 174
    .line 175
    .line 176
    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    if-eqz v7, :cond_c

    .line 181
    .line 182
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    const/4 v6, 0x4

    .line 185
    move-object v1, p0

    .line 186
    move-object/from16 v3, p2

    .line 187
    .line 188
    move-object/from16 v4, p3

    .line 189
    .line 190
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 191
    .line 192
    .line 193
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 194
    .line 195
    :cond_c
    return-void
.end method

.method public static final SubtitleTopAppBarWithBackButton(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object v4, p5

    .line 11
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x144dce30

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, p6, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, p6

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, p6

    .line 35
    :goto_1
    and-int/lit8 v1, p6, 0x30

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v1, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v1

    .line 51
    :cond_3
    and-int/lit16 v1, p6, 0x180

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/16 v1, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v1, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v1

    .line 67
    :cond_5
    or-int/lit16 v0, v0, 0xc00

    .line 68
    .line 69
    and-int/lit16 v1, p6, 0x6000

    .line 70
    .line 71
    if-nez v1, :cond_7

    .line 72
    .line 73
    invoke-virtual {v4, p4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/16 v1, 0x4000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v1, 0x2000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v1

    .line 85
    :cond_7
    and-int/lit16 v1, v0, 0x2493

    .line 86
    .line 87
    const/16 v2, 0x2492

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    if-eq v1, v2, :cond_8

    .line 91
    .line 92
    move v1, v5

    .line 93
    goto :goto_5

    .line 94
    :cond_8
    const/4 v1, 0x0

    .line 95
    :goto_5
    and-int/lit8 v2, v0, 0x1

    .line 96
    .line 97
    invoke-virtual {v4, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {v1, v5, p2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 106
    .line 107
    .line 108
    const v2, -0x713e0f51

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    and-int/lit8 v1, v0, 0xe

    .line 116
    .line 117
    or-int/lit16 v1, v1, 0xc00

    .line 118
    .line 119
    and-int/lit8 v5, v0, 0x70

    .line 120
    .line 121
    or-int/2addr v1, v5

    .line 122
    shr-int/lit8 v5, v0, 0x3

    .line 123
    .line 124
    and-int/lit16 v5, v5, 0x380

    .line 125
    .line 126
    or-int/2addr v1, v5

    .line 127
    const v5, 0xe000

    .line 128
    .line 129
    .line 130
    and-int/2addr v0, v5

    .line 131
    or-int v5, v1, v0

    .line 132
    .line 133
    move-object v0, p0

    .line 134
    move-object v1, p1

    .line 135
    move-object v3, p4

    .line 136
    invoke-static/range {v0 .. v5}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->SubtitleTopAppBar(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 143
    .line 144
    .line 145
    move-object v0, p3

    .line 146
    :goto_6
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-eqz v8, :cond_a

    .line 151
    .line 152
    move-object v4, v0

    .line 153
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    const/4 v7, 0x4

    .line 156
    move-object v1, p0

    .line 157
    move-object v2, p1

    .line 158
    move-object v3, p2

    .line 159
    move-object v5, p4

    .line 160
    move v6, p6

    .line 161
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Landroidx/compose/ui/Modifier;Ljava/lang/Object;II)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 165
    .line 166
    :cond_a
    return-void
.end method

.method public static final TopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v13, p4

    .line 9
    .line 10
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, -0x875a2d9

    .line 13
    .line 14
    .line 15
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v0, v5, 0x6

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v5

    .line 35
    :goto_1
    and-int/lit8 v3, p6, 0x2

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    or-int/lit8 v0, v0, 0x30

    .line 40
    .line 41
    :cond_2
    move-object/from16 v4, p1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    and-int/lit8 v4, v5, 0x30

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    move-object/from16 v4, p1

    .line 49
    .line 50
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    const/16 v6, 0x20

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const/16 v6, 0x10

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v6

    .line 62
    :goto_3
    and-int/lit8 v6, p6, 0x4

    .line 63
    .line 64
    if-eqz v6, :cond_6

    .line 65
    .line 66
    or-int/lit16 v0, v0, 0x180

    .line 67
    .line 68
    :cond_5
    move-object/from16 v7, p2

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_6
    and-int/lit16 v7, v5, 0x180

    .line 72
    .line 73
    if-nez v7, :cond_5

    .line 74
    .line 75
    move-object/from16 v7, p2

    .line 76
    .line 77
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_7

    .line 82
    .line 83
    const/16 v8, 0x100

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    const/16 v8, 0x80

    .line 87
    .line 88
    :goto_4
    or-int/2addr v0, v8

    .line 89
    :goto_5
    and-int/lit8 v8, p6, 0x8

    .line 90
    .line 91
    if-eqz v8, :cond_9

    .line 92
    .line 93
    or-int/lit16 v0, v0, 0xc00

    .line 94
    .line 95
    :cond_8
    move-object/from16 v9, p3

    .line 96
    .line 97
    goto :goto_7

    .line 98
    :cond_9
    and-int/lit16 v9, v5, 0xc00

    .line 99
    .line 100
    if-nez v9, :cond_8

    .line 101
    .line 102
    move-object/from16 v9, p3

    .line 103
    .line 104
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_a

    .line 109
    .line 110
    const/16 v10, 0x800

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_a
    const/16 v10, 0x400

    .line 114
    .line 115
    :goto_6
    or-int/2addr v0, v10

    .line 116
    :goto_7
    and-int/lit16 v10, v0, 0x493

    .line 117
    .line 118
    const/16 v11, 0x492

    .line 119
    .line 120
    if-eq v10, v11, :cond_b

    .line 121
    .line 122
    const/4 v10, 0x1

    .line 123
    goto :goto_8

    .line 124
    :cond_b
    const/4 v10, 0x0

    .line 125
    :goto_8
    and-int/lit8 v11, v0, 0x1

    .line 126
    .line 127
    invoke-virtual {v13, v11, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_f

    .line 132
    .line 133
    if-eqz v3, :cond_c

    .line 134
    .line 135
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 136
    .line 137
    move-object v7, v3

    .line 138
    goto :goto_9

    .line 139
    :cond_c
    move-object v7, v4

    .line 140
    :goto_9
    if-eqz v6, :cond_d

    .line 141
    .line 142
    sget-object v3, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->lambda$-1692121950:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 143
    .line 144
    move v15, v8

    .line 145
    move-object v8, v3

    .line 146
    move v3, v15

    .line 147
    goto :goto_a

    .line 148
    :cond_d
    move v3, v8

    .line 149
    move-object/from16 v8, p2

    .line 150
    .line 151
    :goto_a
    if-eqz v3, :cond_e

    .line 152
    .line 153
    sget-object v3, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->lambda$-1561479040:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 154
    .line 155
    move-object v9, v3

    .line 156
    :cond_e
    new-instance v3, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    .line 157
    .line 158
    invoke-direct {v3, v1, v2}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    const v2, -0x52f8421d

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v3, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 169
    .line 170
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 175
    .line 176
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 177
    .line 178
    invoke-static {v2, v3, v13}, Landroidx/compose/material3/CardKt;->topAppBarColors-5tl4gsc(JLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/TopAppBarColors;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    and-int/lit8 v2, v0, 0x70

    .line 183
    .line 184
    or-int/lit8 v2, v2, 0x6

    .line 185
    .line 186
    and-int/lit16 v3, v0, 0x380

    .line 187
    .line 188
    or-int/2addr v2, v3

    .line 189
    and-int/lit16 v0, v0, 0x1c00

    .line 190
    .line 191
    or-int v14, v2, v0

    .line 192
    .line 193
    const/4 v10, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    invoke-static/range {v6 .. v14}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;I)V

    .line 196
    .line 197
    .line 198
    move-object v2, v7

    .line 199
    move-object v3, v8

    .line 200
    :goto_b
    move-object v4, v9

    .line 201
    goto :goto_c

    .line 202
    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 203
    .line 204
    .line 205
    move-object/from16 v3, p2

    .line 206
    .line 207
    move-object v2, v4

    .line 208
    goto :goto_b

    .line 209
    :goto_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    if-eqz v8, :cond_10

    .line 214
    .line 215
    new-instance v0, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;

    .line 216
    .line 217
    const/4 v7, 0x1

    .line 218
    move/from16 v6, p6

    .line 219
    .line 220
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;III)V

    .line 221
    .line 222
    .line 223
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 224
    .line 225
    :cond_10
    return-void
.end method

.method public static final TopAppBarWithBackButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v7, p4

    .line 8
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, -0x61a29b65

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v0, p5, 0x6

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    or-int/2addr v0, p5

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, p5

    .line 33
    :goto_1
    and-int/lit8 v4, p5, 0x30

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const/16 v4, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v4, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v0, v4

    .line 49
    :cond_3
    or-int/lit16 v0, v0, 0xd80

    .line 50
    .line 51
    and-int/lit16 v4, v0, 0x493

    .line 52
    .line 53
    const/16 v5, 0x492

    .line 54
    .line 55
    if-eq v4, v5, :cond_4

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/4 v4, 0x0

    .line 60
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 61
    .line 62
    invoke-virtual {v7, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    new-instance v4, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {v4, v1, p1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    const v1, -0x41289f6b

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v4, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    and-int/lit8 v1, v0, 0xe

    .line 81
    .line 82
    or-int/lit16 v1, v1, 0x180

    .line 83
    .line 84
    shr-int/lit8 v4, v0, 0x3

    .line 85
    .line 86
    and-int/lit8 v4, v4, 0x70

    .line 87
    .line 88
    or-int/2addr v1, v4

    .line 89
    and-int/lit16 v0, v0, 0x1c00

    .line 90
    .line 91
    or-int v8, v1, v0

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 95
    .line 96
    sget-object v6, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->lambda$-410948748:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 97
    .line 98
    move-object v3, p0

    .line 99
    invoke-static/range {v3 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 100
    .line 101
    .line 102
    move-object v3, v4

    .line 103
    move-object v4, v6

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 106
    .line 107
    .line 108
    move-object v3, p2

    .line 109
    move-object v4, p3

    .line 110
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    if-eqz v7, :cond_6

    .line 115
    .line 116
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/4 v6, 0x5

    .line 119
    move-object v1, p0

    .line 120
    move-object v2, p1

    .line 121
    move v5, p5

    .line 122
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 123
    .line 124
    .line 125
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 126
    .line 127
    :cond_6
    return-void
.end method
