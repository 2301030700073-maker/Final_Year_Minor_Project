.class public abstract Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field public static final INV_SQRT_2:F

.field public static final threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

.field public static final threadLocalPoints:Lcom/airbnb/lottie/utils/Utils$1;

.field public static final threadLocalTempPath:Lcom/airbnb/lottie/utils/Utils$1;

.field public static final threadLocalTempPath2:Lcom/airbnb/lottie/utils/Utils$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 7
    .line 8
    new-instance v0, Lcom/airbnb/lottie/utils/Utils$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/utils/Utils$1;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 15
    .line 16
    new-instance v0, Lcom/airbnb/lottie/utils/Utils$1;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/utils/Utils$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath:Lcom/airbnb/lottie/utils/Utils$1;

    .line 23
    .line 24
    new-instance v0, Lcom/airbnb/lottie/utils/Utils$1;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/utils/Utils$1;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath2:Lcom/airbnb/lottie/utils/Utils$1;

    .line 31
    .line 32
    new-instance v0, Lcom/airbnb/lottie/utils/Utils$1;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/utils/Utils$1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Lcom/airbnb/lottie/utils/Utils$1;

    .line 39
    .line 40
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 41
    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    div-double/2addr v2, v0

    .line 47
    double-to-float v0, v2

    .line 48
    sput v0, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    .line 49
    .line 50
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 9

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/PathMeasure;

    .line 10
    .line 11
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath:Lcom/airbnb/lottie/utils/Utils$1;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/graphics/Path;

    .line 18
    .line 19
    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath2:Lcom/airbnb/lottie/utils/Utils$1;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/graphics/Path;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, p0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    .line 37
    cmpl-float v5, p1, v4

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    cmpl-float v5, p2, v6

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    cmpg-float v5, v3, v4

    .line 49
    .line 50
    if-ltz v5, :cond_9

    .line 51
    .line 52
    sub-float v5, p2, p1

    .line 53
    .line 54
    sub-float/2addr v5, v4

    .line 55
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    float-to-double v4, v4

    .line 60
    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    cmpg-double v4, v4, v7

    .line 66
    .line 67
    if-gez v4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    mul-float/2addr p1, v3

    .line 71
    mul-float/2addr p2, v3

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    mul-float/2addr p3, v3

    .line 81
    add-float/2addr v4, p3

    .line 82
    add-float/2addr p1, p3

    .line 83
    cmpl-float p2, v4, v3

    .line 84
    .line 85
    if-ltz p2, :cond_2

    .line 86
    .line 87
    cmpl-float p2, p1, v3

    .line 88
    .line 89
    if-ltz p2, :cond_2

    .line 90
    .line 91
    invoke-static {v4, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    int-to-float v4, p2

    .line 96
    invoke-static {p1, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    int-to-float p1, p1

    .line 101
    :cond_2
    cmpg-float p2, v4, v6

    .line 102
    .line 103
    if-gez p2, :cond_3

    .line 104
    .line 105
    invoke-static {v4, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    int-to-float v4, p2

    .line 110
    :cond_3
    cmpg-float p2, p1, v6

    .line 111
    .line 112
    if-gez p2, :cond_4

    .line 113
    .line 114
    invoke-static {p1, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    int-to-float p1, p1

    .line 119
    :cond_4
    cmpl-float p2, v4, p1

    .line 120
    .line 121
    if-nez p2, :cond_5

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_5
    if-ltz p2, :cond_6

    .line 128
    .line 129
    sub-float/2addr v4, v3

    .line 130
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 131
    .line 132
    .line 133
    const/4 p2, 0x1

    .line 134
    invoke-virtual {v0, v4, p1, v1, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 135
    .line 136
    .line 137
    cmpl-float p3, p1, v3

    .line 138
    .line 139
    if-lez p3, :cond_7

    .line 140
    .line 141
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 142
    .line 143
    .line 144
    rem-float/2addr p1, v3

    .line 145
    invoke-virtual {v0, v6, p1, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_7
    cmpg-float p1, v4, v6

    .line 153
    .line 154
    if-gez p1, :cond_8

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 157
    .line 158
    .line 159
    add-float/2addr v4, v3

    .line 160
    invoke-virtual {v0, v4, v3, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 167
    .line 168
    .line 169
    :cond_9
    :goto_1
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void

    .line 5
    :catch_1
    move-exception p0

    .line 6
    throw p0
.end method

.method public static dpScale()F
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    return v0
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
