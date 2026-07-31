.class public final Landroidx/compose/ui/graphics/shadow/DropShadowPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public alpha:F

.field public colorFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

.field public final renderCreator:Landroidx/cardview/widget/CardView$1;

.field public final shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

.field public final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/ui/graphics/shadow/Shadow;Landroidx/cardview/widget/CardView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->renderCreator:Landroidx/cardview/widget/CardView$1;

    .line 9
    .line 10
    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput p1, p0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->alpha:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final applyAlpha(F)Z
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->alpha:F

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final applyColorFilter(Landroidx/compose/ui/graphics/BlendModeColorFilter;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->colorFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public final onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->renderCreator:Landroidx/cardview/widget/CardView$1;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    iget-object v7, v0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v8, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;

    .line 23
    .line 24
    if-nez v8, :cond_0

    .line 25
    .line 26
    new-instance v9, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;

    .line 27
    .line 28
    sget-object v10, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 29
    .line 30
    sget-object v13, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 31
    .line 32
    const/high16 v14, 0x3f800000    # 1.0f

    .line 33
    .line 34
    const/4 v15, 0x0

    .line 35
    const-wide/16 v11, 0x0

    .line 36
    .line 37
    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;-><init>(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;FLandroidx/compose/ui/graphics/shadow/Shadow;)V

    .line 38
    .line 39
    .line 40
    iput-object v9, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v8, v9

    .line 43
    :cond_0
    iput-object v3, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 44
    .line 45
    iput-wide v4, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->size:J

    .line 46
    .line 47
    iput-object v6, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 48
    .line 49
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    iput v9, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->density:F

    .line 54
    .line 55
    new-instance v10, Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-wide v13, v7, Landroidx/compose/ui/graphics/shadow/Shadow;->color:J

    .line 61
    .line 62
    iget v15, v7, Landroidx/compose/ui/graphics/shadow/Shadow;->alpha:F

    .line 63
    .line 64
    const-wide/16 v11, 0x0

    .line 65
    .line 66
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/graphics/shadow/Shadow;-><init>(JJF)V

    .line 67
    .line 68
    .line 69
    iput-object v10, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 70
    .line 71
    iget-object v9, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v9, Landroidx/collection/MutableScatterMap;

    .line 74
    .line 75
    if-nez v9, :cond_1

    .line 76
    .line 77
    new-instance v9, Landroidx/collection/MutableScatterMap;

    .line 78
    .line 79
    invoke-direct {v9}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v9, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 83
    .line 84
    :cond_1
    invoke-virtual {v9, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    check-cast v9, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;

    .line 89
    .line 90
    if-nez v9, :cond_3

    .line 91
    .line 92
    invoke-interface {v3, v4, v5, v6, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    new-instance v9, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;

    .line 97
    .line 98
    invoke-direct {v9, v7, v3}, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;-><init>(Landroidx/compose/ui/graphics/shadow/Shadow;Landroidx/compose/ui/graphics/ColorKt;)V

    .line 99
    .line 100
    .line 101
    iget-object v3, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Landroidx/collection/MutableScatterMap;

    .line 104
    .line 105
    if-nez v3, :cond_2

    .line 106
    .line 107
    new-instance v3, Landroidx/collection/MutableScatterMap;

    .line 108
    .line 109
    invoke-direct {v3}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v3, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 113
    .line 114
    :cond_2
    iget-object v11, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 115
    .line 116
    iget-wide v12, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->size:J

    .line 117
    .line 118
    iget-object v14, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 119
    .line 120
    iget v15, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->density:F

    .line 121
    .line 122
    iget-object v4, v8, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 123
    .line 124
    new-instance v10, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;

    .line 125
    .line 126
    move-object/from16 v16, v4

    .line 127
    .line 128
    invoke-direct/range {v10 .. v16}, Landroidx/compose/ui/graphics/shadow/AndroidShadowContext$ShadowKey;-><init>(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/unit/LayoutDirection;FLandroidx/compose/ui/graphics/shadow/Shadow;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v10, v9}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    :goto_0
    monitor-exit v2

    .line 138
    iget-object v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 139
    .line 140
    iget-wide v2, v2, Landroidx/compose/ui/graphics/shadow/Shadow;->offset:J

    .line 141
    .line 142
    const/16 v4, 0x20

    .line 143
    .line 144
    shr-long/2addr v2, v4

    .line 145
    long-to-int v2, v2

    .line 146
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    iget-object v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 155
    .line 156
    iget-wide v2, v2, Landroidx/compose/ui/graphics/shadow/Shadow;->offset:J

    .line 157
    .line 158
    const-wide v4, 0xffffffffL

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    and-long/2addr v2, v4

    .line 164
    long-to-int v2, v2

    .line 165
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v2, Landroidx/appcompat/widget/PopupMenu$1;

    .line 180
    .line 181
    invoke-virtual {v2, v8, v10}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 182
    .line 183
    .line 184
    :try_start_1
    iget-object v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->colorFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 185
    .line 186
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    iget-object v5, v9, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 191
    .line 192
    iget-wide v6, v5, Landroidx/compose/ui/graphics/shadow/Shadow;->color:J

    .line 193
    .line 194
    iget v0, v0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;->alpha:F

    .line 195
    .line 196
    iget v5, v5, Landroidx/compose/ui/graphics/shadow/Shadow;->alpha:F

    .line 197
    .line 198
    mul-float/2addr v0, v5

    .line 199
    const/4 v5, 0x0

    .line 200
    const/high16 v11, 0x3f800000    # 1.0f

    .line 201
    .line 202
    invoke-static {v0, v5, v11}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iget-object v5, v9, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-wide v5, v6

    .line 212
    move v7, v0

    .line 213
    move-object v0, v9

    .line 214
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->drawShadow-erFMhIw(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/BlendModeColorFilter;JJF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .line 216
    .line 217
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 224
    .line 225
    neg-float v1, v8

    .line 226
    neg-float v2, v10

    .line 227
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :catchall_1
    move-exception v0

    .line 232
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v1, Landroidx/appcompat/widget/PopupMenu$1;

    .line 239
    .line 240
    neg-float v2, v8

    .line 241
    neg-float v3, v10

    .line 242
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :goto_1
    monitor-exit v2

    .line 247
    throw v0
.end method
