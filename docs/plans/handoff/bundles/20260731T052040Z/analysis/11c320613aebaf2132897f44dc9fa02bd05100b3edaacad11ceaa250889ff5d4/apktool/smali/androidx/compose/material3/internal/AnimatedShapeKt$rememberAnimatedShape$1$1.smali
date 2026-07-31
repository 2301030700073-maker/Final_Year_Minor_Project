.class public final Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# instance fields
.field public final synthetic $state:Landroidx/compose/material3/internal/AnimatedShapeState;

.field public final clampedRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/AnimatedShapeState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;->$state:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 5
    .line 6
    new-instance p1, Lkotlin/ranges/ClosedFloatRange;

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lkotlin/ranges/ClosedFloatRange;-><init>(F)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;->clampedRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;->$state:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 2
    .line 3
    iput-wide p1, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    .line 4
    .line 5
    const-wide v1, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v1, p1

    .line 11
    long-to-int v1, v1

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/high16 v2, 0x40000000    # 2.0f

    .line 17
    .line 18
    div-float/2addr v1, v2

    .line 19
    new-instance v2, Lkotlin/ranges/ClosedFloatRange;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lkotlin/ranges/ClosedFloatRange;-><init>(F)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$1$1;->clampedRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 30
    .line 31
    iget-wide v2, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 34
    .line 35
    iget-object v5, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    iget-object v5, v1, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    .line 40
    .line 41
    invoke-interface {v5, v2, v3, v4}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iput-object v5, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

    .line 50
    .line 51
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lkotlin/ranges/ClosedFloatRange;

    .line 70
    .line 71
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    new-instance v3, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 82
    .line 83
    invoke-direct {v3, v2}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 84
    .line 85
    .line 86
    iget-wide v4, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    .line 87
    .line 88
    iget-object v2, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 89
    .line 90
    iget-object v6, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->topEnd:Landroidx/compose/animation/core/Animatable;

    .line 91
    .line 92
    if-nez v6, :cond_1

    .line 93
    .line 94
    iget-object v6, v1, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    .line 95
    .line 96
    invoke-interface {v6, v4, v5, v2}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v2}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iput-object v6, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->topEnd:Landroidx/compose/animation/core/Animatable;

    .line 105
    .line 106
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lkotlin/ranges/ClosedFloatRange;

    .line 125
    .line 126
    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    new-instance v4, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 137
    .line 138
    invoke-direct {v4, v2}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 139
    .line 140
    .line 141
    iget-wide v5, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    .line 142
    .line 143
    iget-object v2, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 144
    .line 145
    iget-object v7, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomStart:Landroidx/compose/animation/core/Animatable;

    .line 146
    .line 147
    if-nez v7, :cond_2

    .line 148
    .line 149
    iget-object v7, v1, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    .line 150
    .line 151
    invoke-interface {v7, v5, v6, v2}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-static {v2}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    iput-object v7, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomStart:Landroidx/compose/animation/core/Animatable;

    .line 160
    .line 161
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Ljava/lang/Number;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Lkotlin/ranges/ClosedFloatRange;

    .line 180
    .line 181
    invoke-static {v2, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Ljava/lang/Number;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    new-instance v5, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 192
    .line 193
    invoke-direct {v5, v2}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 194
    .line 195
    .line 196
    iget-wide v6, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    .line 197
    .line 198
    iget-object v2, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 199
    .line 200
    iget-object v8, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomEnd:Landroidx/compose/animation/core/Animatable;

    .line 201
    .line 202
    if-nez v8, :cond_3

    .line 203
    .line 204
    iget-object v1, v1, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    .line 205
    .line 206
    invoke-interface {v1, v6, v7, v2}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-static {v1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    iput-object v8, v0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomEnd:Landroidx/compose/animation/core/Animatable;

    .line 215
    .line 216
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Ljava/lang/Number;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    check-cast p0, Lkotlin/ranges/ClosedFloatRange;

    .line 235
    .line 236
    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    check-cast p0, Ljava/lang/Number;

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    new-instance v0, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 247
    .line 248
    invoke-direct {v0, p0}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 249
    .line 250
    .line 251
    new-instance p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 252
    .line 253
    invoke-direct {p0, v3, v4, v0, v5}, Landroidx/compose/foundation/shape/CornerBasedShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/CornerBasedShape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0
.end method
