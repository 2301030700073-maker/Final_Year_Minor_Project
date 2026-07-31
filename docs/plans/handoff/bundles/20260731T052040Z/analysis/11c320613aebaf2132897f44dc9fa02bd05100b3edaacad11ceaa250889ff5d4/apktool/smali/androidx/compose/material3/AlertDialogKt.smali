.class public abstract Landroidx/compose/material3/AlertDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final LocalBasicAlertDialogOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final TextPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final TitlePadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/material3/PrecisionPointer;->shouldUsePrecisionPointerComponentSizing:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, 0x41c00000    # 24.0f

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/high16 v1, 0x41a00000    # 20.0f

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/high16 v3, 0x41800000    # 16.0f

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move v2, v3

    .line 36
    :cond_1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 37
    .line 38
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 42
    .line 43
    invoke-static {v3}, Landroidx/compose/foundation/layout/SpacerKt;->PaddingValues-a9UjIt4$default(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Landroidx/compose/foundation/layout/SpacerKt;->PaddingValues-a9UjIt4$default(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->TitlePadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 51
    .line 52
    invoke-static {v2}, Landroidx/compose/foundation/layout/SpacerKt;->PaddingValues-a9UjIt4$default(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->TextPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 57
    .line 58
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    sput-object v1, Landroidx/compose/material3/AlertDialogKt;->LocalBasicAlertDialogOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 71
    .line 72
    return-void
.end method

.method public static final AlertDialogContent-4hvqGtA(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v7, p15

    .line 2
    .line 3
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x522d8af1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, p16, 0x30

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x100

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v1, 0x80

    .line 24
    .line 25
    :goto_0
    or-int/2addr v0, v1

    .line 26
    move-object/from16 v9, p2

    .line 27
    .line 28
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x800

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v1, 0x400

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v1

    .line 40
    move-object/from16 v10, p3

    .line 41
    .line 42
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x4000

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v1, 0x2000

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v1

    .line 54
    move-object/from16 v1, p4

    .line 55
    .line 56
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    const/high16 v2, 0x20000

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/high16 v2, 0x10000

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v2

    .line 68
    move-wide/from16 v2, p5

    .line 69
    .line 70
    invoke-virtual {v7, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    const/high16 v4, 0x100000

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    const/high16 v4, 0x80000

    .line 80
    .line 81
    :goto_4
    or-int/2addr v0, v4

    .line 82
    const/4 v4, 0x0

    .line 83
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_5

    .line 88
    .line 89
    const/high16 v4, 0x800000

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    const/high16 v4, 0x400000

    .line 93
    .line 94
    :goto_5
    or-int/2addr v0, v4

    .line 95
    move-wide/from16 v4, p7

    .line 96
    .line 97
    invoke-virtual {v7, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_6

    .line 102
    .line 103
    const/high16 v6, 0x4000000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_6
    const/high16 v6, 0x2000000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v0, v6

    .line 109
    move-wide/from16 v11, p9

    .line 110
    .line 111
    invoke-virtual {v7, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_7

    .line 116
    .line 117
    const/high16 v6, 0x20000000

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_7
    const/high16 v6, 0x10000000

    .line 121
    .line 122
    :goto_7
    or-int/2addr v0, v6

    .line 123
    move-wide/from16 v13, p11

    .line 124
    .line 125
    invoke-virtual {v7, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_8

    .line 130
    .line 131
    const/4 v6, 0x4

    .line 132
    :goto_8
    move/from16 p15, v0

    .line 133
    .line 134
    move-wide/from16 v0, p13

    .line 135
    .line 136
    goto :goto_9

    .line 137
    :cond_8
    const/4 v6, 0x2

    .line 138
    goto :goto_8

    .line 139
    :goto_9
    invoke-virtual {v7, v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_9

    .line 144
    .line 145
    const/16 v8, 0x20

    .line 146
    .line 147
    goto :goto_a

    .line 148
    :cond_9
    const/16 v8, 0x10

    .line 149
    .line 150
    :goto_a
    or-int/2addr v6, v8

    .line 151
    const v8, 0x12492493

    .line 152
    .line 153
    .line 154
    and-int v8, p15, v8

    .line 155
    .line 156
    const v15, 0x12492492

    .line 157
    .line 158
    .line 159
    if-ne v8, v15, :cond_b

    .line 160
    .line 161
    and-int/lit8 v6, v6, 0x13

    .line 162
    .line 163
    const/16 v8, 0x12

    .line 164
    .line 165
    if-eq v6, v8, :cond_a

    .line 166
    .line 167
    goto :goto_b

    .line 168
    :cond_a
    const/4 v6, 0x0

    .line 169
    goto :goto_c

    .line 170
    :cond_b
    :goto_b
    const/4 v6, 0x1

    .line 171
    :goto_c
    and-int/lit8 v8, p15, 0x1

    .line 172
    .line 173
    invoke-virtual {v7, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_c

    .line 178
    .line 179
    new-instance v8, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda5;

    .line 180
    .line 181
    move-object/from16 v19, p0

    .line 182
    .line 183
    move-wide v15, v0

    .line 184
    move-wide/from16 v17, v4

    .line 185
    .line 186
    invoke-direct/range {v8 .. v19}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 187
    .line 188
    .line 189
    const v0, -0x26e8eb4a

    .line 190
    .line 191
    .line 192
    invoke-static {v0, v8, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    shr-int/lit8 v0, p15, 0xc

    .line 197
    .line 198
    and-int/lit8 v1, v0, 0x70

    .line 199
    .line 200
    const v4, 0xc00006

    .line 201
    .line 202
    .line 203
    or-int/2addr v1, v4

    .line 204
    and-int/lit16 v0, v0, 0x380

    .line 205
    .line 206
    or-int/2addr v0, v1

    .line 207
    shr-int/lit8 v1, p15, 0x9

    .line 208
    .line 209
    const v4, 0xe000

    .line 210
    .line 211
    .line 212
    and-int/2addr v1, v4

    .line 213
    or-int v8, v0, v1

    .line 214
    .line 215
    const/16 v9, 0x68

    .line 216
    .line 217
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 218
    .line 219
    const-wide/16 v4, 0x0

    .line 220
    .line 221
    move-object/from16 v1, p4

    .line 222
    .line 223
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 224
    .line 225
    .line 226
    move-object v10, v0

    .line 227
    goto :goto_d

    .line 228
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 229
    .line 230
    .line 231
    move-object/from16 v10, p1

    .line 232
    .line 233
    :goto_d
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_d

    .line 238
    .line 239
    new-instance v8, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda6;

    .line 240
    .line 241
    move-object/from16 v9, p0

    .line 242
    .line 243
    move-object/from16 v11, p2

    .line 244
    .line 245
    move-object/from16 v12, p3

    .line 246
    .line 247
    move-object/from16 v13, p4

    .line 248
    .line 249
    move-wide/from16 v14, p5

    .line 250
    .line 251
    move-wide/from16 v16, p7

    .line 252
    .line 253
    move-wide/from16 v18, p9

    .line 254
    .line 255
    move-wide/from16 v20, p11

    .line 256
    .line 257
    move-wide/from16 v22, p13

    .line 258
    .line 259
    move/from16 v24, p16

    .line 260
    .line 261
    invoke-direct/range {v8 .. v24}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJJI)V

    .line 262
    .line 263
    .line 264
    iput-object v8, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 265
    .line 266
    :cond_d
    return-void
.end method

.method public static final AlertDialogFlowRow-ixp7dh8(FLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x36b20a24    # -843613.75f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0x10

    .line 19
    .line 20
    :goto_0
    or-int/2addr v0, p3

    .line 21
    and-int/lit16 v1, v0, 0x93

    .line 22
    .line 23
    const/16 v2, 0x92

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    move v1, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_1
    and-int/2addr v0, v3

    .line 32
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    if-ne v2, v3, :cond_2

    .line 53
    .line 54
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 62
    .line 63
    :goto_2
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;

    .line 68
    .line 69
    invoke-direct {v2, p0, v1, p1}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda10;-><init>(FLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 70
    .line 71
    .line 72
    const v1, -0x766616e4

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/16 v2, 0x38

    .line 80
    .line 81
    invoke-static {v0, v1, p2, v2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda11;

    .line 95
    .line 96
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda11;-><init>(FLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    :cond_5
    return-void
.end method

.method public static final AlertDialogImpl-wrnwzgE(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v15, p14

    move/from16 v0, p16

    move/from16 v2, p17

    .line 1
    move-object/from16 v3, p15

    check-cast v3, Landroidx/compose/runtime/GapComposer;

    const v4, -0x33b6c663    # -5.274994E7f

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v4, v10

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v10, v0, 0x180

    if-nez v10, :cond_5

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_4

    :cond_4
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    :cond_5
    and-int/lit16 v10, v0, 0xc00

    if-nez v10, :cond_7

    move-object/from16 v10, p2

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x800

    goto :goto_5

    :cond_6
    const/16 v16, 0x400

    :goto_5
    or-int v4, v4, v16

    goto :goto_6

    :cond_7
    move-object/from16 v10, p2

    :goto_6
    and-int/lit16 v5, v0, 0x6000

    if-nez v5, :cond_9

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_7

    :cond_8
    const/16 v5, 0x2000

    :goto_7
    or-int/2addr v4, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v0

    if-nez v5, :cond_b

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v16, 0x10000

    :goto_8
    or-int v4, v4, v16

    goto :goto_9

    :cond_b
    move-object/from16 v5, p3

    :goto_9
    const/high16 v16, 0x180000

    and-int v16, v0, v16

    move-object/from16 v6, p4

    if-nez v16, :cond_d

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v17, 0x80000

    :goto_a
    or-int v4, v4, v17

    :cond_d
    const/high16 v17, 0xc00000

    and-int v17, v0, v17

    move-object/from16 v8, p5

    if-nez v17, :cond_f

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/high16 v18, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v18, 0x400000

    :goto_b
    or-int v4, v4, v18

    :cond_f
    const/high16 v18, 0x6000000

    and-int v18, v0, v18

    move-wide/from16 v9, p6

    if-nez v18, :cond_11

    invoke-virtual {v3, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v19, 0x2000000

    :goto_c
    or-int v4, v4, v19

    :cond_11
    const/high16 v19, 0x30000000

    and-int v19, v0, v19

    move-wide/from16 v11, p8

    if-nez v19, :cond_13

    invoke-virtual {v3, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v21, 0x10000000

    :goto_d
    or-int v4, v4, v21

    :cond_13
    and-int/lit8 v21, v2, 0x6

    move-wide/from16 v13, p10

    if-nez v21, :cond_15

    invoke-virtual {v3, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_14

    const/16 v16, 0x4

    goto :goto_e

    :cond_14
    const/16 v16, 0x2

    :goto_e
    or-int v16, v2, v16

    goto :goto_f

    :cond_15
    move/from16 v16, v2

    :goto_f
    and-int/lit8 v23, v2, 0x30

    move/from16 p15, v4

    move-wide/from16 v4, p12

    if-nez v23, :cond_17

    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_16

    const/16 v17, 0x20

    goto :goto_10

    :cond_16
    const/16 v17, 0x10

    :goto_10
    or-int v16, v16, v17

    :cond_17
    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v19, 0x100

    goto :goto_11

    :cond_18
    const/16 v19, 0x80

    :goto_11
    or-int v16, v16, v19

    :cond_19
    and-int/lit16 v0, v2, 0xc00

    if-nez v0, :cond_1b

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v21, 0x800

    goto :goto_12

    :cond_1a
    const/16 v21, 0x400

    :goto_12
    or-int v16, v16, v21

    :cond_1b
    move/from16 v0, v16

    const v16, 0x12492493

    and-int v2, p15, v16

    const v4, 0x12492492

    if-ne v2, v4, :cond_1d

    and-int/lit16 v2, v0, 0x493

    const/16 v4, 0x492

    if-eq v2, v4, :cond_1c

    goto :goto_13

    :cond_1c
    const/4 v2, 0x0

    goto :goto_14

    :cond_1d
    :goto_13
    const/4 v2, 0x1

    :goto_14
    and-int/lit8 v4, p15, 0x1

    invoke-virtual {v3, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2
    new-instance v16, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda0;

    move-object/from16 v29, p2

    move-object/from16 v17, p3

    move-wide/from16 v26, p12

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    invoke-direct/range {v16 .. v29}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v16

    const v4, 0x1f6fcd57

    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    and-int/lit8 v4, p15, 0xe

    or-int/lit16 v4, v4, 0xc00

    shr-int/lit8 v5, p15, 0x3

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v4, v5

    shr-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v4

    .line 3
    invoke-static {v1, v15, v2, v3, v0}, Landroidx/compose/material3/AlertDialogKt;->BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_15

    .line 4
    :cond_1e
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 5
    :goto_15
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v2, v0

    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda1;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v30, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;II)V

    move-object/from16 v2, v30

    .line 6
    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public static final BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x17c55da

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 30
    .line 31
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    :cond_3
    and-int/lit16 v1, p4, 0x180

    .line 44
    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const/16 v1, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v1, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, v1

    .line 59
    :cond_5
    and-int/lit16 v1, p4, 0xc00

    .line 60
    .line 61
    if-nez v1, :cond_7

    .line 62
    .line 63
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    const/16 v1, 0x800

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    const/16 v1, 0x400

    .line 73
    .line 74
    :goto_4
    or-int/2addr v0, v1

    .line 75
    :cond_7
    and-int/lit16 v1, v0, 0x493

    .line 76
    .line 77
    const/16 v2, 0x492

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x1

    .line 81
    if-eq v1, v2, :cond_8

    .line 82
    .line 83
    move v1, v4

    .line 84
    goto :goto_5

    .line 85
    :cond_8
    move v1, v3

    .line 86
    :goto_5
    and-int/2addr v0, v4

    .line 87
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->LocalBasicAlertDialogOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 94
    .line 95
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 100
    .line 101
    new-instance v1, Lorg/acra/util/ProcessFinisher;

    .line 102
    .line 103
    const/4 v2, 0x5

    .line 104
    invoke-direct {v1, v2, p0, p1, p2}, Lorg/acra/util/ProcessFinisher;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, p3, v3}, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->BasicAlertDialog(Lorg/acra/util/ProcessFinisher;Landroidx/compose/runtime/Composer;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_9
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 112
    .line 113
    .line 114
    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    if-eqz p3, :cond_a

    .line 119
    .line 120
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    move-object v1, p0

    .line 124
    move-object v2, p1

    .line 125
    move-object v3, p2

    .line 126
    move v4, p4

    .line 127
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 131
    .line 132
    :cond_a
    return-void
.end method
