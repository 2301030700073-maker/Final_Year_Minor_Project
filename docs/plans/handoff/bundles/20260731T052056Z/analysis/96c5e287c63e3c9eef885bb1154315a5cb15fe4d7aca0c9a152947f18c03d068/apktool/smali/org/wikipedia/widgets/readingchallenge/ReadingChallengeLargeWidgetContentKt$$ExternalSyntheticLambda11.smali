.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLandroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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
    move-object/from16 v6, p2

    .line 8
    .line 9
    check-cast v6, Landroidx/compose/runtime/GapComposer;

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
    new-instance v2, Landroidx/glance/AndroidResourceImageProvider;

    .line 22
    .line 23
    const v1, 0x7f080206

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v1}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v9, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    aget v3, v9, v3

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x4

    .line 44
    const/4 v12, 0x3

    .line 45
    const/4 v13, 0x2

    .line 46
    const/4 v14, 0x1

    .line 47
    if-eq v3, v14, :cond_3

    .line 48
    .line 49
    if-eq v3, v13, :cond_2

    .line 50
    .line 51
    if-eq v3, v12, :cond_1

    .line 52
    .line 53
    if-ne v3, v11, :cond_0

    .line 54
    .line 55
    const/high16 v3, 0x41c00000    # 24.0f

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 59
    .line 60
    .line 61
    return-object v10

    .line 62
    :cond_1
    const/high16 v3, 0x41b00000    # 22.0f

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/high16 v3, 0x41a00000    # 20.0f

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/high16 v3, 0x41900000    # 18.0f

    .line 69
    .line 70
    :goto_0
    invoke-static {v3}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v4, Landroidx/glance/color/DayNightColorProvider;

    .line 75
    .line 76
    iget-wide v7, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$1:J

    .line 77
    .line 78
    invoke-direct {v4, v7, v8, v7, v8}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Landroidx/glance/ColorFilter;

    .line 82
    .line 83
    new-instance v15, Landroidx/glance/TintColorFilterParams;

    .line 84
    .line 85
    invoke-direct {v15, v4}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v15}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 89
    .line 90
    .line 91
    move-wide v15, v7

    .line 92
    const v7, 0x8030

    .line 93
    .line 94
    .line 95
    const/16 v8, 0x8

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    move-object/from16 p1, v10

    .line 99
    .line 100
    move-wide v10, v15

    .line 101
    invoke-static/range {v2 .. v8}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Landroidx/glance/layout/WidthModifier;

    .line 105
    .line 106
    new-instance v3, Landroidx/glance/unit/Dimension$Dp;

    .line 107
    .line 108
    const/high16 v15, 0x41400000    # 12.0f

    .line 109
    .line 110
    invoke-direct {v3, v15}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v2, v3}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 114
    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-static {v2, v6, v3}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 118
    .line 119
    .line 120
    const v2, 0x7f120727

    .line 121
    .line 122
    .line 123
    iget-object v4, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$2:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move v4, v3

    .line 133
    new-instance v3, Landroidx/glance/layout/WidthModifier;

    .line 134
    .line 135
    sget-object v5, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 136
    .line 137
    invoke-direct {v3, v5}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 138
    .line 139
    .line 140
    move v5, v4

    .line 141
    new-instance v4, Landroidx/glance/text/TextStyle;

    .line 142
    .line 143
    new-instance v7, Landroidx/glance/color/DayNightColorProvider;

    .line 144
    .line 145
    invoke-direct {v7, v10, v11, v10, v11}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    aget v8, v9, v8

    .line 153
    .line 154
    if-eq v8, v14, :cond_7

    .line 155
    .line 156
    if-eq v8, v13, :cond_6

    .line 157
    .line 158
    if-eq v8, v12, :cond_5

    .line 159
    .line 160
    const/4 v9, 0x4

    .line 161
    if-ne v8, v9, :cond_4

    .line 162
    .line 163
    const/16 v8, 0x10

    .line 164
    .line 165
    invoke-static {v8}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v8

    .line 169
    goto :goto_1

    .line 170
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    :cond_5
    const/16 v8, 0xe

    .line 175
    .line 176
    invoke-static {v8}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    goto :goto_1

    .line 181
    :cond_6
    const/16 v8, 0xd

    .line 182
    .line 183
    invoke-static {v8}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    goto :goto_1

    .line 188
    :cond_7
    const/16 v8, 0xc

    .line 189
    .line 190
    invoke-static {v8}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 191
    .line 192
    .line 193
    move-result-wide v8

    .line 194
    :goto_1
    new-instance v10, Landroidx/compose/ui/unit/TextUnit;

    .line 195
    .line 196
    invoke-direct {v10, v8, v9}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 197
    .line 198
    .line 199
    new-instance v8, Landroidx/glance/text/FontWeight;

    .line 200
    .line 201
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    const/16 v9, 0x78

    .line 205
    .line 206
    invoke-direct {v4, v7, v10, v8, v9}, Landroidx/glance/text/TextStyle;-><init>(Landroidx/glance/unit/ColorProvider;Landroidx/compose/ui/unit/TextUnit;Landroidx/glance/text/FontWeight;I)V

    .line 207
    .line 208
    .line 209
    const/4 v7, 0x0

    .line 210
    const/16 v8, 0x8

    .line 211
    .line 212
    move v9, v5

    .line 213
    const/4 v5, 0x0

    .line 214
    invoke-static/range {v2 .. v8}, Lkotlin/ResultKt;->Text(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;ILandroidx/compose/runtime/GapComposer;II)V

    .line 215
    .line 216
    .line 217
    new-instance v2, Landroidx/glance/layout/WidthModifier;

    .line 218
    .line 219
    new-instance v3, Landroidx/glance/unit/Dimension$Dp;

    .line 220
    .line 221
    invoke-direct {v3, v15}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v2, v3}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v6, v9}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Landroidx/glance/AndroidResourceImageProvider;

    .line 231
    .line 232
    iget v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;->f$3:I

    .line 233
    .line 234
    invoke-direct {v2, v0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getTitleBarIconSize-D9Ej5fM()F

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-static {v0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const/16 v7, 0x30

    .line 246
    .line 247
    const/16 v8, 0x18

    .line 248
    .line 249
    const/4 v4, 0x0

    .line 250
    const/4 v5, 0x0

    .line 251
    invoke-static/range {v2 .. v8}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 252
    .line 253
    .line 254
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 255
    .line 256
    return-object v0
.end method
