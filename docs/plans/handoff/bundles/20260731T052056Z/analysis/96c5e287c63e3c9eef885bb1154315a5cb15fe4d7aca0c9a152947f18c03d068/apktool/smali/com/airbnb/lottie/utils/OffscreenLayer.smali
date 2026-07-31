.class public final Lcom/airbnb/lottie/utils/OffscreenLayer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapCanvas:Landroid/graphics/Canvas;

.field public bitmapSrcRect:Landroid/graphics/Rect;

.field public clearPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public composePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

.field public intRectIncludingShadow:Landroid/graphics/Rect;

.field public lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;

.field public lastShadowBlurRadius:F

.field public op:Lokio/PriorityQueue;

.field public parentCanvas:Landroid/graphics/Canvas;

.field public parentCanvasMatrix:Landroid/graphics/Matrix;

.field public preExistingTransform:[F

.field public rectIncludingShadow:Landroid/graphics/RectF;

.field public renderNode:Landroid/graphics/RenderNode;

.field public scaledBounds:Landroid/graphics/RectF;

.field public scaledRectIncludingShadow:Landroid/graphics/RectF;

.field public shadowBitmap:Landroid/graphics/Bitmap;

.field public shadowBitmapCanvas:Landroid/graphics/Canvas;

.field public shadowBitmapSrcRect:Landroid/graphics/Rect;

.field public shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

.field public shadowMaskBitmap:Landroid/graphics/Bitmap;

.field public shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

.field public shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public shadowRenderNode:Landroid/graphics/RenderNode;

.field public targetRect:Landroid/graphics/RectF;

.field public tmpRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastShadowBlurRadius:F

    .line 6
    .line 7
    return-void
.end method

.method public static allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    mul-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    float-to-double v4, p0

    .line 22
    mul-double/2addr v4, v2

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    double-to-int p0, v1

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {v0, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static needNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-gez v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    cmpl-float v0, v0, v1

    .line 27
    .line 28
    if-ltz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    const/high16 v2, 0x3f400000    # 0.75f

    .line 41
    .line 42
    mul-float/2addr v1, v2

    .line 43
    cmpg-float v0, v0, v1

    .line 44
    .line 45
    if-ltz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    int-to-float p0, p0

    .line 56
    mul-float/2addr p0, v2

    .line 57
    cmpg-float p0, p1, p0

    .line 58
    .line 59
    if-gez p0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 65
    return p0
.end method


# virtual methods
.method public final calculateRectIncludingShadow(Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/DropShadow;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/RectF;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 31
    .line 32
    iget v2, p2, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 33
    .line 34
    add-float/2addr v1, v2

    .line 35
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 36
    .line 37
    iget v3, p2, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 38
    .line 39
    add-float/2addr v2, v3

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget p2, p2, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 46
    .line 47
    neg-float v1, p2

    .line 48
    neg-float p2, p2

    .line 49
    invoke-virtual {v0, v1, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 65
    .line 66
    return-object p0
.end method

.method public final finish()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 4
    .line 5
    if-eqz v1, :cond_20

    .line 6
    .line 7
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lokio/PriorityQueue;

    .line 8
    .line 9
    if-eqz v1, :cond_20

    .line 10
    .line 11
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 12
    .line 13
    if-eqz v1, :cond_20

    .line 14
    .line 15
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 16
    .line 17
    if-eqz v1, :cond_20

    .line 18
    .line 19
    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$1;->$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy:[I

    .line 20
    .line 21
    iget-object v2, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    aget v1, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v3, :cond_1f

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq v1, v4, :cond_1e

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    const/high16 v5, 0x40000000    # 2.0f

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/high16 v7, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/4 v8, 0x4

    .line 43
    const/4 v9, 0x0

    .line 44
    if-eq v1, v4, :cond_a

    .line 45
    .line 46
    if-eq v1, v8, :cond_0

    .line 47
    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 51
    .line 52
    if-eqz v1, :cond_9

    .line 53
    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v3, 0x1d

    .line 57
    .line 58
    if-lt v1, v3, :cond_8

    .line 59
    .line 60
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 63
    .line 64
    .line 65
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 66
    .line 67
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 68
    .line 69
    aget v10, v4, v9

    .line 70
    .line 71
    div-float v10, v7, v10

    .line 72
    .line 73
    aget v4, v4, v8

    .line 74
    .line 75
    div-float v4, v7, v4

    .line 76
    .line 77
    invoke-virtual {v3, v10, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lokio/PriorityQueue;

    .line 86
    .line 87
    invoke-virtual {v3}, Lokio/PriorityQueue;->hasShadow()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_7

    .line 92
    .line 93
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 94
    .line 95
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lokio/PriorityQueue;

    .line 96
    .line 97
    iget-object v4, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Lcom/airbnb/lottie/utils/DropShadow;

    .line 100
    .line 101
    iget-object v10, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 102
    .line 103
    if-eqz v10, :cond_6

    .line 104
    .line 105
    iget-object v10, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 106
    .line 107
    if-eqz v10, :cond_6

    .line 108
    .line 109
    const/16 v10, 0x1f

    .line 110
    .line 111
    if-lt v1, v10, :cond_5

    .line 112
    .line 113
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 114
    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    aget v10, v1, v9

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    move v10, v7

    .line 121
    :goto_0
    if-eqz v1, :cond_2

    .line 122
    .line 123
    aget v7, v1, v8

    .line 124
    .line 125
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 126
    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    iget v8, v4, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 130
    .line 131
    iget v11, v1, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 132
    .line 133
    cmpl-float v8, v8, v11

    .line 134
    .line 135
    if-nez v8, :cond_3

    .line 136
    .line 137
    iget v8, v4, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 138
    .line 139
    iget v11, v1, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 140
    .line 141
    cmpl-float v8, v8, v11

    .line 142
    .line 143
    if-nez v8, :cond_3

    .line 144
    .line 145
    iget v8, v4, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 146
    .line 147
    iget v11, v1, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 148
    .line 149
    cmpl-float v8, v8, v11

    .line 150
    .line 151
    if-nez v8, :cond_3

    .line 152
    .line 153
    iget v8, v4, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 154
    .line 155
    iget v1, v1, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 156
    .line 157
    if-ne v8, v1, :cond_3

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 161
    .line 162
    iget v8, v4, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 163
    .line 164
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 165
    .line 166
    invoke-direct {v1, v8, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget v8, v4, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 174
    .line 175
    cmpl-float v6, v8, v6

    .line 176
    .line 177
    if-lez v6, :cond_4

    .line 178
    .line 179
    add-float v6, v10, v7

    .line 180
    .line 181
    mul-float/2addr v6, v8

    .line 182
    div-float/2addr v6, v5

    .line 183
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 184
    .line 185
    invoke-static {v6, v6, v1, v5}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :cond_4
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 190
    .line 191
    invoke-virtual {v5, v1}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    .line 192
    .line 193
    .line 194
    iput-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 195
    .line 196
    :goto_1
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 197
    .line 198
    invoke-virtual {v0, v1, v4}, Lcom/airbnb/lottie/utils/OffscreenLayer;->calculateRectIncludingShadow(Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/DropShadow;)Landroid/graphics/RectF;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v5, Landroid/graphics/RectF;

    .line 203
    .line 204
    iget v6, v1, Landroid/graphics/RectF;->left:F

    .line 205
    .line 206
    mul-float/2addr v6, v10

    .line 207
    iget v8, v1, Landroid/graphics/RectF;->top:F

    .line 208
    .line 209
    mul-float/2addr v8, v7

    .line 210
    iget v11, v1, Landroid/graphics/RectF;->right:F

    .line 211
    .line 212
    mul-float/2addr v11, v10

    .line 213
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 214
    .line 215
    mul-float/2addr v1, v7

    .line 216
    invoke-direct {v5, v6, v8, v11, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 220
    .line 221
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    float-to-int v6, v6

    .line 226
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    float-to-int v8, v8

    .line 231
    invoke-virtual {v1, v9, v9, v6, v8}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 235
    .line 236
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    float-to-int v6, v6

    .line 241
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    float-to-int v8, v8

    .line 246
    invoke-virtual {v1, v6, v8}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 251
    .line 252
    neg-float v6, v6

    .line 253
    iget v8, v4, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 254
    .line 255
    mul-float/2addr v8, v10

    .line 256
    add-float/2addr v8, v6

    .line 257
    iget v6, v5, Landroid/graphics/RectF;->top:F

    .line 258
    .line 259
    neg-float v6, v6

    .line 260
    iget v4, v4, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 261
    .line 262
    mul-float/2addr v4, v7

    .line 263
    add-float/2addr v4, v6

    .line 264
    invoke-virtual {v1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    .line 266
    .line 267
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 268
    .line 269
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 278
    .line 279
    .line 280
    iget v1, v5, Landroid/graphics/RectF;->left:F

    .line 281
    .line 282
    iget v4, v5, Landroid/graphics/RectF;->top:F

    .line 283
    .line 284
    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 288
    .line 289
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_5
    const-string v0, "RenderEffect is not supported on API level <31"

    .line 297
    .line 298
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :cond_6
    const-string v0, "Cannot render to render node outside a start()/finish() block"

    .line 303
    .line 304
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 309
    .line 310
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 311
    .line 312
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 316
    .line 317
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_8

    .line 321
    .line 322
    :cond_8
    const-string v0, "RenderNode not supported but we chose it as render strategy"

    .line 323
    .line 324
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_9
    const-string v0, "RenderNode is not ready; should\'ve been initialized at start() time"

    .line 329
    .line 330
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_a
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 335
    .line 336
    if-eqz v1, :cond_1d

    .line 337
    .line 338
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lokio/PriorityQueue;

    .line 339
    .line 340
    invoke-virtual {v1}, Lokio/PriorityQueue;->hasShadow()Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_1b

    .line 345
    .line 346
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 347
    .line 348
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lokio/PriorityQueue;

    .line 349
    .line 350
    iget-object v4, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v4, Lcom/airbnb/lottie/utils/DropShadow;

    .line 353
    .line 354
    iget-object v10, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 355
    .line 356
    if-eqz v10, :cond_1a

    .line 357
    .line 358
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 359
    .line 360
    if-eqz v11, :cond_1a

    .line 361
    .line 362
    invoke-virtual {v0, v10, v4}, Lcom/airbnb/lottie/utils/OffscreenLayer;->calculateRectIncludingShadow(Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/DropShadow;)Landroid/graphics/RectF;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->intRectIncludingShadow:Landroid/graphics/Rect;

    .line 367
    .line 368
    if-nez v11, :cond_b

    .line 369
    .line 370
    new-instance v11, Landroid/graphics/Rect;

    .line 371
    .line 372
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 373
    .line 374
    .line 375
    iput-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->intRectIncludingShadow:Landroid/graphics/Rect;

    .line 376
    .line 377
    :cond_b
    iget v12, v10, Landroid/graphics/RectF;->left:F

    .line 378
    .line 379
    float-to-double v12, v12

    .line 380
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 381
    .line 382
    .line 383
    move-result-wide v12

    .line 384
    double-to-int v12, v12

    .line 385
    iget v13, v10, Landroid/graphics/RectF;->top:F

    .line 386
    .line 387
    float-to-double v13, v13

    .line 388
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 389
    .line 390
    .line 391
    move-result-wide v13

    .line 392
    double-to-int v13, v13

    .line 393
    iget v14, v10, Landroid/graphics/RectF;->right:F

    .line 394
    .line 395
    float-to-double v14, v14

    .line 396
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 397
    .line 398
    .line 399
    move-result-wide v14

    .line 400
    double-to-int v14, v14

    .line 401
    iget v15, v10, Landroid/graphics/RectF;->bottom:F

    .line 402
    .line 403
    move/from16 v17, v5

    .line 404
    .line 405
    move/from16 v16, v6

    .line 406
    .line 407
    float-to-double v5, v15

    .line 408
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 409
    .line 410
    .line 411
    move-result-wide v5

    .line 412
    double-to-int v5, v5

    .line 413
    invoke-virtual {v11, v12, v13, v14, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 414
    .line 415
    .line 416
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 417
    .line 418
    if-eqz v5, :cond_c

    .line 419
    .line 420
    aget v6, v5, v9

    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_c
    move v6, v7

    .line 424
    :goto_3
    if-eqz v5, :cond_d

    .line 425
    .line 426
    aget v7, v5, v8

    .line 427
    .line 428
    :cond_d
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 429
    .line 430
    if-nez v5, :cond_e

    .line 431
    .line 432
    new-instance v5, Landroid/graphics/RectF;

    .line 433
    .line 434
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 435
    .line 436
    .line 437
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 438
    .line 439
    :cond_e
    iget v11, v10, Landroid/graphics/RectF;->left:F

    .line 440
    .line 441
    mul-float/2addr v11, v6

    .line 442
    iget v12, v10, Landroid/graphics/RectF;->top:F

    .line 443
    .line 444
    mul-float/2addr v12, v7

    .line 445
    iget v13, v10, Landroid/graphics/RectF;->right:F

    .line 446
    .line 447
    mul-float/2addr v13, v6

    .line 448
    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    .line 449
    .line 450
    mul-float/2addr v14, v7

    .line 451
    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 452
    .line 453
    .line 454
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 455
    .line 456
    if-nez v5, :cond_f

    .line 457
    .line 458
    new-instance v5, Landroid/graphics/Rect;

    .line 459
    .line 460
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .line 462
    .line 463
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 464
    .line 465
    :cond_f
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 466
    .line 467
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    .line 468
    .line 469
    .line 470
    move-result v11

    .line 471
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 472
    .line 473
    .line 474
    move-result v11

    .line 475
    iget-object v12, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 476
    .line 477
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 478
    .line 479
    .line 480
    move-result v12

    .line 481
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 482
    .line 483
    .line 484
    move-result v12

    .line 485
    invoke-virtual {v5, v9, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 486
    .line 487
    .line 488
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 489
    .line 490
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 491
    .line 492
    invoke-static {v5, v11}, Lcom/airbnb/lottie/utils/OffscreenLayer;->needNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    if-eqz v5, :cond_12

    .line 497
    .line 498
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 499
    .line 500
    if-eqz v5, :cond_10

    .line 501
    .line 502
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 503
    .line 504
    .line 505
    :cond_10
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 506
    .line 507
    if-eqz v5, :cond_11

    .line 508
    .line 509
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 510
    .line 511
    .line 512
    :cond_11
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 513
    .line 514
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 515
    .line 516
    invoke-static {v5, v11}, Lcom/airbnb/lottie/utils/OffscreenLayer;->allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 521
    .line 522
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 523
    .line 524
    sget-object v11, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 525
    .line 526
    invoke-static {v5, v11}, Lcom/airbnb/lottie/utils/OffscreenLayer;->allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 531
    .line 532
    new-instance v5, Landroid/graphics/Canvas;

    .line 533
    .line 534
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 535
    .line 536
    invoke-direct {v5, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 537
    .line 538
    .line 539
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapCanvas:Landroid/graphics/Canvas;

    .line 540
    .line 541
    new-instance v5, Landroid/graphics/Canvas;

    .line 542
    .line 543
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 544
    .line 545
    invoke-direct {v5, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 546
    .line 547
    .line 548
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 549
    .line 550
    goto :goto_4

    .line 551
    :cond_12
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapCanvas:Landroid/graphics/Canvas;

    .line 552
    .line 553
    if-eqz v5, :cond_19

    .line 554
    .line 555
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 556
    .line 557
    if-eqz v11, :cond_19

    .line 558
    .line 559
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 560
    .line 561
    if-eqz v11, :cond_19

    .line 562
    .line 563
    iget-object v12, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 564
    .line 565
    invoke-virtual {v5, v12, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 566
    .line 567
    .line 568
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 569
    .line 570
    iget-object v11, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 571
    .line 572
    iget-object v12, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 573
    .line 574
    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 575
    .line 576
    .line 577
    :goto_4
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 578
    .line 579
    if-eqz v5, :cond_18

    .line 580
    .line 581
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 582
    .line 583
    if-nez v5, :cond_13

    .line 584
    .line 585
    new-instance v5, Lcom/airbnb/lottie/animation/LPaint;

    .line 586
    .line 587
    invoke-direct {v5, v3, v9}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    .line 588
    .line 589
    .line 590
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 591
    .line 592
    :cond_13
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 593
    .line 594
    iget v11, v5, Landroid/graphics/RectF;->left:F

    .line 595
    .line 596
    iget v12, v10, Landroid/graphics/RectF;->left:F

    .line 597
    .line 598
    sub-float/2addr v11, v12

    .line 599
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 600
    .line 601
    iget v10, v10, Landroid/graphics/RectF;->top:F

    .line 602
    .line 603
    sub-float/2addr v5, v10

    .line 604
    iget-object v10, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 605
    .line 606
    iget-object v12, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 607
    .line 608
    mul-float/2addr v11, v6

    .line 609
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 610
    .line 611
    .line 612
    move-result v11

    .line 613
    int-to-float v11, v11

    .line 614
    mul-float/2addr v5, v7

    .line 615
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 616
    .line 617
    .line 618
    move-result v5

    .line 619
    int-to-float v5, v5

    .line 620
    invoke-virtual {v10, v12, v11, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 621
    .line 622
    .line 623
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 624
    .line 625
    if-eqz v5, :cond_14

    .line 626
    .line 627
    iget v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastShadowBlurRadius:F

    .line 628
    .line 629
    iget v10, v4, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 630
    .line 631
    cmpl-float v5, v5, v10

    .line 632
    .line 633
    if-eqz v5, :cond_16

    .line 634
    .line 635
    :cond_14
    iget v5, v4, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 636
    .line 637
    add-float v10, v6, v7

    .line 638
    .line 639
    mul-float/2addr v10, v5

    .line 640
    div-float v10, v10, v17

    .line 641
    .line 642
    cmpl-float v5, v10, v16

    .line 643
    .line 644
    if-lez v5, :cond_15

    .line 645
    .line 646
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    .line 647
    .line 648
    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 649
    .line 650
    invoke-direct {v5, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 651
    .line 652
    .line 653
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 654
    .line 655
    goto :goto_5

    .line 656
    :cond_15
    iput-object v2, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 657
    .line 658
    :goto_5
    iget v5, v4, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 659
    .line 660
    iput v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastShadowBlurRadius:F

    .line 661
    .line 662
    :cond_16
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 663
    .line 664
    iget v10, v4, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 665
    .line 666
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 667
    .line 668
    .line 669
    iget v5, v4, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    .line 670
    .line 671
    cmpl-float v5, v5, v16

    .line 672
    .line 673
    iget-object v10, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 674
    .line 675
    if-lez v5, :cond_17

    .line 676
    .line 677
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 678
    .line 679
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 680
    .line 681
    .line 682
    goto :goto_6

    .line 683
    :cond_17
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 684
    .line 685
    .line 686
    :goto_6
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 687
    .line 688
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 689
    .line 690
    .line 691
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapCanvas:Landroid/graphics/Canvas;

    .line 692
    .line 693
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 694
    .line 695
    iget v10, v4, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    .line 696
    .line 697
    mul-float/2addr v10, v6

    .line 698
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 699
    .line 700
    .line 701
    move-result v6

    .line 702
    int-to-float v6, v6

    .line 703
    iget v4, v4, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    .line 704
    .line 705
    mul-float/2addr v4, v7

    .line 706
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 707
    .line 708
    .line 709
    move-result v4

    .line 710
    int-to-float v4, v4

    .line 711
    iget-object v7, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 712
    .line 713
    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 714
    .line 715
    .line 716
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 717
    .line 718
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 719
    .line 720
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->intRectIncludingShadow:Landroid/graphics/Rect;

    .line 721
    .line 722
    iget-object v6, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 723
    .line 724
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 725
    .line 726
    .line 727
    goto :goto_7

    .line 728
    :cond_18
    const-string v0, "Expected to have allocated a shadow mask bitmap"

    .line 729
    .line 730
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    return-void

    .line 734
    :cond_19
    const-string v0, "If needNewBitmap() returns true, we should have a canvas and bitmap ready"

    .line 735
    .line 736
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    return-void

    .line 740
    :cond_1a
    const-string v0, "Cannot render to bitmap outside a start()/finish() block"

    .line 741
    .line 742
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :cond_1b
    :goto_7
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 747
    .line 748
    if-nez v1, :cond_1c

    .line 749
    .line 750
    new-instance v1, Landroid/graphics/Rect;

    .line 751
    .line 752
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 753
    .line 754
    .line 755
    iput-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 756
    .line 757
    :cond_1c
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 758
    .line 759
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 764
    .line 765
    aget v4, v4, v9

    .line 766
    .line 767
    mul-float/2addr v3, v4

    .line 768
    float-to-int v3, v3

    .line 769
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 770
    .line 771
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 776
    .line 777
    aget v5, v5, v8

    .line 778
    .line 779
    mul-float/2addr v4, v5

    .line 780
    float-to-int v4, v4

    .line 781
    invoke-virtual {v1, v9, v9, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 782
    .line 783
    .line 784
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 785
    .line 786
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 787
    .line 788
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 789
    .line 790
    iget-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 791
    .line 792
    iget-object v6, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 793
    .line 794
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 795
    .line 796
    .line 797
    goto :goto_8

    .line 798
    :cond_1d
    const-string v0, "Bitmap is not ready; should\'ve been initialized at start() time"

    .line 799
    .line 800
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    return-void

    .line 804
    :cond_1e
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 805
    .line 806
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 807
    .line 808
    .line 809
    goto :goto_8

    .line 810
    :cond_1f
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 811
    .line 812
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 813
    .line 814
    .line 815
    :goto_8
    iput-object v2, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 816
    .line 817
    return-void

    .line 818
    :cond_20
    const-string v0, "OffscreenBitmap: finish() call without matching start()"

    .line 819
    .line 820
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    return-void
.end method

.method public final start(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lokio/PriorityQueue;)Landroid/graphics/Canvas;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_18

    .line 13
    .line 14
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const/16 v4, 0x9

    .line 19
    .line 20
    new-array v4, v4, [F

    .line 21
    .line 22
    iput-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 23
    .line 24
    :cond_0
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvasMatrix:Landroid/graphics/Matrix;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    new-instance v4, Landroid/graphics/Matrix;

    .line 29
    .line 30
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvasMatrix:Landroid/graphics/Matrix;

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvasMatrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    iget-object v6, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 43
    .line 44
    .line 45
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    aget v6, v4, v6

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    aget v4, v4, v7

    .line 52
    .line 53
    iget-object v8, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 54
    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    new-instance v8, Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v8, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 63
    .line 64
    :cond_2
    iget v9, v2, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    mul-float/2addr v9, v6

    .line 67
    iget v10, v2, Landroid/graphics/RectF;->top:F

    .line 68
    .line 69
    mul-float/2addr v10, v4

    .line 70
    iget v11, v2, Landroid/graphics/RectF;->right:F

    .line 71
    .line 72
    mul-float/2addr v11, v6

    .line 73
    iget v12, v2, Landroid/graphics/RectF;->bottom:F

    .line 74
    .line 75
    mul-float/2addr v12, v4

    .line 76
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    .line 78
    .line 79
    iput-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 80
    .line 81
    iput-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lokio/PriorityQueue;

    .line 82
    .line 83
    iget v8, v3, Lokio/PriorityQueue;->size:I

    .line 84
    .line 85
    const/16 v9, 0xff

    .line 86
    .line 87
    const/16 v10, 0x1d

    .line 88
    .line 89
    if-ge v8, v9, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v3}, Lokio/PriorityQueue;->hasShadow()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_4

    .line 97
    .line 98
    sget-object v8, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->DIRECT:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    :goto_0
    invoke-virtual {v3}, Lokio/PriorityQueue;->hasShadow()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_5

    .line 106
    .line 107
    sget-object v8, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->SAVE_LAYER:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    if-lt v8, v10, :cond_8

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-nez v9, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    const/16 v9, 0x1f

    .line 122
    .line 123
    if-gt v8, v9, :cond_7

    .line 124
    .line 125
    sget-object v8, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    sget-object v8, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->RENDER_NODE:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    :goto_1
    sget-object v8, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 132
    .line 133
    :goto_2
    iput-object v8, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 134
    .line 135
    iget-object v8, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 136
    .line 137
    if-nez v8, :cond_9

    .line 138
    .line 139
    new-instance v8, Landroid/graphics/RectF;

    .line 140
    .line 141
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v8, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 145
    .line 146
    :cond_9
    iget v9, v2, Landroid/graphics/RectF;->left:F

    .line 147
    .line 148
    float-to-int v9, v9

    .line 149
    int-to-float v9, v9

    .line 150
    iget v11, v2, Landroid/graphics/RectF;->top:F

    .line 151
    .line 152
    float-to-int v11, v11

    .line 153
    int-to-float v11, v11

    .line 154
    iget v12, v2, Landroid/graphics/RectF;->right:F

    .line 155
    .line 156
    float-to-int v12, v12

    .line 157
    int-to-float v12, v12

    .line 158
    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    .line 159
    .line 160
    float-to-int v13, v13

    .line 161
    int-to-float v13, v13

    .line 162
    invoke-virtual {v8, v9, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 163
    .line 164
    .line 165
    iget-object v8, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 166
    .line 167
    if-nez v8, :cond_a

    .line 168
    .line 169
    new-instance v8, Lcom/airbnb/lottie/animation/LPaint;

    .line 170
    .line 171
    invoke-direct {v8}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v8, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 175
    .line 176
    :cond_a
    invoke-virtual {v8}, Landroid/graphics/Paint;->reset()V

    .line 177
    .line 178
    .line 179
    sget-object v8, Lcom/airbnb/lottie/utils/OffscreenLayer$1;->$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy:[I

    .line 180
    .line 181
    iget-object v9, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 182
    .line 183
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    aget v8, v8, v9

    .line 188
    .line 189
    const/4 v9, 0x1

    .line 190
    if-eq v8, v9, :cond_17

    .line 191
    .line 192
    const/4 v11, 0x2

    .line 193
    if-eq v8, v11, :cond_16

    .line 194
    .line 195
    const/4 v1, 0x3

    .line 196
    sget-object v11, Lcom/airbnb/lottie/utils/OffscreenLayer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 197
    .line 198
    if-eq v8, v1, :cond_11

    .line 199
    .line 200
    if-ne v8, v7, :cond_10

    .line 201
    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    if-lt v1, v10, :cond_f

    .line 205
    .line 206
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 207
    .line 208
    if-nez v1, :cond_b

    .line 209
    .line 210
    new-instance v1, Landroid/graphics/RenderNode;

    .line 211
    .line 212
    const-string v7, "OffscreenLayer.main"

    .line 213
    .line 214
    invoke-direct {v1, v7}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iput-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 218
    .line 219
    :cond_b
    invoke-virtual {v3}, Lokio/PriorityQueue;->hasShadow()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_c

    .line 224
    .line 225
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 226
    .line 227
    if-nez v1, :cond_c

    .line 228
    .line 229
    new-instance v1, Landroid/graphics/RenderNode;

    .line 230
    .line 231
    const-string v7, "OffscreenLayer.shadow"

    .line 232
    .line 233
    invoke-direct {v1, v7}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iput-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 237
    .line 238
    iput-object v5, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 239
    .line 240
    :cond_c
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 241
    .line 242
    iget v7, v3, Lokio/PriorityQueue;->size:I

    .line 243
    .line 244
    int-to-float v7, v7

    .line 245
    const/high16 v8, 0x437f0000    # 255.0f

    .line 246
    .line 247
    div-float/2addr v7, v8

    .line 248
    invoke-virtual {v1, v7}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Lokio/PriorityQueue;->hasShadow()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_e

    .line 256
    .line 257
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 258
    .line 259
    if-eqz v1, :cond_d

    .line 260
    .line 261
    iget v3, v3, Lokio/PriorityQueue;->size:I

    .line 262
    .line 263
    int-to-float v3, v3

    .line 264
    div-float/2addr v3, v8

    .line 265
    invoke-virtual {v1, v3}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_d
    const-string v0, "Must initialize shadowRenderNode when we have shadow"

    .line 270
    .line 271
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-object v5

    .line 275
    :cond_e
    :goto_3
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 276
    .line 277
    invoke-virtual {v1, v9}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 281
    .line 282
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 283
    .line 284
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 285
    .line 286
    float-to-int v5, v5

    .line 287
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 288
    .line 289
    float-to-int v7, v7

    .line 290
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 291
    .line 292
    float-to-int v8, v8

    .line 293
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 294
    .line 295
    float-to-int v3, v3

    .line 296
    invoke-virtual {v1, v5, v7, v8, v3}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 300
    .line 301
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 302
    .line 303
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    float-to-int v3, v3

    .line 308
    iget-object v0, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    float-to-int v0, v0

    .line 315
    invoke-virtual {v1, v3, v0}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v6, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 323
    .line 324
    .line 325
    iget v1, v2, Landroid/graphics/RectF;->left:F

    .line 326
    .line 327
    neg-float v1, v1

    .line 328
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 329
    .line 330
    neg-float v2, v2

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 332
    .line 333
    .line 334
    check-cast v0, Landroid/graphics/Canvas;

    .line 335
    .line 336
    return-object v0

    .line 337
    :cond_f
    const-string v0, "RenderNode not supported but we chose it as render strategy"

    .line 338
    .line 339
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-object v5

    .line 343
    :cond_10
    const-string v0, "Invalid render strategy for OffscreenLayer"

    .line 344
    .line 345
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-object v5

    .line 349
    :cond_11
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 350
    .line 351
    if-nez v1, :cond_12

    .line 352
    .line 353
    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    .line 354
    .line 355
    invoke-direct {v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 356
    .line 357
    .line 358
    iput-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 359
    .line 360
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    .line 361
    .line 362
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 363
    .line 364
    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 368
    .line 369
    .line 370
    :cond_12
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 371
    .line 372
    iget-object v7, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 373
    .line 374
    invoke-static {v1, v7}, Lcom/airbnb/lottie/utils/OffscreenLayer;->needNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_14

    .line 379
    .line 380
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 381
    .line 382
    if-eqz v1, :cond_13

    .line 383
    .line 384
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    .line 386
    .line 387
    :cond_13
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 388
    .line 389
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 390
    .line 391
    invoke-static {v1, v7}, Lcom/airbnb/lottie/utils/OffscreenLayer;->allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iput-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 396
    .line 397
    new-instance v1, Landroid/graphics/Canvas;

    .line 398
    .line 399
    iget-object v7, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 400
    .line 401
    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 402
    .line 403
    .line 404
    iput-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_14
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 408
    .line 409
    if-eqz v1, :cond_15

    .line 410
    .line 411
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 412
    .line 413
    .line 414
    iget-object v12, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 415
    .line 416
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 417
    .line 418
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    const/high16 v7, 0x3f800000    # 1.0f

    .line 423
    .line 424
    add-float v15, v1, v7

    .line 425
    .line 426
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 427
    .line 428
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    add-float v16, v1, v7

    .line 433
    .line 434
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 435
    .line 436
    const/high16 v13, -0x40800000    # -1.0f

    .line 437
    .line 438
    const/high16 v14, -0x40800000    # -1.0f

    .line 439
    .line 440
    move-object/from16 v17, v1

    .line 441
    .line 442
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 443
    .line 444
    .line 445
    :goto_4
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 446
    .line 447
    invoke-static {v1, v5}, Lkotlin/ExceptionsKt;->setBlendMode(Lcom/airbnb/lottie/animation/LPaint;Landroidx/core/graphics/BlendModeCompat;)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 451
    .line 452
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 453
    .line 454
    .line 455
    iget-object v1, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 456
    .line 457
    iget v3, v3, Lokio/PriorityQueue;->size:I

    .line 458
    .line 459
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 460
    .line 461
    .line 462
    iget-object v0, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 463
    .line 464
    invoke-virtual {v0, v6, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 465
    .line 466
    .line 467
    iget v1, v2, Landroid/graphics/RectF;->left:F

    .line 468
    .line 469
    neg-float v1, v1

    .line 470
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 471
    .line 472
    neg-float v2, v2

    .line 473
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    .line 475
    .line 476
    return-object v0

    .line 477
    :cond_15
    const-string v0, "If needNewBitmap() returns true, we should have a canvas ready"

    .line 478
    .line 479
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    return-object v5

    .line 483
    :cond_16
    iget-object v4, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 484
    .line 485
    iget v3, v3, Lokio/PriorityQueue;->size:I

    .line 486
    .line 487
    invoke-virtual {v4, v3}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 488
    .line 489
    .line 490
    iget-object v3, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 491
    .line 492
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 493
    .line 494
    .line 495
    iget-object v0, v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 496
    .line 497
    invoke-static {v1, v2, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 498
    .line 499
    .line 500
    return-object v1

    .line 501
    :cond_17
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 502
    .line 503
    .line 504
    return-object v1

    .line 505
    :cond_18
    const-string v0, "Cannot nest start() calls on a single OffscreenBitmap - call finish() first"

    .line 506
    .line 507
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    return-object v5
.end method
