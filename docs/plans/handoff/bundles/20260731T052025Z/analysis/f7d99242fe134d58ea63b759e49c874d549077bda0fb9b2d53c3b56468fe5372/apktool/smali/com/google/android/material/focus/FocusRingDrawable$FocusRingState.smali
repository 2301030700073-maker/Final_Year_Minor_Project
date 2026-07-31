.class public final Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mChangingConfigurations:I

.field public final ringCustomBounds:Landroid/graphics/Rect;

.field public ringEnabled:Z

.field public ringEnabledAttr:I

.field public ringEnabledInflated:Z

.field public ringInnerColor:I

.field public ringInnerColorAttr:I

.field public ringInnerInset:F

.field public ringInnerInsetAttr:I

.field public ringInnerStrokeWidth:F

.field public ringInnerStrokeWidthAttr:I

.field public ringInset:F

.field public ringInsetAttr:I

.field public ringOuterColor:I

.field public ringOuterColorAttr:I

.field public ringOuterStrokeWidth:F

.field public ringOuterStrokeWidthAttr:I

.field public ringRadius:F

.field public ringRadiusAttr:I

.field public ringShapeAppearance:Lcom/google/android/material/shape/ShapeAppearance;

.field public ringShapeAppearanceAttr:I

.field public ringShapeAppearanceResId:I

.field public ringStateSet:[I

.field public wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->mChangingConfigurations:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabled:Z

    .line 8
    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabledAttr:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabledInflated:Z

    .line 14
    .line 15
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterColor:I

    .line 16
    .line 17
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterColorAttr:I

    .line 18
    .line 19
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerColor:I

    .line 20
    .line 21
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerColorAttr:I

    .line 22
    .line 23
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 24
    .line 25
    iput v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterStrokeWidth:F

    .line 26
    .line 27
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterStrokeWidthAttr:I

    .line 28
    .line 29
    iput v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerStrokeWidth:F

    .line 30
    .line 31
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerStrokeWidthAttr:I

    .line 32
    .line 33
    iput v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringRadius:F

    .line 34
    .line 35
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringRadiusAttr:I

    .line 36
    .line 37
    iput v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInset:F

    .line 38
    .line 39
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInsetAttr:I

    .line 40
    .line 41
    iput v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerInset:F

    .line 42
    .line 43
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerInsetAttr:I

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    iput-object v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearance:Lcom/google/android/material/shape/ShapeAppearance;

    .line 47
    .line 48
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearanceResId:I

    .line 49
    .line 50
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearanceAttr:I

    .line 51
    .line 52
    iput-object v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringCustomBounds:Landroid/graphics/Rect;

    .line 53
    .line 54
    sget-object v1, Lcom/google/android/material/focus/FocusRingDrawable;->FOCUSED_STATE_SET:[I

    .line 55
    .line 56
    iput-object v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringStateSet:[I

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iget-object v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 63
    .line 64
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->mChangingConfigurations:I

    .line 65
    .line 66
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->mChangingConfigurations:I

    .line 67
    .line 68
    iget-boolean v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabled:Z

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabled:Z

    .line 71
    .line 72
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabledAttr:I

    .line 73
    .line 74
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabledAttr:I

    .line 75
    .line 76
    iget-boolean v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabledInflated:Z

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringEnabledInflated:Z

    .line 79
    .line 80
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterColor:I

    .line 81
    .line 82
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterColor:I

    .line 83
    .line 84
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterColorAttr:I

    .line 85
    .line 86
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterColorAttr:I

    .line 87
    .line 88
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerColor:I

    .line 89
    .line 90
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerColor:I

    .line 91
    .line 92
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerColorAttr:I

    .line 93
    .line 94
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerColorAttr:I

    .line 95
    .line 96
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterStrokeWidth:F

    .line 97
    .line 98
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterStrokeWidth:F

    .line 99
    .line 100
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterStrokeWidthAttr:I

    .line 101
    .line 102
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringOuterStrokeWidthAttr:I

    .line 103
    .line 104
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerStrokeWidth:F

    .line 105
    .line 106
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerStrokeWidth:F

    .line 107
    .line 108
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerStrokeWidthAttr:I

    .line 109
    .line 110
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerStrokeWidthAttr:I

    .line 111
    .line 112
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringRadius:F

    .line 113
    .line 114
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringRadius:F

    .line 115
    .line 116
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringRadiusAttr:I

    .line 117
    .line 118
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringRadiusAttr:I

    .line 119
    .line 120
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInset:F

    .line 121
    .line 122
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInset:F

    .line 123
    .line 124
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInsetAttr:I

    .line 125
    .line 126
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInsetAttr:I

    .line 127
    .line 128
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerInset:F

    .line 129
    .line 130
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerInset:F

    .line 131
    .line 132
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerInsetAttr:I

    .line 133
    .line 134
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringInnerInsetAttr:I

    .line 135
    .line 136
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearanceResId:I

    .line 137
    .line 138
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearanceResId:I

    .line 139
    .line 140
    iget v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearanceAttr:I

    .line 141
    .line 142
    iput v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearanceAttr:I

    .line 143
    .line 144
    iget-object v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearance:Lcom/google/android/material/shape/ShapeAppearance;

    .line 145
    .line 146
    instance-of v3, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 147
    .line 148
    if-eqz v3, :cond_0

    .line 149
    .line 150
    check-cast v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearance:Lcom/google/android/material/shape/ShapeAppearance;

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_0
    instance-of v3, v1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 164
    .line 165
    if-eqz v3, :cond_2

    .line 166
    .line 167
    check-cast v1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 168
    .line 169
    new-instance v3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 170
    .line 171
    invoke-direct {v3}, Lkotlinx/coroutines/flow/SharingConfig;-><init>()V

    .line 172
    .line 173
    .line 174
    iget v4, v1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->stateCount:I

    .line 175
    .line 176
    iput v4, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 177
    .line 178
    iget-object v5, v1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->defaultShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 179
    .line 180
    iput-object v5, v3, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 181
    .line 182
    iget-object v5, v1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->stateSpecs:[[I

    .line 183
    .line 184
    array-length v6, v5

    .line 185
    new-array v6, v6, [[I

    .line 186
    .line 187
    iput-object v6, v3, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 188
    .line 189
    iget-object v1, v1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->shapeAppearanceModels:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 190
    .line 191
    array-length v7, v1

    .line 192
    new-array v7, v7, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 193
    .line 194
    iput-object v7, v3, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 195
    .line 196
    invoke-static {v5, v0, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    .line 198
    .line 199
    iget-object v4, v3, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v4, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 202
    .line 203
    iget v5, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 204
    .line 205
    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    .line 207
    .line 208
    iget v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 209
    .line 210
    if-nez v0, :cond_1

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_1
    new-instance v2, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 214
    .line 215
    invoke-direct {v2, v3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;-><init>(Lkotlinx/coroutines/flow/SharingConfig;)V

    .line 216
    .line 217
    .line 218
    :goto_0
    iput-object v2, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearance:Lcom/google/android/material/shape/ShapeAppearance;

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_2
    iput-object v1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearance:Lcom/google/android/material/shape/ShapeAppearance;

    .line 222
    .line 223
    :goto_1
    iget-object v0, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringCustomBounds:Landroid/graphics/Rect;

    .line 224
    .line 225
    if-eqz v0, :cond_3

    .line 226
    .line 227
    new-instance v0, Landroid/graphics/Rect;

    .line 228
    .line 229
    iget-object v1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringCustomBounds:Landroid/graphics/Rect;

    .line 230
    .line 231
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 232
    .line 233
    .line 234
    iput-object v0, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringCustomBounds:Landroid/graphics/Rect;

    .line 235
    .line 236
    :cond_3
    iget-object p1, p1, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringStateSet:[I

    .line 237
    .line 238
    array-length v0, p1

    .line 239
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iput-object p1, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringStateSet:[I

    .line 244
    .line 245
    :cond_4
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget p0, p0, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->mChangingConfigurations:I

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/focus/FocusRingDrawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/focus/FocusRingDrawable;-><init>(Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;Landroid/content/res/Resources;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/material/focus/FocusRingDrawable;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/focus/FocusRingDrawable;-><init>(Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;Landroid/content/res/Resources;)V

    return-object v0
.end method
