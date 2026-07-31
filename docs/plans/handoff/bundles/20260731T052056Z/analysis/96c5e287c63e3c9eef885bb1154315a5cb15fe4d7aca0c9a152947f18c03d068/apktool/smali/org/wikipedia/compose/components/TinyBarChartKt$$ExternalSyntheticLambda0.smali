.class public final synthetic Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;IIJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$4:J

    .line 11
    .line 12
    iput-wide p6, p0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$5:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const/16 v10, 0x20

    .line 15
    .line 16
    shr-long/2addr v2, v10

    .line 17
    long-to-int v2, v2

    .line 18
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const-wide v11, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v3, v11

    .line 32
    long-to-int v3, v3

    .line 33
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    const/high16 v3, 0x40c00000    # 6.0f

    .line 38
    .line 39
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 40
    .line 41
    .line 42
    move-result v14

    .line 43
    iget-object v3, v0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/lit8 v4, v4, -0x1

    .line 50
    .line 51
    int-to-float v4, v4

    .line 52
    mul-float/2addr v4, v14

    .line 53
    sub-float/2addr v2, v4

    .line 54
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    int-to-float v4, v4

    .line 59
    div-float v15, v2, v4

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v16

    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    add-int/lit8 v17, v2, 0x1

    .line 77
    .line 78
    if-ltz v2, :cond_2

    .line 79
    .line 80
    check-cast v3, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    iget v4, v0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$1:I

    .line 87
    .line 88
    if-lez v4, :cond_0

    .line 89
    .line 90
    int-to-float v5, v3

    .line 91
    int-to-float v4, v4

    .line 92
    div-float/2addr v5, v4

    .line 93
    mul-float/2addr v5, v13

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    const/4 v5, 0x0

    .line 96
    :goto_1
    const/high16 v4, 0x40800000    # 4.0f

    .line 97
    .line 98
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iget v5, v0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$2:I

    .line 107
    .line 108
    if-lez v5, :cond_1

    .line 109
    .line 110
    int-to-float v3, v3

    .line 111
    int-to-float v5, v5

    .line 112
    div-float/2addr v3, v5

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 115
    .line 116
    :goto_2
    iget-wide v5, v0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$4:J

    .line 117
    .line 118
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    iget-wide v8, v0, Lorg/wikipedia/compose/components/TinyBarChartKt$$ExternalSyntheticLambda0;->f$5:J

    .line 123
    .line 124
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 125
    .line 126
    .line 127
    move-result v18

    .line 128
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 129
    .line 130
    .line 131
    move-result v19

    .line 132
    sub-float v18, v18, v19

    .line 133
    .line 134
    mul-float v18, v18, v3

    .line 135
    .line 136
    add-float v7, v18, v7

    .line 137
    .line 138
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 139
    .line 140
    .line 141
    move-result v18

    .line 142
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 143
    .line 144
    .line 145
    move-result v19

    .line 146
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 147
    .line 148
    .line 149
    move-result v20

    .line 150
    sub-float v19, v19, v20

    .line 151
    .line 152
    mul-float v19, v19, v3

    .line 153
    .line 154
    move/from16 p1, v10

    .line 155
    .line 156
    add-float v10, v19, v18

    .line 157
    .line 158
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 159
    .line 160
    .line 161
    move-result v18

    .line 162
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 163
    .line 164
    .line 165
    move-result v19

    .line 166
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 167
    .line 168
    .line 169
    move-result v20

    .line 170
    sub-float v19, v19, v20

    .line 171
    .line 172
    mul-float v19, v19, v3

    .line 173
    .line 174
    move-wide/from16 v20, v11

    .line 175
    .line 176
    add-float v11, v19, v18

    .line 177
    .line 178
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    sub-float/2addr v8, v5

    .line 191
    mul-float/2addr v8, v3

    .line 192
    add-float/2addr v8, v12

    .line 193
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 194
    .line 195
    invoke-static {v7, v10, v11, v8, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    int-to-float v2, v2

    .line 200
    add-float v3, v15, v14

    .line 201
    .line 202
    mul-float/2addr v3, v2

    .line 203
    sub-float v2, v13, v4

    .line 204
    .line 205
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    int-to-long v7, v3

    .line 210
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    int-to-long v2, v2

    .line 215
    shl-long v7, v7, p1

    .line 216
    .line 217
    and-long v2, v2, v20

    .line 218
    .line 219
    or-long/2addr v2, v7

    .line 220
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    int-to-long v7, v7

    .line 225
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    int-to-long v9, v4

    .line 230
    shl-long v7, v7, p1

    .line 231
    .line 232
    and-long v9, v9, v20

    .line 233
    .line 234
    or-long/2addr v7, v9

    .line 235
    const/high16 v4, 0x40000000    # 2.0f

    .line 236
    .line 237
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    int-to-long v9, v9

    .line 250
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    int-to-long v11, v4

    .line 255
    shl-long v9, v9, p1

    .line 256
    .line 257
    and-long v11, v11, v20

    .line 258
    .line 259
    or-long/2addr v9, v11

    .line 260
    move-wide/from16 v22, v5

    .line 261
    .line 262
    move-wide v4, v2

    .line 263
    move-wide/from16 v2, v22

    .line 264
    .line 265
    move-wide v6, v7

    .line 266
    move-wide v8, v9

    .line 267
    invoke-interface/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA(JJJJ)V

    .line 268
    .line 269
    .line 270
    move/from16 v10, p1

    .line 271
    .line 272
    move/from16 v2, v17

    .line 273
    .line 274
    move-wide/from16 v11, v20

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 279
    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    throw v0

    .line 283
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 284
    .line 285
    return-object v0
.end method
