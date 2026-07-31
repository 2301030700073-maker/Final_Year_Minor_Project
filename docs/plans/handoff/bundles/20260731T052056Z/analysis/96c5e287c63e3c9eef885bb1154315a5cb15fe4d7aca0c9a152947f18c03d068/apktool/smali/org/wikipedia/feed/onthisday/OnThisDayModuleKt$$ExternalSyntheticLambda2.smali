.class public final synthetic Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Enum;I)V
    .locals 0

    .line 12
    iput p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->$r8$classId:I

    iput p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->f$1:I

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->f$1:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v6, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iget p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;->f$1:I

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v6, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Landroidx/glance/layout/RowScopeImplInstance;

    .line 20
    .line 21
    move-object/from16 v11, p2

    .line 22
    .line 23
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    move-object/from16 v7, p3

    .line 26
    .line 27
    check-cast v7, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v7, Landroidx/glance/AndroidResourceImageProvider;

    .line 36
    .line 37
    invoke-direct {v7, p0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object p0, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    aget p0, p0, v0

    .line 50
    .line 51
    if-eq p0, v4, :cond_3

    .line 52
    .line 53
    if-eq p0, v3, :cond_2

    .line 54
    .line 55
    if-eq p0, v2, :cond_1

    .line 56
    .line 57
    if-ne p0, v1, :cond_0

    .line 58
    .line 59
    const/high16 p0, 0x42100000    # 36.0f

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 63
    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/high16 p0, 0x42000000    # 32.0f

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/high16 p0, 0x41e00000    # 28.0f

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/high16 p0, 0x41b00000    # 22.0f

    .line 74
    .line 75
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    const/16 v12, 0x30

    .line 80
    .line 81
    const/16 v13, 0x18

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    invoke-static/range {v7 .. v13}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-object v5

    .line 89
    :pswitch_0
    check-cast v6, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 90
    .line 91
    move-object v0, p1

    .line 92
    check-cast v0, Landroidx/glance/layout/RowScopeImplInstance;

    .line 93
    .line 94
    move-object/from16 v11, p2

    .line 95
    .line 96
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 97
    .line 98
    move-object/from16 v1, p3

    .line 99
    .line 100
    check-cast v1, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v7, Landroidx/glance/AndroidResourceImageProvider;

    .line 109
    .line 110
    invoke-direct {v7, p0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getTitleBarIconSize-D9Ej5fM()F

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    invoke-static {p0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    const/16 v12, 0x30

    .line 122
    .line 123
    const/16 v13, 0x18

    .line 124
    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x0

    .line 127
    invoke-static/range {v7 .. v13}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 128
    .line 129
    .line 130
    return-object v5

    .line 131
    :pswitch_1
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 132
    .line 133
    move-object v0, p1

    .line 134
    check-cast v0, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    move-object/from16 v8, p2

    .line 141
    .line 142
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 143
    .line 144
    move-object/from16 v9, p3

    .line 145
    .line 146
    check-cast v9, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    and-int/lit8 v10, v9, 0x6

    .line 153
    .line 154
    if-nez v10, :cond_5

    .line 155
    .line 156
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_4

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    move v1, v3

    .line 164
    :goto_2
    or-int/2addr v9, v1

    .line 165
    :cond_5
    and-int/lit8 v1, v9, 0x13

    .line 166
    .line 167
    const/16 v3, 0x12

    .line 168
    .line 169
    if-eq v1, v3, :cond_6

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    const/4 v4, 0x0

    .line 173
    :goto_3
    and-int/lit8 v1, v9, 0x1

    .line 174
    .line 175
    invoke-virtual {v8, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    shl-int/lit8 v1, v9, 0x3

    .line 186
    .line 187
    and-int/lit8 v1, v1, 0x70

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v6, p0, v0, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 198
    .line 199
    .line 200
    :goto_4
    return-object v5

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
