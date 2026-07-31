.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-class v3, Lorg/wikipedia/widgets/readingchallenge/RandomizerAction;

    .line 8
    .line 9
    const v4, 0x7f120737

    .line 10
    .line 11
    .line 12
    const/high16 v5, 0x41800000    # 16.0f

    .line 13
    .line 14
    const-class v6, Lorg/wikipedia/widgets/readingchallenge/SearchAction;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const v8, 0x7f120742

    .line 18
    .line 19
    .line 20
    sget-object v9, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 21
    .line 22
    iget-object v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Landroidx/glance/layout/RowScopeImplInstance;

    .line 30
    .line 31
    move-object/from16 v14, p2

    .line 32
    .line 33
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    move-object/from16 v10, p3

    .line 36
    .line 37
    check-cast v10, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v13, Landroidx/glance/layout/WidthModifier;

    .line 46
    .line 47
    invoke-direct {v13, v9}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-array v1, v7, [Landroidx/glance/action/ActionParameters$Pair;

    .line 58
    .line 59
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, [Landroidx/glance/action/ActionParameters$Pair;

    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v11, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 70
    .line 71
    invoke-direct {v11, v6, v1}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 72
    .line 73
    .line 74
    const/4 v15, 0x0

    .line 75
    const v12, 0x7f0802d9

    .line 76
    .line 77
    .line 78
    invoke-static/range {v10 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetIconButton(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;ILandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 82
    .line 83
    new-instance v6, Landroidx/glance/unit/Dimension$Dp;

    .line 84
    .line 85
    invoke-direct {v6, v5}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v6}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v14, v7}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 92
    .line 93
    .line 94
    new-instance v13, Landroidx/glance/layout/WidthModifier;

    .line 95
    .line 96
    invoke-direct {v13, v9}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-array v0, v7, [Landroidx/glance/action/ActionParameters$Pair;

    .line 107
    .line 108
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v11, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 119
    .line 120
    invoke-direct {v11, v3, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 121
    .line 122
    .line 123
    const v12, 0x7f080150

    .line 124
    .line 125
    .line 126
    invoke-static/range {v10 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetIconButton(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;ILandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 127
    .line 128
    .line 129
    return-object v2

    .line 130
    :pswitch_0
    move-object/from16 v1, p1

    .line 131
    .line 132
    check-cast v1, Landroidx/glance/layout/RowScopeImplInstance;

    .line 133
    .line 134
    move-object/from16 v14, p2

    .line 135
    .line 136
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 137
    .line 138
    move-object/from16 v10, p3

    .line 139
    .line 140
    check-cast v10, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    new-instance v13, Landroidx/glance/layout/WidthModifier;

    .line 149
    .line 150
    invoke-direct {v13, v9}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    new-array v1, v7, [Landroidx/glance/action/ActionParameters$Pair;

    .line 161
    .line 162
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, [Landroidx/glance/action/ActionParameters$Pair;

    .line 167
    .line 168
    invoke-static {v1}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v11, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 173
    .line 174
    invoke-direct {v11, v6, v1}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 175
    .line 176
    .line 177
    const/4 v15, 0x0

    .line 178
    const v12, 0x7f0802d9

    .line 179
    .line 180
    .line 181
    invoke-static/range {v10 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetIconButton(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;ILandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 185
    .line 186
    new-instance v6, Landroidx/glance/unit/Dimension$Dp;

    .line 187
    .line 188
    invoke-direct {v6, v5}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v6}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v14, v7}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 195
    .line 196
    .line 197
    new-instance v13, Landroidx/glance/layout/WidthModifier;

    .line 198
    .line 199
    invoke-direct {v13, v9}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    new-array v0, v7, [Landroidx/glance/action/ActionParameters$Pair;

    .line 210
    .line 211
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 216
    .line 217
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v11, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 222
    .line 223
    invoke-direct {v11, v3, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 224
    .line 225
    .line 226
    const v12, 0x7f080150

    .line 227
    .line 228
    .line 229
    invoke-static/range {v10 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetIconButton(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;ILandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 230
    .line 231
    .line 232
    return-object v2

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
