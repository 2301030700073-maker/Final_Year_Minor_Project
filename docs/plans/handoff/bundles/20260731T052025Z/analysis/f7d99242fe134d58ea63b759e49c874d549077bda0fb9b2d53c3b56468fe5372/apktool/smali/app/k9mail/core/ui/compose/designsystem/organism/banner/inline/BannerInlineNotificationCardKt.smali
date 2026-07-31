.class public abstract Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-549760761:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x20c4aef9

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->lambda$-549760761:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final BannerInlineNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    move-object/from16 v1, p4

    move/from16 v10, p8

    .line 403
    move-object/from16 v7, p7

    check-cast v7, Landroidx/compose/runtime/GapComposer;

    const v0, 0x6bdbe948

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_1

    sget-object v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->lambda$-549760761:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    and-int/lit8 v2, v10, 0x30

    if-nez v2, :cond_3

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    and-int/lit16 v2, v10, 0x180

    if-nez v2, :cond_5

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v0, v2

    :cond_5
    and-int/lit16 v2, v10, 0xc00

    if-nez v2, :cond_7

    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v0, v2

    :cond_7
    and-int/lit16 v2, v10, 0x6000

    move-object/from16 v6, p3

    if-nez v2, :cond_9

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_5

    :cond_8
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v0, v2

    :cond_9
    const/high16 v2, 0x30000

    and-int/2addr v2, v10

    if-nez v2, :cond_c

    const/high16 v2, 0x40000

    and-int/2addr v2, v10

    if-nez v2, :cond_a

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_6

    :cond_a
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_6
    if-eqz v2, :cond_b

    const/high16 v2, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v2, 0x10000

    :goto_7
    or-int/2addr v0, v2

    :cond_c
    const/high16 v8, 0x180000

    and-int v2, v10, v8

    move-object/from16 v9, p5

    if-nez v2, :cond_e

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/high16 v2, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v2, 0x80000

    :goto_8
    or-int/2addr v0, v2

    :cond_e
    const/high16 v2, 0xc00000

    and-int/2addr v2, v10

    move-object/from16 v11, p6

    if-nez v2, :cond_10

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/high16 v2, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v2, 0x400000

    :goto_9
    or-int/2addr v0, v2

    :cond_10
    move v12, v0

    const v0, 0x492493

    and-int/2addr v0, v12

    const v2, 0x492492

    if-eq v0, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    and-int/lit8 v2, v12, 0x1

    invoke-virtual {v7, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_b

    .line 404
    :cond_12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_13
    :goto_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 405
    new-instance v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x56bbf33

    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v1, v12, 0xc

    and-int/lit8 v1, v1, 0xe

    or-int/2addr v1, v8

    shr-int/lit8 v2, v12, 0xf

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shr-int/lit8 v2, v12, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shr-int/lit8 v2, v12, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int v8, v1, v2

    const/16 v9, 0x12

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, v6

    move-object v6, v0

    move-object v0, v2

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object v2, v11

    .line 406
    invoke-static/range {v0 .. v9}, Landroidx/room/util/SchemaInfoUtilKt;->CardOutlined(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    .line 407
    :cond_14
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 408
    :goto_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_15

    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    const/4 v9, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move v8, v10

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 409
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final BannerInlineNotificationCard(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v0, p7

    .line 8
    .line 9
    move-object/from16 v12, p8

    .line 10
    .line 11
    move/from16 v13, p10

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    const v3, -0x74a11554

    .line 24
    .line 25
    .line 26
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    and-int/lit8 v3, v13, 0x6

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    sget-object v3, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->lambda$-549760761:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v3, v4

    .line 45
    :goto_0
    or-int/2addr v3, v13

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v3, v13

    .line 48
    :goto_1
    and-int/lit8 v6, v13, 0x30

    .line 49
    .line 50
    if-nez v6, :cond_4

    .line 51
    .line 52
    and-int/lit8 v6, v13, 0x40

    .line 53
    .line 54
    if-nez v6, :cond_2

    .line 55
    .line 56
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    :goto_2
    if-eqz v6, :cond_3

    .line 66
    .line 67
    const/16 v6, 0x20

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v6, 0x10

    .line 71
    .line 72
    :goto_3
    or-int/2addr v3, v6

    .line 73
    :cond_4
    and-int/lit16 v6, v13, 0x180

    .line 74
    .line 75
    if-nez v6, :cond_7

    .line 76
    .line 77
    and-int/lit16 v6, v13, 0x200

    .line 78
    .line 79
    if-nez v6, :cond_5

    .line 80
    .line 81
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    :goto_4
    if-eqz v6, :cond_6

    .line 91
    .line 92
    const/16 v6, 0x100

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    const/16 v6, 0x80

    .line 96
    .line 97
    :goto_5
    or-int/2addr v3, v6

    .line 98
    :cond_7
    and-int/lit16 v6, v13, 0xc00

    .line 99
    .line 100
    if-nez v6, :cond_9

    .line 101
    .line 102
    move-object/from16 v6, p2

    .line 103
    .line 104
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_8

    .line 109
    .line 110
    const/16 v7, 0x800

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_8
    const/16 v7, 0x400

    .line 114
    .line 115
    :goto_6
    or-int/2addr v3, v7

    .line 116
    goto :goto_7

    .line 117
    :cond_9
    move-object/from16 v6, p2

    .line 118
    .line 119
    :goto_7
    and-int/lit16 v7, v13, 0x6000

    .line 120
    .line 121
    if-nez v7, :cond_b

    .line 122
    .line 123
    move-object/from16 v7, p3

    .line 124
    .line 125
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_a

    .line 130
    .line 131
    const/16 v8, 0x4000

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_a
    const/16 v8, 0x2000

    .line 135
    .line 136
    :goto_8
    or-int/2addr v3, v8

    .line 137
    goto :goto_9

    .line 138
    :cond_b
    move-object/from16 v7, p3

    .line 139
    .line 140
    :goto_9
    const/high16 v8, 0x30000

    .line 141
    .line 142
    and-int/2addr v8, v13

    .line 143
    if-nez v8, :cond_e

    .line 144
    .line 145
    const/high16 v8, 0x40000

    .line 146
    .line 147
    and-int/2addr v8, v13

    .line 148
    if-nez v8, :cond_c

    .line 149
    .line 150
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    goto :goto_a

    .line 155
    :cond_c
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    :goto_a
    if-eqz v8, :cond_d

    .line 160
    .line 161
    const/high16 v8, 0x20000

    .line 162
    .line 163
    goto :goto_b

    .line 164
    :cond_d
    const/high16 v8, 0x10000

    .line 165
    .line 166
    :goto_b
    or-int/2addr v3, v8

    .line 167
    :cond_e
    const/high16 v8, 0x180000

    .line 168
    .line 169
    and-int/2addr v8, v13

    .line 170
    if-nez v8, :cond_10

    .line 171
    .line 172
    move-object/from16 v8, p5

    .line 173
    .line 174
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_f

    .line 179
    .line 180
    const/high16 v9, 0x100000

    .line 181
    .line 182
    goto :goto_c

    .line 183
    :cond_f
    const/high16 v9, 0x80000

    .line 184
    .line 185
    :goto_c
    or-int/2addr v3, v9

    .line 186
    goto :goto_d

    .line 187
    :cond_10
    move-object/from16 v8, p5

    .line 188
    .line 189
    :goto_d
    const/high16 v9, 0xc00000

    .line 190
    .line 191
    and-int/2addr v9, v13

    .line 192
    if-nez v9, :cond_11

    .line 193
    .line 194
    const/high16 v9, 0x400000

    .line 195
    .line 196
    or-int/2addr v3, v9

    .line 197
    :cond_11
    const/high16 v9, 0x6000000

    .line 198
    .line 199
    and-int/2addr v9, v13

    .line 200
    if-nez v9, :cond_14

    .line 201
    .line 202
    if-nez v0, :cond_12

    .line 203
    .line 204
    const/4 v9, -0x1

    .line 205
    goto :goto_e

    .line 206
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    :goto_e
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_13

    .line 215
    .line 216
    const/high16 v9, 0x4000000

    .line 217
    .line 218
    goto :goto_f

    .line 219
    :cond_13
    const/high16 v9, 0x2000000

    .line 220
    .line 221
    :goto_f
    or-int/2addr v3, v9

    .line 222
    :cond_14
    const/high16 v9, 0x30000000

    .line 223
    .line 224
    and-int/2addr v9, v13

    .line 225
    if-nez v9, :cond_16

    .line 226
    .line 227
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_15

    .line 232
    .line 233
    const/high16 v9, 0x20000000

    .line 234
    .line 235
    goto :goto_10

    .line 236
    :cond_15
    const/high16 v9, 0x10000000

    .line 237
    .line 238
    :goto_10
    or-int/2addr v3, v9

    .line 239
    :cond_16
    const v9, 0x12492493

    .line 240
    .line 241
    .line 242
    and-int/2addr v9, v3

    .line 243
    const v11, 0x12492492

    .line 244
    .line 245
    .line 246
    const/4 v14, 0x1

    .line 247
    if-eq v9, v11, :cond_17

    .line 248
    .line 249
    move v9, v14

    .line 250
    goto :goto_11

    .line 251
    :cond_17
    const/4 v9, 0x0

    .line 252
    :goto_11
    and-int/lit8 v11, v3, 0x1

    .line 253
    .line 254
    invoke-virtual {v10, v11, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-eqz v9, :cond_1c

    .line 259
    .line 260
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 261
    .line 262
    .line 263
    and-int/lit8 v9, v13, 0x1

    .line 264
    .line 265
    const v11, -0x1c00001

    .line 266
    .line 267
    .line 268
    if-eqz v9, :cond_19

    .line 269
    .line 270
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    if-eqz v9, :cond_18

    .line 275
    .line 276
    goto :goto_12

    .line 277
    :cond_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 278
    .line 279
    .line 280
    and-int/2addr v3, v11

    .line 281
    move-object/from16 v9, p6

    .line 282
    .line 283
    goto :goto_13

    .line 284
    :cond_19
    :goto_12
    const/high16 v9, 0x41400000    # 12.0f

    .line 285
    .line 286
    invoke-static {v9}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    and-int/2addr v3, v11

    .line 291
    :goto_13
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    if-eqz v11, :cond_1b

    .line 299
    .line 300
    if-ne v11, v14, :cond_1a

    .line 301
    .line 302
    const v4, 0x7fffffff

    .line 303
    .line 304
    .line 305
    goto :goto_14

    .line 306
    :cond_1a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_1b
    :goto_14
    new-instance v11, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    const/16 v14, 0x9

    .line 313
    .line 314
    invoke-direct {v11, v4, v14, v1, v0}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    const v14, -0x11bedc02

    .line 318
    .line 319
    .line 320
    invoke-static {v14, v11, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    new-instance v14, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 325
    .line 326
    invoke-direct {v14, v2, v0, v4, v12}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/CharSequence;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;ILkotlin/jvm/functions/Function1;)V

    .line 327
    .line 328
    .line 329
    const v4, -0x612fc2e3

    .line 330
    .line 331
    .line 332
    invoke-static {v4, v14, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    and-int/lit8 v14, v3, 0xe

    .line 337
    .line 338
    or-int/lit16 v14, v14, 0x1b0

    .line 339
    .line 340
    and-int/lit16 v15, v3, 0x1c00

    .line 341
    .line 342
    or-int/2addr v14, v15

    .line 343
    const v15, 0xe000

    .line 344
    .line 345
    .line 346
    and-int/2addr v15, v3

    .line 347
    or-int/2addr v14, v15

    .line 348
    const/high16 v15, 0x70000

    .line 349
    .line 350
    and-int/2addr v15, v3

    .line 351
    or-int/2addr v14, v15

    .line 352
    const/high16 v15, 0x380000

    .line 353
    .line 354
    and-int/2addr v3, v15

    .line 355
    or-int/2addr v3, v14

    .line 356
    move-object/from16 v16, v11

    .line 357
    .line 358
    move v11, v3

    .line 359
    move-object/from16 v3, v16

    .line 360
    .line 361
    move-object/from16 v16, v7

    .line 362
    .line 363
    move-object v7, v5

    .line 364
    move-object v5, v6

    .line 365
    move-object/from16 v6, v16

    .line 366
    .line 367
    invoke-static/range {v3 .. v11}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->BannerInlineNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;I)V

    .line 368
    .line 369
    .line 370
    move-object v7, v9

    .line 371
    goto :goto_15

    .line 372
    :cond_1c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 373
    .line 374
    .line 375
    move-object/from16 v7, p6

    .line 376
    .line 377
    :goto_15
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    if-eqz v11, :cond_1d

    .line 382
    .line 383
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda2;

    .line 384
    .line 385
    move-object/from16 v3, p2

    .line 386
    .line 387
    move-object/from16 v4, p3

    .line 388
    .line 389
    move-object/from16 v5, p4

    .line 390
    .line 391
    move-object/from16 v6, p5

    .line 392
    .line 393
    move-object/from16 v8, p7

    .line 394
    .line 395
    move-object v9, v12

    .line 396
    move v10, v13

    .line 397
    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;I)V

    .line 398
    .line 399
    .line 400
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 401
    .line 402
    :cond_1d
    return-void
.end method

.method public static final BannerInlineNotificationSupportingText(Ljava/lang/CharSequence;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;ILandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move-object/from16 v13, p5

    .line 6
    .line 7
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, 0x4543e43a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x4

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int v0, p6, v0

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

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
    or-int/2addr v0, v3

    .line 44
    move/from16 v11, p2

    .line 45
    .line 46
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    const/16 v3, 0x100

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v3, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, v3

    .line 58
    or-int/lit16 v0, v0, 0xc00

    .line 59
    .line 60
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/16 v6, 0x4000

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    move v3, v6

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v3, 0x2000

    .line 71
    .line 72
    :goto_3
    or-int/2addr v0, v3

    .line 73
    and-int/lit16 v3, v0, 0x2493

    .line 74
    .line 75
    const/16 v7, 0x2492

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    const/4 v9, 0x0

    .line 79
    if-eq v3, v7, :cond_4

    .line 80
    .line 81
    move v3, v8

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    move v3, v9

    .line 84
    :goto_4
    and-int/lit8 v7, v0, 0x1

    .line 85
    .line 86
    invoke-virtual {v13, v7, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_f

    .line 91
    .line 92
    and-int/lit8 v3, v0, 0xe

    .line 93
    .line 94
    if-eq v3, v2, :cond_5

    .line 95
    .line 96
    move v2, v9

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    move v2, v8

    .line 99
    :goto_5
    and-int/lit8 v3, v0, 0x70

    .line 100
    .line 101
    if-ne v3, v4, :cond_6

    .line 102
    .line 103
    move v3, v8

    .line 104
    goto :goto_6

    .line 105
    :cond_6
    move v3, v9

    .line 106
    :goto_6
    or-int/2addr v2, v3

    .line 107
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 112
    .line 113
    if-nez v2, :cond_7

    .line 114
    .line 115
    if-ne v3, v4, :cond_9

    .line 116
    .line 117
    :cond_7
    sget-object v2, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    aget v2, v2, v3

    .line 124
    .line 125
    if-ne v2, v8, :cond_8

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/16 v3, 0xc8

    .line 132
    .line 133
    if-le v2, v3, :cond_8

    .line 134
    .line 135
    invoke-interface {v1, v9, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object v3, v2

    .line 140
    goto :goto_7

    .line 141
    :cond_8
    move-object v3, v1

    .line 142
    :goto_7
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_9
    check-cast v3, Ljava/lang/CharSequence;

    .line 146
    .line 147
    const v2, 0xe000

    .line 148
    .line 149
    .line 150
    and-int/2addr v2, v0

    .line 151
    if-ne v2, v6, :cond_a

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_a
    move v8, v9

    .line 155
    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-nez v8, :cond_b

    .line 160
    .line 161
    if-ne v2, v4, :cond_c

    .line 162
    .line 163
    :cond_b
    new-instance v2, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 164
    .line 165
    const/4 v4, 0x6

    .line 166
    invoke-direct {v2, v4, v5}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_c
    move-object v12, v2

    .line 173
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    instance-of v2, v3, Ljava/lang/String;

    .line 176
    .line 177
    const/16 v4, 0x6030

    .line 178
    .line 179
    const/high16 v6, 0x70000

    .line 180
    .line 181
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 182
    .line 183
    if-eqz v2, :cond_d

    .line 184
    .line 185
    const v2, 0x77a8c36c

    .line 186
    .line 187
    .line 188
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 189
    .line 190
    .line 191
    check-cast v3, Ljava/lang/String;

    .line 192
    .line 193
    shl-int/lit8 v0, v0, 0x9

    .line 194
    .line 195
    and-int/2addr v0, v6

    .line 196
    or-int v14, v4, v0

    .line 197
    .line 198
    const/16 v15, 0xc

    .line 199
    .line 200
    move v0, v9

    .line 201
    const-wide/16 v8, 0x0

    .line 202
    .line 203
    const/4 v10, 0x2

    .line 204
    move v2, v0

    .line 205
    move-object v6, v3

    .line 206
    invoke-static/range {v6 .. v15}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 210
    .line 211
    .line 212
    goto :goto_9

    .line 213
    :cond_d
    move v2, v9

    .line 214
    instance-of v8, v3, Landroidx/compose/ui/text/AnnotatedString;

    .line 215
    .line 216
    if-eqz v8, :cond_e

    .line 217
    .line 218
    const v8, 0x77ac93ec    # 7.000588E33f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 222
    .line 223
    .line 224
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString;

    .line 225
    .line 226
    shl-int/lit8 v0, v0, 0x9

    .line 227
    .line 228
    and-int/2addr v0, v6

    .line 229
    or-int v14, v4, v0

    .line 230
    .line 231
    const/16 v15, 0xc

    .line 232
    .line 233
    const-wide/16 v8, 0x0

    .line 234
    .line 235
    const/4 v10, 0x2

    .line 236
    move/from16 v11, p2

    .line 237
    .line 238
    move-object v6, v3

    .line 239
    invoke-static/range {v6 .. v15}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 243
    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_e
    const v8, 0x77b02f81

    .line 247
    .line 248
    .line 249
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    shl-int/lit8 v0, v0, 0x9

    .line 257
    .line 258
    and-int/2addr v0, v6

    .line 259
    or-int v14, v4, v0

    .line 260
    .line 261
    const/16 v15, 0xc

    .line 262
    .line 263
    const-wide/16 v8, 0x0

    .line 264
    .line 265
    const/4 v10, 0x2

    .line 266
    move/from16 v11, p2

    .line 267
    .line 268
    move-object v6, v3

    .line 269
    invoke-static/range {v6 .. v15}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 273
    .line 274
    .line 275
    :goto_9
    move-object v4, v7

    .line 276
    goto :goto_a

    .line 277
    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 278
    .line 279
    .line 280
    move-object/from16 v4, p3

    .line 281
    .line 282
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    if-eqz v8, :cond_10

    .line 287
    .line 288
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const/4 v7, 0x6

    .line 291
    move-object/from16 v2, p1

    .line 292
    .line 293
    move/from16 v3, p2

    .line 294
    .line 295
    move/from16 v6, p6

    .line 296
    .line 297
    invoke-direct/range {v0 .. v7}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 298
    .line 299
    .line 300
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    :cond_10
    return-void
.end method

.method public static final BannerInlineNotificationTitle(Ljava/lang/CharSequence;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;ILandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object/from16 v8, p4

    .line 2
    .line 3
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x7570220b

    .line 6
    .line 7
    .line 8
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x4

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int v0, p5, v0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    move v3, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v3, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v3

    .line 40
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    const/16 v3, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v3, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v3

    .line 52
    or-int/lit16 v0, v0, 0xc00

    .line 53
    .line 54
    and-int/lit16 v3, v0, 0x493

    .line 55
    .line 56
    const/16 v5, 0x492

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    const/4 v11, 0x0

    .line 60
    if-eq v3, v5, :cond_3

    .line 61
    .line 62
    move v3, v6

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move v3, v11

    .line 65
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 66
    .line 67
    invoke-virtual {v8, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_b

    .line 72
    .line 73
    and-int/lit8 v3, v0, 0xe

    .line 74
    .line 75
    if-eq v3, v2, :cond_4

    .line 76
    .line 77
    move v2, v11

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move v2, v6

    .line 80
    :goto_4
    and-int/lit8 v3, v0, 0x70

    .line 81
    .line 82
    if-ne v3, v4, :cond_5

    .line 83
    .line 84
    move v3, v6

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    move v3, v11

    .line 87
    :goto_5
    or-int/2addr v2, v3

    .line 88
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 95
    .line 96
    if-ne v3, v2, :cond_8

    .line 97
    .line 98
    :cond_6
    sget-object v2, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    aget v2, v2, v3

    .line 105
    .line 106
    if-ne v2, v6, :cond_7

    .line 107
    .line 108
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const/16 v3, 0x64

    .line 113
    .line 114
    if-le v2, v3, :cond_7

    .line 115
    .line 116
    invoke-interface {p0, v11, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v3, v2

    .line 121
    goto :goto_6

    .line 122
    :cond_7
    move-object v3, p0

    .line 123
    :goto_6
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_8
    check-cast v3, Ljava/lang/CharSequence;

    .line 127
    .line 128
    instance-of v2, v3, Ljava/lang/String;

    .line 129
    .line 130
    const/16 v4, 0x6030

    .line 131
    .line 132
    const/high16 v5, 0x70000

    .line 133
    .line 134
    move-object v6, v3

    .line 135
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 136
    .line 137
    if-eqz v2, :cond_9

    .line 138
    .line 139
    const v2, 0x6411860d

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 143
    .line 144
    .line 145
    move-object v2, v6

    .line 146
    check-cast v2, Ljava/lang/String;

    .line 147
    .line 148
    shl-int/lit8 v0, v0, 0x9

    .line 149
    .line 150
    and-int/2addr v0, v5

    .line 151
    or-int v9, v4, v0

    .line 152
    .line 153
    const/16 v10, 0xc

    .line 154
    .line 155
    const-wide/16 v4, 0x0

    .line 156
    .line 157
    const/4 v6, 0x2

    .line 158
    move v7, p2

    .line 159
    invoke-static/range {v2 .. v10}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_9
    instance-of v2, v6, Landroidx/compose/ui/text/AnnotatedString;

    .line 167
    .line 168
    if-eqz v2, :cond_a

    .line 169
    .line 170
    const v2, 0x641494cd

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 174
    .line 175
    .line 176
    move-object v2, v6

    .line 177
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 178
    .line 179
    shl-int/lit8 v0, v0, 0x9

    .line 180
    .line 181
    and-int/2addr v0, v5

    .line 182
    or-int v9, v4, v0

    .line 183
    .line 184
    const/16 v10, 0xc

    .line 185
    .line 186
    const-wide/16 v4, 0x0

    .line 187
    .line 188
    const/4 v6, 0x2

    .line 189
    move v7, p2

    .line 190
    invoke-static/range {v2 .. v10}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_a
    const v2, 0x64176ea2

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    shl-int/lit8 v0, v0, 0x9

    .line 208
    .line 209
    and-int/2addr v0, v5

    .line 210
    or-int v9, v4, v0

    .line 211
    .line 212
    const/16 v10, 0xc

    .line 213
    .line 214
    const-wide/16 v4, 0x0

    .line 215
    .line 216
    const/4 v6, 0x2

    .line 217
    move v7, p2

    .line 218
    invoke-static/range {v2 .. v10}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 222
    .line 223
    .line 224
    :goto_7
    move-object v4, v3

    .line 225
    goto :goto_8

    .line 226
    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 227
    .line 228
    .line 229
    move-object v4, p3

    .line 230
    :goto_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    if-eqz v7, :cond_c

    .line 235
    .line 236
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 237
    .line 238
    const/16 v6, 0x10

    .line 239
    .line 240
    move-object v1, p0

    .line 241
    move-object v2, p1

    .line 242
    move v3, p2

    .line 243
    move/from16 v5, p5

    .line 244
    .line 245
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    .line 247
    .line 248
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 249
    .line 250
    :cond_c
    return-void
.end method

.method public static final ErrorBannerInlineNotificationCard(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v0, p6

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v1, -0x602a3e2c

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    move-object/from16 v8, p0

    .line 20
    .line 21
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int/2addr v1, v7

    .line 31
    move-object/from16 v9, p1

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v2, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v1, v2

    .line 45
    and-int/lit8 v2, p8, 0x8

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    or-int/lit16 v1, v1, 0xc00

    .line 50
    .line 51
    move-object/from16 v3, p3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    move-object/from16 v3, p3

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    const/16 v4, 0x800

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/16 v4, 0x400

    .line 66
    .line 67
    :goto_2
    or-int/2addr v1, v4

    .line 68
    :goto_3
    and-int/lit16 v4, v7, 0x6000

    .line 69
    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    and-int/lit8 v4, p8, 0x10

    .line 73
    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    if-nez p4, :cond_4

    .line 77
    .line 78
    const/4 v4, -0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    :goto_4
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    const/16 v4, 0x4000

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_5
    const/16 v4, 0x2000

    .line 94
    .line 95
    :goto_5
    or-int/2addr v1, v4

    .line 96
    :cond_6
    and-int/lit8 v4, p8, 0x20

    .line 97
    .line 98
    const/high16 v5, 0x30000

    .line 99
    .line 100
    if-eqz v4, :cond_8

    .line 101
    .line 102
    or-int/2addr v1, v5

    .line 103
    :cond_7
    move-object/from16 v5, p5

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_8
    and-int/2addr v5, v7

    .line 107
    if-nez v5, :cond_7

    .line 108
    .line 109
    move-object/from16 v5, p5

    .line 110
    .line 111
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_9

    .line 116
    .line 117
    const/high16 v6, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_9
    const/high16 v6, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v1, v6

    .line 123
    :goto_7
    const v6, 0x12493

    .line 124
    .line 125
    .line 126
    and-int/2addr v6, v1

    .line 127
    const v10, 0x12492

    .line 128
    .line 129
    .line 130
    if-eq v6, v10, :cond_a

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    goto :goto_8

    .line 134
    :cond_a
    const/4 v6, 0x0

    .line 135
    :goto_8
    and-int/lit8 v10, v1, 0x1

    .line 136
    .line 137
    invoke-virtual {v0, v10, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_12

    .line 142
    .line 143
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 144
    .line 145
    .line 146
    and-int/lit8 v6, v7, 0x1

    .line 147
    .line 148
    const v10, -0xe001

    .line 149
    .line 150
    .line 151
    if-eqz v6, :cond_d

    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_b

    .line 158
    .line 159
    goto :goto_a

    .line 160
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 161
    .line 162
    .line 163
    and-int/lit8 v2, p8, 0x10

    .line 164
    .line 165
    if-eqz v2, :cond_c

    .line 166
    .line 167
    and-int/2addr v1, v10

    .line 168
    :cond_c
    move-object/from16 v15, p4

    .line 169
    .line 170
    move-object v11, v3

    .line 171
    :goto_9
    move-object/from16 v16, v5

    .line 172
    .line 173
    goto :goto_d

    .line 174
    :cond_d
    :goto_a
    if-eqz v2, :cond_e

    .line 175
    .line 176
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_e
    move-object v2, v3

    .line 180
    :goto_b
    and-int/lit8 v3, p8, 0x10

    .line 181
    .line 182
    if-eqz v3, :cond_f

    .line 183
    .line 184
    and-int/2addr v1, v10

    .line 185
    sget-object v3, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/BannerNotificationCardDefaults;->bannerInlineBehaviour:Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 186
    .line 187
    goto :goto_c

    .line 188
    :cond_f
    move-object/from16 v3, p4

    .line 189
    .line 190
    :goto_c
    if-eqz v4, :cond_11

    .line 191
    .line 192
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 197
    .line 198
    if-ne v4, v5, :cond_10

    .line 199
    .line 200
    new-instance v4, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    const/16 v5, 0x1c

    .line 203
    .line 204
    invoke-direct {v4, v5}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_10
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 211
    .line 212
    move-object v11, v2

    .line 213
    move-object v15, v3

    .line 214
    move-object/from16 v16, v4

    .line 215
    .line 216
    goto :goto_d

    .line 217
    :cond_11
    move-object v11, v2

    .line 218
    move-object v15, v3

    .line 219
    goto :goto_9

    .line 220
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/BannerNotificationCardDefaults;->errorCardColors-dgg9oW8(Landroidx/compose/runtime/Composer;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 234
    .line 235
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onErrorContainer:J

    .line 236
    .line 237
    new-instance v13, Landroidx/compose/foundation/BorderStroke;

    .line 238
    .line 239
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    .line 240
    .line 241
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 242
    .line 243
    .line 244
    const/high16 v2, 0x3f800000    # 1.0f

    .line 245
    .line 246
    invoke-direct {v13, v2, v4}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;)V

    .line 247
    .line 248
    .line 249
    shl-int/lit8 v2, v1, 0x3

    .line 250
    .line 251
    and-int/lit8 v3, v2, 0x70

    .line 252
    .line 253
    or-int/lit8 v3, v3, 0x6

    .line 254
    .line 255
    and-int/lit16 v4, v2, 0x380

    .line 256
    .line 257
    or-int/2addr v3, v4

    .line 258
    or-int/lit16 v3, v3, 0xc00

    .line 259
    .line 260
    const v4, 0xe000

    .line 261
    .line 262
    .line 263
    and-int/2addr v2, v4

    .line 264
    or-int/2addr v2, v3

    .line 265
    shl-int/lit8 v1, v1, 0xc

    .line 266
    .line 267
    const/high16 v3, 0xe000000

    .line 268
    .line 269
    and-int/2addr v3, v1

    .line 270
    or-int/2addr v2, v3

    .line 271
    const/high16 v3, 0x70000000

    .line 272
    .line 273
    and-int/2addr v1, v3

    .line 274
    or-int v18, v2, v1

    .line 275
    .line 276
    const/4 v14, 0x0

    .line 277
    move-object/from16 v10, p2

    .line 278
    .line 279
    move-object/from16 v17, v0

    .line 280
    .line 281
    invoke-static/range {v8 .. v18}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->BannerInlineNotificationCard(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 282
    .line 283
    .line 284
    move-object v4, v11

    .line 285
    move-object v5, v15

    .line 286
    move-object/from16 v6, v16

    .line 287
    .line 288
    goto :goto_e

    .line 289
    :cond_12
    move-object/from16 v17, v0

    .line 290
    .line 291
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 292
    .line 293
    .line 294
    move-object v4, v3

    .line 295
    move-object v6, v5

    .line 296
    move-object/from16 v5, p4

    .line 297
    .line 298
    :goto_e
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    if-eqz v9, :cond_13

    .line 303
    .line 304
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda4;

    .line 305
    .line 306
    move-object/from16 v1, p0

    .line 307
    .line 308
    move-object/from16 v2, p1

    .line 309
    .line 310
    move-object/from16 v3, p2

    .line 311
    .line 312
    move/from16 v8, p8

    .line 313
    .line 314
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;II)V

    .line 315
    .line 316
    .line 317
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 318
    .line 319
    :cond_13
    return-void
.end method
