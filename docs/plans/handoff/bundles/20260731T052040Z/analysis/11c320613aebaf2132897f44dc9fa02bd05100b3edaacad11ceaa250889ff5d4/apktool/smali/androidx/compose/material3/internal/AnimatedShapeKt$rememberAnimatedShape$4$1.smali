.class public final Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# instance fields
.field public final synthetic $state:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

.field public final clampedRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;->$state:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

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
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;->clampedRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;->$state:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 4
    .line 5
    iput-wide p1, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->size:J

    .line 6
    .line 7
    const-wide v2, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v2, p1

    .line 13
    long-to-int v2, v2

    .line 14
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/high16 v3, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v2, v3

    .line 21
    new-instance v3, Lkotlin/ranges/ClosedFloatRange;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lkotlin/ranges/ClosedFloatRange;-><init>(F)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeKt$rememberAnimatedShape$4$1;->clampedRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-wide v2, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->size:J

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 34
    .line 35
    iget-object v5, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

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
    iput-object v5, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

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
    iget-wide v3, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->size:J

    .line 82
    .line 83
    iget-object v5, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 84
    .line 85
    iget-object v6, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->topEnd:Landroidx/compose/animation/core/Animatable;

    .line 86
    .line 87
    if-nez v6, :cond_1

    .line 88
    .line 89
    iget-object v6, v1, Landroidx/compose/foundation/shape/CornerBasedShape;->topEnd:Landroidx/compose/foundation/shape/CornerSize;

    .line 90
    .line 91
    invoke-interface {v6, v3, v4, v5}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    iput-object v6, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->topEnd:Landroidx/compose/animation/core/Animatable;

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/Number;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lkotlin/ranges/ClosedFloatRange;

    .line 120
    .line 121
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    iget-wide v4, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->size:J

    .line 132
    .line 133
    iget-object v6, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 134
    .line 135
    iget-object v7, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->bottomStart:Landroidx/compose/animation/core/Animatable;

    .line 136
    .line 137
    if-nez v7, :cond_2

    .line 138
    .line 139
    iget-object v7, v1, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomStart:Landroidx/compose/foundation/shape/CornerSize;

    .line 140
    .line 141
    invoke-interface {v7, v4, v5, v6}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {v4}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    iput-object v7, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->bottomStart:Landroidx/compose/animation/core/Animatable;

    .line 150
    .line 151
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lkotlin/ranges/ClosedFloatRange;

    .line 170
    .line 171
    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Ljava/lang/Number;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    iget-wide v5, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->size:J

    .line 182
    .line 183
    iget-object v7, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 184
    .line 185
    iget-object v8, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->bottomEnd:Landroidx/compose/animation/core/Animatable;

    .line 186
    .line 187
    if-nez v8, :cond_3

    .line 188
    .line 189
    iget-object v1, v1, Landroidx/compose/foundation/shape/CornerBasedShape;->bottomEnd:Landroidx/compose/foundation/shape/CornerSize;

    .line 190
    .line 191
    invoke-interface {v1, v5, v6, v7}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-static {v1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    iput-object v8, v0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->bottomEnd:Landroidx/compose/animation/core/Animatable;

    .line 200
    .line 201
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/Number;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    check-cast p0, Lkotlin/ranges/ClosedFloatRange;

    .line 220
    .line 221
    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    sget-object v0, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 232
    .line 233
    new-instance v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 234
    .line 235
    new-instance v1, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 236
    .line 237
    invoke-direct {v1, v2}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 238
    .line 239
    .line 240
    new-instance v2, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 241
    .line 242
    invoke-direct {v2, v3}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 243
    .line 244
    .line 245
    new-instance v3, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 246
    .line 247
    invoke-direct {v3, p0}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 248
    .line 249
    .line 250
    new-instance p0, Landroidx/compose/foundation/shape/PxCornerSize;

    .line 251
    .line 252
    invoke-direct {p0, v4}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    .line 253
    .line 254
    .line 255
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/foundation/shape/CornerBasedShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/shape/CornerBasedShape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    return-object p0
.end method
