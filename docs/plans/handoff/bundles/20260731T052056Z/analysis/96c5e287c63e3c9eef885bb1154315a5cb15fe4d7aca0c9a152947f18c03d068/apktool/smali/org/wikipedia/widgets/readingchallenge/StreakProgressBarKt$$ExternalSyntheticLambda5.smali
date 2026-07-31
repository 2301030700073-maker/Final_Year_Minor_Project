.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;->f$0:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-wide v7, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda5;->f$0:J

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v13, p1

    .line 18
    .line 19
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v0, p2

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit8 v1, v0, 0x3

    .line 30
    .line 31
    if-eq v1, v5, :cond_0

    .line 32
    .line 33
    move v4, v6

    .line 34
    :cond_0
    and-int/2addr v0, v6

    .line 35
    invoke-virtual {v13, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance v9, Landroidx/glance/AndroidResourceImageProvider;

    .line 42
    .line 43
    const v0, 0x7f0802df

    .line 44
    .line 45
    .line 46
    invoke-direct {v9, v0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    new-instance v0, Landroidx/glance/color/DayNightColorProvider;

    .line 54
    .line 55
    invoke-direct {v0, v7, v8, v7, v8}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 56
    .line 57
    .line 58
    new-instance v12, Landroidx/glance/ColorFilter;

    .line 59
    .line 60
    new-instance v1, Landroidx/glance/TintColorFilterParams;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v12, v1}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 66
    .line 67
    .line 68
    const v14, 0x8030

    .line 69
    .line 70
    .line 71
    const/16 v15, 0x8

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    invoke-static/range {v9 .. v15}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-object v2

    .line 82
    :pswitch_0
    move-object/from16 v0, p1

    .line 83
    .line 84
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 85
    .line 86
    move-object/from16 v1, p2

    .line 87
    .line 88
    check-cast v1, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    and-int/lit8 v9, v1, 0x3

    .line 95
    .line 96
    if-eq v9, v5, :cond_2

    .line 97
    .line 98
    move v4, v6

    .line 99
    :cond_2
    and-int/2addr v1, v6

    .line 100
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    move-object v1, v3

    .line 107
    new-instance v3, Landroidx/glance/AndroidResourceImageProvider;

    .line 108
    .line 109
    const v4, 0x7f080315

    .line 110
    .line 111
    .line 112
    invoke-direct {v3, v4}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    new-instance v1, Landroidx/glance/color/DayNightColorProvider;

    .line 120
    .line 121
    invoke-direct {v1, v7, v8, v7, v8}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 122
    .line 123
    .line 124
    new-instance v6, Landroidx/glance/ColorFilter;

    .line 125
    .line 126
    new-instance v5, Landroidx/glance/TintColorFilterParams;

    .line 127
    .line 128
    invoke-direct {v5, v1}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v6, v5}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 132
    .line 133
    .line 134
    const v8, 0x8030

    .line 135
    .line 136
    .line 137
    const/16 v9, 0x8

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    move-object v7, v0

    .line 141
    invoke-static/range {v3 .. v9}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    move-object v7, v0

    .line 146
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-object v2

    .line 150
    :pswitch_1
    move-object v1, v3

    .line 151
    move-object/from16 v12, p1

    .line 152
    .line 153
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 154
    .line 155
    move-object/from16 v0, p2

    .line 156
    .line 157
    check-cast v0, Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    and-int/lit8 v3, v0, 0x3

    .line 164
    .line 165
    if-eq v3, v5, :cond_4

    .line 166
    .line 167
    move v4, v6

    .line 168
    :cond_4
    and-int/2addr v0, v6

    .line 169
    invoke-virtual {v12, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    new-instance v0, Landroidx/glance/AndroidResourceImageProvider;

    .line 176
    .line 177
    const v3, 0x7f0802e0

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, v3}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    new-instance v1, Landroidx/glance/color/DayNightColorProvider;

    .line 188
    .line 189
    invoke-direct {v1, v7, v8, v7, v8}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 190
    .line 191
    .line 192
    new-instance v11, Landroidx/glance/ColorFilter;

    .line 193
    .line 194
    new-instance v3, Landroidx/glance/TintColorFilterParams;

    .line 195
    .line 196
    invoke-direct {v3, v1}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v11, v3}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 200
    .line 201
    .line 202
    const v13, 0x8030

    .line 203
    .line 204
    .line 205
    const/16 v14, 0x8

    .line 206
    .line 207
    const/4 v10, 0x0

    .line 208
    move-object v8, v0

    .line 209
    invoke-static/range {v8 .. v14}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 214
    .line 215
    .line 216
    :goto_2
    return-object v2

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
