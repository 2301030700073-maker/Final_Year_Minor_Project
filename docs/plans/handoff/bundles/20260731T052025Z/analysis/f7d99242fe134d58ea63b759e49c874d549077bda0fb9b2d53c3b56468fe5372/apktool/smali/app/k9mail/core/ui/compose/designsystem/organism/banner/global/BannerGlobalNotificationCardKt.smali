.class public abstract Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-2065177311:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$-544424655:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$1973074191:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x207342cf

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->lambda$-544424655:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    const v2, -0x7b181adf

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->lambda$-2065177311:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    new-instance v0, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v1, 0xb

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 44
    .line 45
    const v2, 0x759ab90f

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->lambda$1973074191:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 52
    .line 53
    return-void
.end method

.method public static final BannerGlobalNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    move/from16 v8, p7

    .line 235
    move-object/from16 v6, p6

    check-cast v6, Landroidx/compose/runtime/GapComposer;

    const v0, -0x311990fa

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_3
    and-int/lit16 v4, v8, 0x180

    if-nez v4, :cond_6

    and-int/lit16 v4, v8, 0x200

    if-nez v4, :cond_4

    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    :cond_4
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_4

    :cond_5
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v0, v4

    :cond_6
    and-int/lit16 v4, v8, 0xc00

    if-nez v4, :cond_8

    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x800

    goto :goto_5

    :cond_7
    const/16 v4, 0x400

    :goto_5
    or-int/2addr v0, v4

    :cond_8
    and-int/lit16 v4, v8, 0x6000

    move-object/from16 v9, p4

    if-nez v4, :cond_a

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x4000

    goto :goto_6

    :cond_9
    const/16 v4, 0x2000

    :goto_6
    or-int/2addr v0, v4

    :cond_a
    const/high16 v10, 0x30000

    and-int v4, v8, v10

    if-nez v4, :cond_c

    move-object/from16 v4, p5

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/high16 v5, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v5, 0x10000

    :goto_7
    or-int/2addr v0, v5

    :goto_8
    move v11, v0

    goto :goto_9

    :cond_c
    move-object/from16 v4, p5

    goto :goto_8

    :goto_9
    const v0, 0x12493

    and-int/2addr v0, v11

    const v5, 0x12492

    if-eq v0, v5, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    and-int/lit8 v5, v11, 0x1

    invoke-virtual {v6, v5, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 236
    new-instance v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, -0x311b9846

    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    shr-int/lit8 v0, v11, 0xc

    and-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v10

    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v11, 0x380

    or-int/2addr v0, v1

    const/16 v7, 0x18

    const/4 v3, 0x0

    move-object v1, p3

    move-object v5, v6

    move v6, v0

    move-object v0, v9

    .line 237
    invoke-static/range {v0 .. v7}, Landroidx/appcompat/app/ActionBar;->CardFilled(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_e
    move-object v5, v6

    .line 238
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 239
    :goto_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_f

    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;I)V

    .line 240
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final BannerGlobalNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    move-object v6, p6

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p6, -0x3220a6e4    # -4.6839488E8f

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6, p6}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p6, p7, 0x6

    .line 11
    .line 12
    if-nez p6, :cond_1

    .line 13
    .line 14
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p6

    .line 18
    if-eqz p6, :cond_0

    .line 19
    .line 20
    const/4 p6, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p6, 0x2

    .line 23
    :goto_0
    or-int/2addr p6, p7

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p6, p7

    .line 26
    :goto_1
    and-int/lit8 v0, p7, 0x30

    .line 27
    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    and-int/lit8 v0, p7, 0x40

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/16 v0, 0x20

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/16 v0, 0x10

    .line 49
    .line 50
    :goto_3
    or-int/2addr p6, v0

    .line 51
    :cond_4
    and-int/lit16 v0, p7, 0x180

    .line 52
    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const/16 v0, 0x100

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_5
    const/16 v0, 0x80

    .line 65
    .line 66
    :goto_4
    or-int/2addr p6, v0

    .line 67
    :cond_6
    and-int/lit16 v0, p7, 0xc00

    .line 68
    .line 69
    if-nez v0, :cond_9

    .line 70
    .line 71
    and-int/lit16 v0, p7, 0x1000

    .line 72
    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_5

    .line 80
    :cond_7
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :goto_5
    if-eqz v0, :cond_8

    .line 85
    .line 86
    const/16 v0, 0x800

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_8
    const/16 v0, 0x400

    .line 90
    .line 91
    :goto_6
    or-int/2addr p6, v0

    .line 92
    :cond_9
    and-int/lit16 v0, p7, 0x6000

    .line 93
    .line 94
    if-nez v0, :cond_a

    .line 95
    .line 96
    or-int/lit16 p6, p6, 0x2000

    .line 97
    .line 98
    :cond_a
    const/high16 v0, 0x30000

    .line 99
    .line 100
    and-int/2addr v0, p7

    .line 101
    if-nez v0, :cond_c

    .line 102
    .line 103
    invoke-virtual {v6, p5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_b

    .line 108
    .line 109
    const/high16 v0, 0x20000

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_b
    const/high16 v0, 0x10000

    .line 113
    .line 114
    :goto_7
    or-int/2addr p6, v0

    .line 115
    :cond_c
    const v0, 0x12493

    .line 116
    .line 117
    .line 118
    and-int/2addr v0, p6

    .line 119
    const v1, 0x12492

    .line 120
    .line 121
    .line 122
    if-eq v0, v1, :cond_d

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    goto :goto_8

    .line 126
    :cond_d
    const/4 v0, 0x0

    .line 127
    :goto_8
    and-int/lit8 v1, p6, 0x1

    .line 128
    .line 129
    invoke-virtual {v6, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_10

    .line 134
    .line 135
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 136
    .line 137
    .line 138
    and-int/lit8 v0, p7, 0x1

    .line 139
    .line 140
    const v1, -0xe001

    .line 141
    .line 142
    .line 143
    if-eqz v0, :cond_f

    .line 144
    .line 145
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_e

    .line 150
    .line 151
    goto :goto_a

    .line 152
    :cond_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 153
    .line 154
    .line 155
    and-int/2addr p6, v1

    .line 156
    :goto_9
    move-object v3, p4

    .line 157
    goto :goto_b

    .line 158
    :cond_f
    :goto_a
    and-int/2addr p6, v1

    .line 159
    sget-object p4, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :goto_b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 163
    .line 164
    .line 165
    new-instance p4, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    const/4 v0, 0x5

    .line 168
    invoke-direct {p4, p1, v0}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    const v0, -0x44b507dc

    .line 172
    .line 173
    .line 174
    invoke-static {v0, p4, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    and-int/lit8 p4, p6, 0xe

    .line 179
    .line 180
    or-int/lit8 p4, p4, 0x30

    .line 181
    .line 182
    shr-int/lit8 v0, p6, 0x3

    .line 183
    .line 184
    and-int/lit16 v0, v0, 0x380

    .line 185
    .line 186
    or-int/2addr p4, v0

    .line 187
    const v0, 0xe000

    .line 188
    .line 189
    .line 190
    shl-int/lit8 v2, p6, 0x6

    .line 191
    .line 192
    and-int/2addr v0, v2

    .line 193
    or-int/2addr p4, v0

    .line 194
    const/high16 v0, 0x70000

    .line 195
    .line 196
    and-int/2addr p6, v0

    .line 197
    or-int v7, p4, p6

    .line 198
    .line 199
    move-object v0, p0

    .line 200
    move-object v4, p2

    .line 201
    move-object v2, p3

    .line 202
    move-object v5, p5

    .line 203
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->BannerGlobalNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 204
    .line 205
    .line 206
    move-object p3, v4

    .line 207
    move-object p6, v5

    .line 208
    move-object p5, v3

    .line 209
    goto :goto_c

    .line 210
    :cond_10
    move-object v0, p0

    .line 211
    move-object v2, p3

    .line 212
    move-object p6, p5

    .line 213
    move-object p3, p2

    .line 214
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 215
    .line 216
    .line 217
    move-object p5, p4

    .line 218
    :goto_c
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-eqz v1, :cond_11

    .line 223
    .line 224
    new-instance p0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    .line 225
    .line 226
    move-object p2, p1

    .line 227
    move-object p1, v0

    .line 228
    move-object p4, v2

    .line 229
    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;I)V

    .line 230
    .line 231
    .line 232
    iput-object p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 233
    .line 234
    :cond_11
    return-void
.end method

.method public static final ErrorBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 8

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v6, p1

    .line 5
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p1, 0x34a292ba

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x2

    .line 22
    :goto_0
    or-int/2addr p1, p0

    .line 23
    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x20

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v0, 0x10

    .line 33
    .line 34
    :goto_1
    or-int/2addr p1, v0

    .line 35
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const/16 v0, 0x100

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v0, 0x80

    .line 45
    .line 46
    :goto_2
    or-int/2addr p1, v0

    .line 47
    and-int/lit16 v0, p1, 0x93

    .line 48
    .line 49
    const/16 v1, 0x92

    .line 50
    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    :goto_3
    and-int/lit8 v1, p1, 0x1

    .line 57
    .line 58
    invoke-virtual {v6, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-static {v6}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/BannerNotificationCardDefaults;->errorCardColors-dgg9oW8(Landroidx/compose/runtime/Composer;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    shl-int/lit8 v0, p1, 0x3

    .line 69
    .line 70
    and-int/lit8 v0, v0, 0x70

    .line 71
    .line 72
    or-int/lit8 v0, v0, 0x6

    .line 73
    .line 74
    and-int/lit16 v1, p1, 0x380

    .line 75
    .line 76
    or-int/2addr v0, v1

    .line 77
    shl-int/lit8 p1, p1, 0xc

    .line 78
    .line 79
    const/high16 v1, 0x70000

    .line 80
    .line 81
    and-int/2addr p1, v1

    .line 82
    or-int v7, v0, p1

    .line 83
    .line 84
    sget-object v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->lambda$-544424655:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    move-object v2, p2

    .line 88
    move-object v1, p3

    .line 89
    move-object v5, p4

    .line 90
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->BannerGlobalNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    move-object v2, p2

    .line 95
    move-object v1, p3

    .line 96
    move-object v5, p4

    .line 97
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 98
    .line 99
    .line 100
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    new-instance p2, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {p2, v1, v5, v2, p0}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;I)V

    .line 109
    .line 110
    .line 111
    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 112
    .line 113
    :cond_5
    return-void
.end method

.method public static final InfoBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x48a87716

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x2

    .line 19
    :goto_0
    or-int/2addr p1, p0

    .line 20
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p1, v0

    .line 32
    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x100

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v0, 0x80

    .line 42
    .line 43
    :goto_2
    or-int/2addr p1, v0

    .line 44
    and-int/lit16 v0, p1, 0x93

    .line 45
    .line 46
    const/16 v2, 0x92

    .line 47
    .line 48
    if-eq v0, v2, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/4 v0, 0x0

    .line 53
    :goto_3
    and-int/lit8 v2, p1, 0x1

    .line 54
    .line 55
    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 62
    .line 63
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 68
    .line 69
    iget-wide v4, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->infoContainer:J

    .line 70
    .line 71
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 76
    .line 77
    iget-wide v7, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onInfoContainer:J

    .line 78
    .line 79
    invoke-static {v4, v5, v7, v8, v6}, Landroidx/room/util/RelationUtil;->outlinedCardColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    shl-int/lit8 v2, p1, 0x3

    .line 84
    .line 85
    and-int/lit8 v4, v2, 0x70

    .line 86
    .line 87
    or-int/lit8 v4, v4, 0x6

    .line 88
    .line 89
    and-int/lit16 v2, v2, 0x380

    .line 90
    .line 91
    or-int/2addr v2, v4

    .line 92
    shl-int/lit8 p1, p1, 0x9

    .line 93
    .line 94
    const/high16 v4, 0x70000

    .line 95
    .line 96
    and-int/2addr p1, v4

    .line 97
    or-int v7, v2, p1

    .line 98
    .line 99
    move-object v3, v0

    .line 100
    sget-object v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->lambda$-2065177311:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    move-object v2, p2

    .line 104
    move-object v1, p3

    .line 105
    move-object v5, p4

    .line 106
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->BannerGlobalNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 111
    .line 112
    .line 113
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    move v4, p0

    .line 123
    move-object v2, p2

    .line 124
    move-object v1, p3

    .line 125
    move-object v3, p4

    .line 126
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 130
    .line 131
    :cond_5
    return-void
.end method

.method public static final WarningBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x6b75de8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x2

    .line 19
    :goto_0
    or-int/2addr p1, p0

    .line 20
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p1, v0

    .line 32
    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x100

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v0, 0x80

    .line 42
    .line 43
    :goto_2
    or-int/2addr p1, v0

    .line 44
    and-int/lit16 v0, p1, 0x93

    .line 45
    .line 46
    const/16 v2, 0x92

    .line 47
    .line 48
    if-eq v0, v2, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/4 v0, 0x0

    .line 53
    :goto_3
    and-int/lit8 v2, p1, 0x1

    .line 54
    .line 55
    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 62
    .line 63
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 68
    .line 69
    iget-wide v4, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->warningContainer:J

    .line 70
    .line 71
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 76
    .line 77
    iget-wide v7, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onWarningContainer:J

    .line 78
    .line 79
    invoke-static {v4, v5, v7, v8, v6}, Landroidx/room/util/RelationUtil;->outlinedCardColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    shl-int/lit8 v2, p1, 0x3

    .line 84
    .line 85
    and-int/lit8 v4, v2, 0x70

    .line 86
    .line 87
    or-int/lit8 v4, v4, 0x6

    .line 88
    .line 89
    and-int/lit16 v2, v2, 0x380

    .line 90
    .line 91
    or-int/2addr v2, v4

    .line 92
    shl-int/lit8 p1, p1, 0x9

    .line 93
    .line 94
    const/high16 v4, 0x70000

    .line 95
    .line 96
    and-int/2addr p1, v4

    .line 97
    or-int v7, v2, p1

    .line 98
    .line 99
    move-object v3, v0

    .line 100
    sget-object v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->lambda$1973074191:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    move-object v2, p2

    .line 104
    move-object v1, p3

    .line 105
    move-object v5, p4

    .line 106
    invoke-static/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->BannerGlobalNotificationCard(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 111
    .line 112
    .line 113
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/4 v5, 0x2

    .line 122
    move v4, p0

    .line 123
    move-object v2, p2

    .line 124
    move-object v1, p3

    .line 125
    move-object v3, p4

    .line 126
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 130
    .line 131
    :cond_5
    return-void
.end method
