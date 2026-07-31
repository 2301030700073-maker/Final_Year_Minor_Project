.class public abstract Landroidx/compose/material3/AlertDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final IconPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final LocalBasicAlertDialogOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final TextPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final TitlePadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 2
    .line 3
    const/high16 v1, 0x41c00000    # 24.0f

    .line 4
    .line 5
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/high16 v2, 0x41800000    # 16.0f

    .line 12
    .line 13
    const/4 v3, 0x7

    .line 14
    invoke-static {v0, v0, v0, v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sput-object v4, Landroidx/compose/material3/AlertDialogKt;->IconPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 19
    .line 20
    invoke-static {v0, v0, v0, v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sput-object v2, Landroidx/compose/material3/AlertDialogKt;->TitlePadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 25
    .line 26
    invoke-static {v0, v0, v0, v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->TextPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 31
    .line 32
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v1, 0x17

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Landroidx/compose/material3/AlertDialogKt;->LocalBasicAlertDialogOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 46
    .line 47
    return-void
.end method

.method public static final AlertDialogContent-4hvqGtA(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/GapComposer;I)V
    .locals 24

    .line 1
    move-object/from16 v9, p16

    .line 2
    .line 3
    const v0, 0x522d8af1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v0, p17, 0x30

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x100

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x80

    .line 23
    .line 24
    :goto_0
    or-int/2addr v0, v1

    .line 25
    move-object/from16 v5, p3

    .line 26
    .line 27
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x800

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x400

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    move-object/from16 v6, p4

    .line 40
    .line 41
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x4000

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x2000

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    move-object/from16 v1, p5

    .line 54
    .line 55
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const/high16 v2, 0x20000

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/high16 v2, 0x10000

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v2

    .line 67
    move-wide/from16 v2, p6

    .line 68
    .line 69
    invoke-virtual {v9, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    const/high16 v7, 0x100000

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const/high16 v7, 0x80000

    .line 79
    .line 80
    :goto_4
    or-int/2addr v0, v7

    .line 81
    const/4 v7, 0x0

    .line 82
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_5

    .line 87
    .line 88
    const/high16 v7, 0x800000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/high16 v7, 0x400000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v7

    .line 94
    move-wide/from16 v10, p8

    .line 95
    .line 96
    invoke-virtual {v9, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_6

    .line 101
    .line 102
    const/high16 v7, 0x4000000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    const/high16 v7, 0x2000000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v0, v7

    .line 108
    move-wide/from16 v14, p10

    .line 109
    .line 110
    invoke-virtual {v9, v14, v15}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_7

    .line 115
    .line 116
    const/high16 v7, 0x20000000

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_7
    const/high16 v7, 0x10000000

    .line 120
    .line 121
    :goto_7
    or-int/2addr v0, v7

    .line 122
    move-wide/from16 v7, p12

    .line 123
    .line 124
    invoke-virtual {v9, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_8

    .line 129
    .line 130
    const/4 v12, 0x4

    .line 131
    :goto_8
    move/from16 v23, v0

    .line 132
    .line 133
    move-wide/from16 v0, p14

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_8
    const/4 v12, 0x2

    .line 137
    goto :goto_8

    .line 138
    :goto_9
    invoke-virtual {v9, v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    if-eqz v13, :cond_9

    .line 143
    .line 144
    const/16 v13, 0x20

    .line 145
    .line 146
    goto :goto_a

    .line 147
    :cond_9
    const/16 v13, 0x10

    .line 148
    .line 149
    :goto_a
    or-int/2addr v12, v13

    .line 150
    const v13, 0x12492493

    .line 151
    .line 152
    .line 153
    and-int v13, v23, v13

    .line 154
    .line 155
    const v0, 0x12492492

    .line 156
    .line 157
    .line 158
    if-ne v13, v0, :cond_b

    .line 159
    .line 160
    and-int/lit8 v0, v12, 0x13

    .line 161
    .line 162
    const/16 v1, 0x12

    .line 163
    .line 164
    if-eq v0, v1, :cond_a

    .line 165
    .line 166
    goto :goto_b

    .line 167
    :cond_a
    const/4 v0, 0x0

    .line 168
    goto :goto_c

    .line 169
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 170
    :goto_c
    and-int/lit8 v1, v23, 0x1

    .line 171
    .line 172
    invoke-virtual {v9, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    new-instance v10, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1;

    .line 179
    .line 180
    move-object/from16 v22, p0

    .line 181
    .line 182
    move-wide/from16 v20, p8

    .line 183
    .line 184
    move-wide/from16 v18, p14

    .line 185
    .line 186
    move-object v11, v4

    .line 187
    move-object v12, v5

    .line 188
    move-object v13, v6

    .line 189
    move-wide/from16 v16, v7

    .line 190
    .line 191
    invoke-direct/range {v10 .. v22}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 192
    .line 193
    .line 194
    const v0, -0x26e8eb4a

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v10, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    shr-int/lit8 v0, v23, 0xc

    .line 202
    .line 203
    and-int/lit8 v1, v0, 0x70

    .line 204
    .line 205
    const v4, 0xc00006

    .line 206
    .line 207
    .line 208
    or-int/2addr v1, v4

    .line 209
    and-int/lit16 v0, v0, 0x380

    .line 210
    .line 211
    or-int/2addr v0, v1

    .line 212
    shr-int/lit8 v1, v23, 0x9

    .line 213
    .line 214
    const v4, 0xe000

    .line 215
    .line 216
    .line 217
    and-int/2addr v1, v4

    .line 218
    or-int v10, v0, v1

    .line 219
    .line 220
    const/16 v11, 0x68

    .line 221
    .line 222
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 223
    .line 224
    const-wide/16 v4, 0x0

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    const/4 v7, 0x0

    .line 228
    move-object/from16 v1, p5

    .line 229
    .line 230
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 231
    .line 232
    .line 233
    move-object v3, v0

    .line 234
    goto :goto_d

    .line 235
    :cond_c
    invoke-virtual/range {p16 .. p16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 236
    .line 237
    .line 238
    move-object/from16 v3, p1

    .line 239
    .line 240
    :goto_d
    invoke-virtual/range {p16 .. p16}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_d

    .line 245
    .line 246
    new-instance v1, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda2;

    .line 247
    .line 248
    move-object/from16 v2, p0

    .line 249
    .line 250
    move-object/from16 v4, p2

    .line 251
    .line 252
    move-object/from16 v5, p3

    .line 253
    .line 254
    move-object/from16 v6, p4

    .line 255
    .line 256
    move-object/from16 v7, p5

    .line 257
    .line 258
    move-wide/from16 v8, p6

    .line 259
    .line 260
    move-wide/from16 v10, p8

    .line 261
    .line 262
    move-wide/from16 v12, p10

    .line 263
    .line 264
    move-wide/from16 v14, p12

    .line 265
    .line 266
    move-wide/from16 v16, p14

    .line 267
    .line 268
    move/from16 v18, p17

    .line 269
    .line 270
    invoke-direct/range {v1 .. v18}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJJI)V

    .line 271
    .line 272
    .line 273
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 274
    .line 275
    :cond_d
    return-void
.end method

.method public static final AlertDialogFlowRow-ixp7dh8(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 8

    .line 1
    const v0, -0x36b20a24    # -843613.75f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    and-int/lit16 v0, p2, 0x93

    .line 8
    .line 9
    const/16 v1, 0x92

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    and-int/lit8 v1, p2, 0x1

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;

    .line 35
    .line 36
    invoke-direct {v0, v3}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 43
    .line 44
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 53
    .line 54
    invoke-static {p1, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 66
    .line 67
    .line 68
    iget-boolean v7, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 69
    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 77
    .line 78
    .line 79
    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 80
    .line 81
    invoke-static {p1, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 85
    .line 86
    invoke-static {p1, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 90
    .line 91
    iget-boolean v4, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 92
    .line 93
    if-nez v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_4

    .line 108
    .line 109
    :cond_3
    invoke-static {v1, p1, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 113
    .line 114
    invoke-static {p1, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x6

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 139
    .line 140
    invoke-direct {v0, p0, p2, v2}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 141
    .line 142
    .line 143
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 144
    .line 145
    :cond_6
    return-void
.end method

.method public static final AlertDialogImpl-wrnwzgE(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/GapComposer;II)V
    .locals 26

    .line 1
    move-object/from16 v4, p17

    .line 2
    .line 3
    move/from16 v6, p18

    .line 4
    .line 5
    move/from16 v7, p19

    .line 6
    .line 7
    const v0, -0x33b6c663    # -5.274994E7f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v6, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move-object/from16 v0, p0

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x2

    .line 28
    :goto_0
    or-int/2addr v3, v6

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object/from16 v0, p0

    .line 31
    .line 32
    move v3, v6

    .line 33
    :goto_1
    and-int/lit8 v5, v6, 0x30

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    move-object/from16 v5, p1

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-eqz v10, :cond_2

    .line 44
    .line 45
    const/16 v10, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v10, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v3, v10

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move-object/from16 v5, p1

    .line 53
    .line 54
    :goto_3
    and-int/lit16 v10, v6, 0x180

    .line 55
    .line 56
    if-nez v10, :cond_5

    .line 57
    .line 58
    move-object/from16 v10, p2

    .line 59
    .line 60
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    if-eqz v13, :cond_4

    .line 65
    .line 66
    const/16 v13, 0x100

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/16 v13, 0x80

    .line 70
    .line 71
    :goto_4
    or-int/2addr v3, v13

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    move-object/from16 v10, p2

    .line 74
    .line 75
    :goto_5
    and-int/lit16 v13, v6, 0xc00

    .line 76
    .line 77
    if-nez v13, :cond_7

    .line 78
    .line 79
    move-object/from16 v13, p3

    .line 80
    .line 81
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-eqz v16, :cond_6

    .line 86
    .line 87
    const/16 v16, 0x800

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    const/16 v16, 0x400

    .line 91
    .line 92
    :goto_6
    or-int v3, v3, v16

    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_7
    move-object/from16 v13, p3

    .line 96
    .line 97
    :goto_7
    and-int/lit16 v1, v6, 0x6000

    .line 98
    .line 99
    if-nez v1, :cond_9

    .line 100
    .line 101
    move-object/from16 v1, p4

    .line 102
    .line 103
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v17

    .line 107
    if-eqz v17, :cond_8

    .line 108
    .line 109
    const/16 v17, 0x4000

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_8
    const/16 v17, 0x2000

    .line 113
    .line 114
    :goto_8
    or-int v3, v3, v17

    .line 115
    .line 116
    goto :goto_9

    .line 117
    :cond_9
    move-object/from16 v1, p4

    .line 118
    .line 119
    :goto_9
    const/high16 v17, 0x30000

    .line 120
    .line 121
    and-int v17, v6, v17

    .line 122
    .line 123
    move-object/from16 v2, p5

    .line 124
    .line 125
    if-nez v17, :cond_b

    .line 126
    .line 127
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v18

    .line 131
    if-eqz v18, :cond_a

    .line 132
    .line 133
    const/high16 v18, 0x20000

    .line 134
    .line 135
    goto :goto_a

    .line 136
    :cond_a
    const/high16 v18, 0x10000

    .line 137
    .line 138
    :goto_a
    or-int v3, v3, v18

    .line 139
    .line 140
    :cond_b
    const/high16 v18, 0x180000

    .line 141
    .line 142
    and-int v18, v6, v18

    .line 143
    .line 144
    move-object/from16 v8, p6

    .line 145
    .line 146
    if-nez v18, :cond_d

    .line 147
    .line 148
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v19

    .line 152
    if-eqz v19, :cond_c

    .line 153
    .line 154
    const/high16 v19, 0x100000

    .line 155
    .line 156
    goto :goto_b

    .line 157
    :cond_c
    const/high16 v19, 0x80000

    .line 158
    .line 159
    :goto_b
    or-int v3, v3, v19

    .line 160
    .line 161
    :cond_d
    const/high16 v19, 0xc00000

    .line 162
    .line 163
    and-int v19, v6, v19

    .line 164
    .line 165
    move-object/from16 v9, p7

    .line 166
    .line 167
    if-nez v19, :cond_f

    .line 168
    .line 169
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v20

    .line 173
    if-eqz v20, :cond_e

    .line 174
    .line 175
    const/high16 v20, 0x800000

    .line 176
    .line 177
    goto :goto_c

    .line 178
    :cond_e
    const/high16 v20, 0x400000

    .line 179
    .line 180
    :goto_c
    or-int v3, v3, v20

    .line 181
    .line 182
    :cond_f
    const/high16 v20, 0x6000000

    .line 183
    .line 184
    and-int v20, v6, v20

    .line 185
    .line 186
    move-wide/from16 v11, p8

    .line 187
    .line 188
    if-nez v20, :cond_11

    .line 189
    .line 190
    invoke-virtual {v4, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 191
    .line 192
    .line 193
    move-result v22

    .line 194
    if-eqz v22, :cond_10

    .line 195
    .line 196
    const/high16 v22, 0x4000000

    .line 197
    .line 198
    goto :goto_d

    .line 199
    :cond_10
    const/high16 v22, 0x2000000

    .line 200
    .line 201
    :goto_d
    or-int v3, v3, v22

    .line 202
    .line 203
    :cond_11
    const/high16 v22, 0x30000000

    .line 204
    .line 205
    and-int v22, v6, v22

    .line 206
    .line 207
    move-wide/from16 v14, p10

    .line 208
    .line 209
    if-nez v22, :cond_13

    .line 210
    .line 211
    invoke-virtual {v4, v14, v15}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 212
    .line 213
    .line 214
    move-result v24

    .line 215
    if-eqz v24, :cond_12

    .line 216
    .line 217
    const/high16 v24, 0x20000000

    .line 218
    .line 219
    goto :goto_e

    .line 220
    :cond_12
    const/high16 v24, 0x10000000

    .line 221
    .line 222
    :goto_e
    or-int v3, v3, v24

    .line 223
    .line 224
    :cond_13
    and-int/lit8 v24, v7, 0x6

    .line 225
    .line 226
    move-wide/from16 v0, p12

    .line 227
    .line 228
    if-nez v24, :cond_15

    .line 229
    .line 230
    invoke-virtual {v4, v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 231
    .line 232
    .line 233
    move-result v24

    .line 234
    if-eqz v24, :cond_14

    .line 235
    .line 236
    const/16 v16, 0x4

    .line 237
    .line 238
    goto :goto_f

    .line 239
    :cond_14
    const/16 v16, 0x2

    .line 240
    .line 241
    :goto_f
    or-int v16, v7, v16

    .line 242
    .line 243
    goto :goto_10

    .line 244
    :cond_15
    move/from16 v16, v7

    .line 245
    .line 246
    :goto_10
    and-int/lit8 v17, v7, 0x30

    .line 247
    .line 248
    move-wide/from16 v0, p14

    .line 249
    .line 250
    if-nez v17, :cond_17

    .line 251
    .line 252
    invoke-virtual {v4, v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 253
    .line 254
    .line 255
    move-result v17

    .line 256
    if-eqz v17, :cond_16

    .line 257
    .line 258
    const/16 v18, 0x20

    .line 259
    .line 260
    goto :goto_11

    .line 261
    :cond_16
    const/16 v18, 0x10

    .line 262
    .line 263
    :goto_11
    or-int v16, v16, v18

    .line 264
    .line 265
    :cond_17
    and-int/lit16 v0, v7, 0x180

    .line 266
    .line 267
    if-nez v0, :cond_19

    .line 268
    .line 269
    const/4 v0, 0x0

    .line 270
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_18

    .line 275
    .line 276
    const/16 v20, 0x100

    .line 277
    .line 278
    goto :goto_12

    .line 279
    :cond_18
    const/16 v20, 0x80

    .line 280
    .line 281
    :goto_12
    or-int v16, v16, v20

    .line 282
    .line 283
    :cond_19
    and-int/lit16 v0, v7, 0xc00

    .line 284
    .line 285
    if-nez v0, :cond_1b

    .line 286
    .line 287
    move-object/from16 v0, p16

    .line 288
    .line 289
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_1a

    .line 294
    .line 295
    const/16 v22, 0x800

    .line 296
    .line 297
    goto :goto_13

    .line 298
    :cond_1a
    const/16 v22, 0x400

    .line 299
    .line 300
    :goto_13
    or-int v16, v16, v22

    .line 301
    .line 302
    :goto_14
    move/from16 v1, v16

    .line 303
    .line 304
    goto :goto_15

    .line 305
    :cond_1b
    move-object/from16 v0, p16

    .line 306
    .line 307
    goto :goto_14

    .line 308
    :goto_15
    const v16, 0x12492493

    .line 309
    .line 310
    .line 311
    and-int v0, v3, v16

    .line 312
    .line 313
    const v2, 0x12492492

    .line 314
    .line 315
    .line 316
    if-ne v0, v2, :cond_1d

    .line 317
    .line 318
    and-int/lit16 v0, v1, 0x493

    .line 319
    .line 320
    const/16 v2, 0x492

    .line 321
    .line 322
    if-eq v0, v2, :cond_1c

    .line 323
    .line 324
    goto :goto_16

    .line 325
    :cond_1c
    const/4 v0, 0x0

    .line 326
    goto :goto_17

    .line 327
    :cond_1d
    :goto_16
    const/4 v0, 0x1

    .line 328
    :goto_17
    and-int/lit8 v2, v3, 0x1

    .line 329
    .line 330
    invoke-virtual {v4, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_1e

    .line 335
    .line 336
    new-instance v10, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1;

    .line 337
    .line 338
    move-wide/from16 v19, p12

    .line 339
    .line 340
    move-wide/from16 v21, p14

    .line 341
    .line 342
    move-object/from16 v24, v5

    .line 343
    .line 344
    move-object/from16 v23, v13

    .line 345
    .line 346
    move-wide/from16 v17, v14

    .line 347
    .line 348
    move-object v13, v8

    .line 349
    move-object v14, v9

    .line 350
    move-wide v15, v11

    .line 351
    move-object/from16 v11, p4

    .line 352
    .line 353
    move-object/from16 v12, p5

    .line 354
    .line 355
    invoke-direct/range {v10 .. v24}, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 356
    .line 357
    .line 358
    const v0, 0x1f6fcd57

    .line 359
    .line 360
    .line 361
    invoke-static {v0, v10, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    and-int/lit8 v2, v3, 0xe

    .line 366
    .line 367
    or-int/lit16 v2, v2, 0xc00

    .line 368
    .line 369
    shr-int/lit8 v3, v3, 0x3

    .line 370
    .line 371
    and-int/lit8 v3, v3, 0x70

    .line 372
    .line 373
    or-int/2addr v2, v3

    .line 374
    shr-int/lit8 v1, v1, 0x3

    .line 375
    .line 376
    and-int/lit16 v1, v1, 0x380

    .line 377
    .line 378
    or-int v5, v2, v1

    .line 379
    .line 380
    move-object/from16 v1, p2

    .line 381
    .line 382
    move-object/from16 v2, p16

    .line 383
    .line 384
    move-object v3, v0

    .line 385
    move-object/from16 v0, p0

    .line 386
    .line 387
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt;->BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 388
    .line 389
    .line 390
    goto :goto_18

    .line 391
    :cond_1e
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 392
    .line 393
    .line 394
    :goto_18
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    if-eqz v0, :cond_1f

    .line 399
    .line 400
    move-object v1, v0

    .line 401
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda0;

    .line 402
    .line 403
    move-object/from16 v2, p1

    .line 404
    .line 405
    move-object/from16 v3, p2

    .line 406
    .line 407
    move-object/from16 v4, p3

    .line 408
    .line 409
    move-object/from16 v5, p4

    .line 410
    .line 411
    move-object/from16 v8, p7

    .line 412
    .line 413
    move-wide/from16 v9, p8

    .line 414
    .line 415
    move-wide/from16 v11, p10

    .line 416
    .line 417
    move-wide/from16 v13, p12

    .line 418
    .line 419
    move-wide/from16 v15, p14

    .line 420
    .line 421
    move-object/from16 v17, p16

    .line 422
    .line 423
    move-object/from16 v25, v1

    .line 424
    .line 425
    move/from16 v18, v6

    .line 426
    .line 427
    move/from16 v19, v7

    .line 428
    .line 429
    move-object/from16 v1, p0

    .line 430
    .line 431
    move-object/from16 v6, p5

    .line 432
    .line 433
    move-object/from16 v7, p6

    .line 434
    .line 435
    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;II)V

    .line 436
    .line 437
    .line 438
    move-object/from16 v1, v25

    .line 439
    .line 440
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 441
    .line 442
    :cond_1f
    return-void
.end method

.method public static final BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 10

    .line 1
    const v0, 0x17c55da

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p5

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p5

    .line 23
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit16 v1, p5, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const/16 v1, 0x100

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/16 v1, 0x80

    .line 53
    .line 54
    :goto_3
    or-int/2addr v0, v1

    .line 55
    :cond_5
    and-int/lit16 v1, p5, 0xc00

    .line 56
    .line 57
    if-nez v1, :cond_7

    .line 58
    .line 59
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    const/16 v1, 0x800

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_6
    const/16 v1, 0x400

    .line 69
    .line 70
    :goto_4
    or-int/2addr v0, v1

    .line 71
    :cond_7
    and-int/lit16 v1, v0, 0x493

    .line 72
    .line 73
    const/16 v2, 0x492

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    if-eq v1, v2, :cond_8

    .line 78
    .line 79
    move v1, v4

    .line 80
    goto :goto_5

    .line 81
    :cond_8
    move v1, v3

    .line 82
    :goto_5
    and-int/2addr v0, v4

    .line 83
    invoke-virtual {p4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->LocalBasicAlertDialogOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 90
    .line 91
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 96
    .line 97
    new-instance v4, Lcoil3/ImageLoader$Builder;

    .line 98
    .line 99
    const/4 v9, 0x4

    .line 100
    move-object v5, p0

    .line 101
    move-object v6, p1

    .line 102
    move-object v7, p2

    .line 103
    move-object v8, p3

    .line 104
    invoke-direct/range {v4 .. v9}, Lcoil3/ImageLoader$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    move-object p1, v5

    .line 108
    move-object p2, v6

    .line 109
    move-object p3, v7

    .line 110
    invoke-virtual {v0, v4, p4, v3}, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->BasicAlertDialog(Lcoil3/ImageLoader$Builder;Landroidx/compose/runtime/GapComposer;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_9
    move-object v8, p3

    .line 115
    move-object p3, p2

    .line 116
    move-object p2, p1

    .line 117
    move-object p1, p0

    .line 118
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 119
    .line 120
    .line 121
    :goto_6
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_a

    .line 126
    .line 127
    new-instance p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;

    .line 128
    .line 129
    move-object p4, v8

    .line 130
    invoke-direct/range {p0 .. p5}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 131
    .line 132
    .line 133
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 134
    .line 135
    :cond_a
    return-void
.end method
