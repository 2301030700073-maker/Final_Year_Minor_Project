.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;I)V
    .locals 0

    .line 16
    iput p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    iput-wide p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$3:J

    iput-object p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 12
    .line 13
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$3:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x78

    .line 6
    .line 7
    iget-wide v3, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$3:J

    .line 8
    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const v6, 0x106000d

    .line 12
    .line 13
    .line 14
    iget-object v7, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 15
    .line 16
    iget-object v8, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$1$1$2$1;

    .line 24
    .line 25
    move-object/from16 v13, p2

    .line 26
    .line 27
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    move-object/from16 v9, p3

    .line 30
    .line 31
    check-cast v9, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v10, Landroidx/glance/action/ActionModifier;

    .line 40
    .line 41
    invoke-direct {v10, v8, v6}, Landroidx/glance/action/ActionModifier;-><init>(Landroidx/glance/action/Action;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getSubtitleTextSize-XSAIIZE()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    new-instance v1, Landroidx/glance/color/DayNightColorProvider;

    .line 49
    .line 50
    invoke-direct {v1, v3, v4, v3, v4}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 51
    .line 52
    .line 53
    new-instance v11, Landroidx/glance/text/TextStyle;

    .line 54
    .line 55
    new-instance v3, Landroidx/compose/ui/unit/TextUnit;

    .line 56
    .line 57
    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Landroidx/glance/text/FontWeight;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-direct {v11, v1, v3, v4, v2}, Landroidx/glance/text/TextStyle;-><init>(Landroidx/glance/unit/ColorProvider;Landroidx/compose/ui/unit/TextUnit;Landroidx/glance/text/FontWeight;I)V

    .line 66
    .line 67
    .line 68
    const/4 v14, 0x0

    .line 69
    const/16 v15, 0x8

    .line 70
    .line 71
    iget-object v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v12, 0x0

    .line 74
    invoke-static/range {v9 .. v15}, Lkotlin/ResultKt;->Text(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;ILandroidx/compose/runtime/GapComposer;II)V

    .line 75
    .line 76
    .line 77
    return-object v5

    .line 78
    :pswitch_0
    move-object/from16 v1, p1

    .line 79
    .line 80
    check-cast v1, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$1$1$2$1;

    .line 81
    .line 82
    move-object/from16 v13, p2

    .line 83
    .line 84
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 85
    .line 86
    move-object/from16 v9, p3

    .line 87
    .line 88
    check-cast v9, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v10, Landroidx/glance/action/ActionModifier;

    .line 97
    .line 98
    invoke-direct {v10, v8, v6}, Landroidx/glance/action/ActionModifier;-><init>(Landroidx/glance/action/Action;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    aget v1, v1, v6

    .line 111
    .line 112
    const/4 v6, 0x1

    .line 113
    if-eq v1, v6, :cond_3

    .line 114
    .line 115
    const/4 v6, 0x2

    .line 116
    if-eq v1, v6, :cond_2

    .line 117
    .line 118
    const/4 v6, 0x3

    .line 119
    if-eq v1, v6, :cond_1

    .line 120
    .line 121
    const/4 v6, 0x4

    .line 122
    if-ne v1, v6, :cond_0

    .line 123
    .line 124
    const/16 v1, 0x20

    .line 125
    .line 126
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v6

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 132
    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    const/16 v1, 0x18

    .line 137
    .line 138
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    const/16 v1, 0x12

    .line 144
    .line 145
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v6

    .line 149
    goto :goto_0

    .line 150
    :cond_3
    const/16 v1, 0x10

    .line 151
    .line 152
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    :goto_0
    new-instance v1, Landroidx/glance/color/DayNightColorProvider;

    .line 157
    .line 158
    invoke-direct {v1, v3, v4, v3, v4}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 159
    .line 160
    .line 161
    new-instance v11, Landroidx/glance/text/TextStyle;

    .line 162
    .line 163
    new-instance v3, Landroidx/compose/ui/unit/TextUnit;

    .line 164
    .line 165
    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 166
    .line 167
    .line 168
    new-instance v4, Landroidx/glance/text/FontWeight;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-direct {v11, v1, v3, v4, v2}, Landroidx/glance/text/TextStyle;-><init>(Landroidx/glance/unit/ColorProvider;Landroidx/compose/ui/unit/TextUnit;Landroidx/glance/text/FontWeight;I)V

    .line 174
    .line 175
    .line 176
    const/4 v14, 0x0

    .line 177
    const/16 v15, 0x8

    .line 178
    .line 179
    iget-object v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 180
    .line 181
    const/4 v12, 0x0

    .line 182
    invoke-static/range {v9 .. v15}, Lkotlin/ResultKt;->Text(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;ILandroidx/compose/runtime/GapComposer;II)V

    .line 183
    .line 184
    .line 185
    :goto_1
    return-object v5

    .line 186
    :pswitch_1
    move-object/from16 v1, p1

    .line 187
    .line 188
    check-cast v1, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$1$1$2$1;

    .line 189
    .line 190
    move-object/from16 v13, p2

    .line 191
    .line 192
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 193
    .line 194
    move-object/from16 v9, p3

    .line 195
    .line 196
    check-cast v9, Ljava/lang/Integer;

    .line 197
    .line 198
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v10, Landroidx/glance/action/ActionModifier;

    .line 205
    .line 206
    invoke-direct {v10, v8, v6}, Landroidx/glance/action/ActionModifier;-><init>(Landroidx/glance/action/Action;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getSubtitleTextSize-XSAIIZE()J

    .line 210
    .line 211
    .line 212
    move-result-wide v6

    .line 213
    new-instance v1, Landroidx/glance/color/DayNightColorProvider;

    .line 214
    .line 215
    invoke-direct {v1, v3, v4, v3, v4}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 216
    .line 217
    .line 218
    new-instance v11, Landroidx/glance/text/TextStyle;

    .line 219
    .line 220
    new-instance v3, Landroidx/compose/ui/unit/TextUnit;

    .line 221
    .line 222
    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 223
    .line 224
    .line 225
    new-instance v4, Landroidx/glance/text/FontWeight;

    .line 226
    .line 227
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-direct {v11, v1, v3, v4, v2}, Landroidx/glance/text/TextStyle;-><init>(Landroidx/glance/unit/ColorProvider;Landroidx/compose/ui/unit/TextUnit;Landroidx/glance/text/FontWeight;I)V

    .line 231
    .line 232
    .line 233
    const/4 v14, 0x0

    .line 234
    const/16 v15, 0x8

    .line 235
    .line 236
    iget-object v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 237
    .line 238
    const/4 v12, 0x0

    .line 239
    invoke-static/range {v9 .. v15}, Lkotlin/ResultKt;->Text(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;ILandroidx/compose/runtime/GapComposer;II)V

    .line 240
    .line 241
    .line 242
    return-object v5

    .line 243
    :pswitch_2
    move-object/from16 v1, p1

    .line 244
    .line 245
    check-cast v1, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$1$1$2$1;

    .line 246
    .line 247
    move-object/from16 v19, p2

    .line 248
    .line 249
    check-cast v19, Landroidx/compose/runtime/GapComposer;

    .line 250
    .line 251
    move-object/from16 v2, p3

    .line 252
    .line 253
    check-cast v2, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    new-instance v1, Landroidx/glance/action/ActionModifier;

    .line 262
    .line 263
    invoke-direct {v1, v8, v6}, Landroidx/glance/action/ActionModifier;-><init>(Landroidx/glance/action/Action;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getStreakBadgeTextSize-XSAIIZE()J

    .line 267
    .line 268
    .line 269
    move-result-wide v10

    .line 270
    invoke-virtual {v7}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getStreakBadgeIconSize-D9Ej5fM()F

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    const/16 v20, 0x0

    .line 275
    .line 276
    const/16 v21, 0x30

    .line 277
    .line 278
    iget-object v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 279
    .line 280
    const v12, 0x7f0801eb

    .line 281
    .line 282
    .line 283
    const/4 v14, 0x0

    .line 284
    const/4 v15, 0x0

    .line 285
    iget-wide v2, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;->f$3:J

    .line 286
    .line 287
    move-object/from16 v18, v1

    .line 288
    .line 289
    move-wide/from16 v16, v2

    .line 290
    .line 291
    invoke-static/range {v9 .. v21}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetBadge-LNF6LQw(Ljava/lang/String;JIFFLandroidx/compose/ui/graphics/Color;JLandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 292
    .line 293
    .line 294
    return-object v5

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
