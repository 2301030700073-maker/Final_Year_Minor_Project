.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$2:F

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(IFJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$2:F

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$3:J

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$4:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/glance/layout/RowScopeImplInstance;

    .line 6
    .line 7
    move-object/from16 v5, p2

    .line 8
    .line 9
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$0:I

    .line 22
    .line 23
    const/16 v2, 0x19

    .line 24
    .line 25
    iget v8, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$2:F

    .line 26
    .line 27
    iget-wide v9, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$3:J

    .line 28
    .line 29
    iget-wide v11, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda3;->f$4:J

    .line 30
    .line 31
    const/high16 v0, 0x41c00000    # 24.0f

    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v14, 0x1

    .line 35
    if-gt v14, v1, :cond_1

    .line 36
    .line 37
    if-ge v1, v2, :cond_1

    .line 38
    .line 39
    const v2, -0x417ff1e8

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 43
    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    const/high16 v2, 0x41c80000    # 25.0f

    .line 47
    .line 48
    div-float/2addr v1, v2

    .line 49
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    .line 51
    const/4 v15, 0x0

    .line 52
    invoke-static {v1, v15, v2}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    mul-float/2addr v1, v8

    .line 57
    new-instance v2, Landroidx/glance/layout/HeightModifier;

    .line 58
    .line 59
    new-instance v3, Landroidx/glance/unit/Dimension$Dp;

    .line 60
    .line 61
    invoke-direct {v3, v0}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v1}, Landroidx/compose/ui/unit/DpKt;->width-3ABfNKs(Landroidx/glance/GlanceModifier;F)Landroidx/glance/GlanceModifier;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;

    .line 72
    .line 73
    invoke-direct {v3, v9, v10, v13}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;-><init>(JI)V

    .line 74
    .line 75
    .line 76
    const v4, 0x2ef89222

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const/16 v6, 0x180

    .line 84
    .line 85
    const/4 v7, 0x2

    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-static/range {v2 .. v7}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Landroidx/glance/layout/WidthModifier;

    .line 91
    .line 92
    new-instance v3, Landroidx/glance/unit/Dimension$Dp;

    .line 93
    .line 94
    const/high16 v4, 0x40800000    # 4.0f

    .line 95
    .line 96
    invoke-direct {v3, v4}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v3}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v5, v13}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    new-instance v3, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;

    .line 110
    .line 111
    invoke-direct {v3, v9, v10, v14}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;-><init>(JI)V

    .line 112
    .line 113
    .line 114
    const v6, 0x77a6fd99

    .line 115
    .line 116
    .line 117
    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const/16 v6, 0x180

    .line 122
    .line 123
    move v9, v4

    .line 124
    move-object v4, v3

    .line 125
    const/4 v3, 0x0

    .line 126
    invoke-static/range {v2 .. v7}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Landroidx/glance/layout/WidthModifier;

    .line 130
    .line 131
    new-instance v3, Landroidx/glance/unit/Dimension$Dp;

    .line 132
    .line 133
    invoke-direct {v3, v9}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, v3}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v5, v13}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 140
    .line 141
    .line 142
    sub-float/2addr v8, v1

    .line 143
    cmpg-float v1, v8, v15

    .line 144
    .line 145
    if-gez v1, :cond_0

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    move v15, v8

    .line 149
    :goto_0
    new-instance v1, Landroidx/glance/layout/HeightModifier;

    .line 150
    .line 151
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 152
    .line 153
    invoke-direct {v2, v0}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v15}, Landroidx/compose/ui/unit/DpKt;->width-3ABfNKs(Landroidx/glance/GlanceModifier;F)Landroidx/glance/GlanceModifier;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;

    .line 164
    .line 165
    const/4 v1, 0x2

    .line 166
    invoke-direct {v0, v11, v12, v1}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;-><init>(JI)V

    .line 167
    .line 168
    .line 169
    const v1, -0x4ac71e6

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    const/16 v6, 0x180

    .line 177
    .line 178
    const/4 v7, 0x2

    .line 179
    const/4 v3, 0x0

    .line 180
    invoke-static/range {v2 .. v7}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_1
    const v3, -0x4185ec0c

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 191
    .line 192
    .line 193
    new-instance v3, Landroidx/glance/layout/HeightModifier;

    .line 194
    .line 195
    new-instance v4, Landroidx/glance/unit/Dimension$Dp;

    .line 196
    .line 197
    invoke-direct {v4, v0}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, v4}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v8}, Landroidx/compose/ui/unit/DpKt;->width-3ABfNKs(Landroidx/glance/GlanceModifier;F)Landroidx/glance/GlanceModifier;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-lt v1, v2, :cond_2

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_2
    move-wide v9, v11

    .line 211
    :goto_1
    new-instance v1, Landroidx/glance/unit/FixedColorProvider;

    .line 212
    .line 213
    invoke-direct {v1, v9, v10}, Landroidx/glance/unit/FixedColorProvider;-><init>(J)V

    .line 214
    .line 215
    .line 216
    new-instance v2, Landroidx/glance/BackgroundModifier$Color;

    .line 217
    .line 218
    invoke-direct {v2, v1}, Landroidx/glance/BackgroundModifier$Color;-><init>(Landroidx/glance/unit/FixedColorProvider;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v2}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v1, Landroidx/glance/appwidget/CornerRadiusModifier;

    .line 226
    .line 227
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 228
    .line 229
    const/high16 v3, 0x41400000    # 12.0f

    .line 230
    .line 231
    invoke-direct {v2, v3}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v1, v2}, Landroidx/glance/appwidget/CornerRadiusModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v1}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    sget-object v4, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->lambda$716671001:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 242
    .line 243
    const/16 v6, 0x180

    .line 244
    .line 245
    const/4 v7, 0x2

    .line 246
    const/4 v3, 0x0

    .line 247
    invoke-static/range {v2 .. v7}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 251
    .line 252
    .line 253
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 254
    .line 255
    return-object v0
.end method
