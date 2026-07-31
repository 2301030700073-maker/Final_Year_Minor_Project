.class public final Lcoil3/gif/MovieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/gif/MovieDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/gif/MovieDrawable$Companion;

.field public static final REPEAT_INFINITE:I = -0x1


# instance fields
.field private animatedTransformation:Lcoil3/gif/AnimatedTransformation;

.field private animatedTransformationPicture:Landroid/graphics/Picture;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Landroid/graphics/Bitmap$Config;

.field private final currentBounds:Landroid/graphics/Rect;

.field private frameTimeMillis:J

.field private hardwareDx:F

.field private hardwareDy:F

.field private hardwareScale:F

.field private isRunning:Z

.field private isSoftwareScalingEnabled:Z

.field private loopIteration:I

.field private final movie:Landroid/graphics/Movie;

.field private final paint:Landroid/graphics/Paint;

.field private pixelOpacity:Lcoil3/gif/PixelOpacity;

.field private repeatCount:I

.field private final scale:Lcoil3/size/Scale;

.field private softwareBitmap:Landroid/graphics/Bitmap;

.field private softwareCanvas:Landroid/graphics/Canvas;

.field private softwareScale:F

.field private startTimeMillis:J

.field private final tempCanvasBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/gif/MovieDrawable$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil3/gif/MovieDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/gif/MovieDrawable;->Companion:Lcoil3/gif/MovieDrawable$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Movie;)V
    .locals 6

    .line 67
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcoil3/gif/MovieDrawable;-><init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;Lcoil3/size/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;)V
    .locals 6

    .line 66
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcoil3/gif/MovieDrawable;-><init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;Lcoil3/size/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;Lcoil3/size/Scale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/gif/MovieDrawable;->config:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/gif/MovieDrawable;->scale:Lcoil3/size/Scale;

    .line 9
    .line 10
    new-instance p1, Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 p3, 0x3

    .line 13
    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->paint:Landroid/graphics/Paint;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->currentBounds:Landroid/graphics/Rect;

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->tempCanvasBounds:Landroid/graphics/Rect;

    .line 38
    .line 39
    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iput p1, p0, Lcoil3/gif/MovieDrawable;->softwareScale:F

    .line 42
    .line 43
    iput p1, p0, Lcoil3/gif/MovieDrawable;->hardwareScale:F

    .line 44
    .line 45
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcoil3/gif/MovieDrawable;->repeatCount:I

    .line 47
    .line 48
    sget-object p1, Lcoil3/gif/PixelOpacity;->UNCHANGED:Lcoil3/gif/PixelOpacity;

    .line 49
    .line 50
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->pixelOpacity:Lcoil3/gif/PixelOpacity;

    .line 51
    .line 52
    invoke-static {p2}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    const-string p0, "Bitmap config must not be hardware."

    .line 60
    .line 61
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    throw p0
.end method

.method public synthetic constructor <init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;Lcoil3/size/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 68
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 69
    sget-object p3, Lcoil3/size/Scale;->FIT:Lcoil3/size/Scale;

    .line 70
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcoil3/gif/MovieDrawable;-><init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;Lcoil3/size/Scale;)V

    return-void
.end method

.method private final drawFrame(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->softwareCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/gif/MovieDrawable;->softwareBitmap:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :try_start_0
    iget v3, p0, Lcoil3/gif/MovieDrawable;->softwareScale:F

    .line 21
    .line 22
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 26
    .line 27
    iget-object v4, p0, Lcoil3/gif/MovieDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcoil3/gif/MovieDrawable;->animatedTransformationPicture:Landroid/graphics/Picture;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :try_start_1
    iget v2, p0, Lcoil3/gif/MovieDrawable;->hardwareDx:F

    .line 51
    .line 52
    iget v3, p0, Lcoil3/gif/MovieDrawable;->hardwareDy:F

    .line 53
    .line 54
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcoil3/gif/MovieDrawable;->hardwareScale:F

    .line 58
    .line 59
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->paint:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {p1, v1, v5, v5, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_2
    :goto_2
    return-void
.end method

.method private final getBounds(Landroid/graphics/Canvas;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->tempCanvasBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method private final updateBounds(Landroid/graphics/Rect;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->currentBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->currentBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-lez v1, :cond_6

    .line 37
    .line 38
    if-gtz v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v5, p0, Lcoil3/gif/MovieDrawable;->scale:Lcoil3/size/Scale;

    .line 42
    .line 43
    sget-object v6, Lcoil3/size/Size;->ORIGINAL:Lcoil3/size/Size;

    .line 44
    .line 45
    invoke-static/range {v1 .. v6}, Lcoil3/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    iget-boolean v0, p0, Lcoil3/gif/MovieDrawable;->isSoftwareScalingEnabled:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 55
    .line 56
    cmpl-double v0, v7, v9

    .line 57
    .line 58
    if-lez v0, :cond_3

    .line 59
    .line 60
    move-wide v7, v9

    .line 61
    :cond_3
    :goto_0
    double-to-float v0, v7

    .line 62
    iput v0, p0, Lcoil3/gif/MovieDrawable;->softwareScale:F

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    mul-float/2addr v1, v0

    .line 66
    float-to-int v1, v1

    .line 67
    int-to-float v2, v2

    .line 68
    mul-float/2addr v0, v2

    .line 69
    float-to-int v2, v0

    .line 70
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->config:Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v5, p0, Lcoil3/gif/MovieDrawable;->softwareBitmap:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    .line 82
    .line 83
    :cond_4
    iput-object v0, p0, Lcoil3/gif/MovieDrawable;->softwareBitmap:Landroid/graphics/Bitmap;

    .line 84
    .line 85
    new-instance v5, Landroid/graphics/Canvas;

    .line 86
    .line 87
    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    .line 89
    .line 90
    iput-object v5, p0, Lcoil3/gif/MovieDrawable;->softwareCanvas:Landroid/graphics/Canvas;

    .line 91
    .line 92
    iget-boolean v0, p0, Lcoil3/gif/MovieDrawable;->isSoftwareScalingEnabled:Z

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    const/high16 p1, 0x3f800000    # 1.0f

    .line 97
    .line 98
    iput p1, p0, Lcoil3/gif/MovieDrawable;->hardwareScale:F

    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcoil3/gif/MovieDrawable;->hardwareDx:F

    .line 102
    .line 103
    iput p1, p0, Lcoil3/gif/MovieDrawable;->hardwareDy:F

    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    iget-object v5, p0, Lcoil3/gif/MovieDrawable;->scale:Lcoil3/size/Scale;

    .line 107
    .line 108
    invoke-static/range {v1 .. v6}, Lcoil3/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    double-to-float v0, v5

    .line 113
    iput v0, p0, Lcoil3/gif/MovieDrawable;->hardwareScale:F

    .line 114
    .line 115
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    int-to-float v5, v5

    .line 118
    int-to-float v3, v3

    .line 119
    int-to-float v1, v1

    .line 120
    mul-float/2addr v1, v0

    .line 121
    sub-float/2addr v3, v1

    .line 122
    const/high16 v1, 0x40000000    # 2.0f

    .line 123
    .line 124
    div-float/2addr v3, v1

    .line 125
    add-float/2addr v3, v5

    .line 126
    iput v3, p0, Lcoil3/gif/MovieDrawable;->hardwareDx:F

    .line 127
    .line 128
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 129
    .line 130
    int-to-float p1, p1

    .line 131
    int-to-float v3, v4

    .line 132
    int-to-float v2, v2

    .line 133
    mul-float/2addr v0, v2

    .line 134
    sub-float/2addr v3, v0

    .line 135
    div-float/2addr v3, v1

    .line 136
    add-float/2addr v3, p1

    .line 137
    iput v3, p0, Lcoil3/gif/MovieDrawable;->hardwareDy:F

    .line 138
    .line 139
    :cond_6
    :goto_1
    return-void
.end method

.method private final updateFrameTime()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v2, p0, Lcoil3/gif/MovieDrawable;->isRunning:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iput-wide v2, p0, Lcoil3/gif/MovieDrawable;->frameTimeMillis:J

    .line 21
    .line 22
    :cond_1
    iget-wide v2, p0, Lcoil3/gif/MovieDrawable;->frameTimeMillis:J

    .line 23
    .line 24
    iget-wide v4, p0, Lcoil3/gif/MovieDrawable;->startTimeMillis:J

    .line 25
    .line 26
    sub-long/2addr v2, v4

    .line 27
    long-to-int v2, v2

    .line 28
    div-int v3, v2, v0

    .line 29
    .line 30
    iput v3, p0, Lcoil3/gif/MovieDrawable;->loopIteration:I

    .line 31
    .line 32
    iget v4, p0, Lcoil3/gif/MovieDrawable;->repeatCount:I

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    if-eq v4, v5, :cond_2

    .line 36
    .line 37
    if-gt v3, v4, :cond_3

    .line 38
    .line 39
    :cond_2
    const/4 v1, 0x1

    .line 40
    :cond_3
    if-eqz v1, :cond_4

    .line 41
    .line 42
    mul-int/2addr v3, v0

    .line 43
    sub-int v0, v2, v3

    .line 44
    .line 45
    :cond_4
    move v6, v1

    .line 46
    move v1, v0

    .line 47
    move v0, v6

    .line 48
    :goto_0
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 51
    .line 52
    .line 53
    return v0
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcoil3/gif/MovieDrawable;->updateFrameTime()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcoil3/gif/MovieDrawable;->isSoftwareScalingEnabled:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcoil3/gif/MovieDrawable;->getBounds(Landroid/graphics/Canvas;)Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1}, Lcoil3/gif/MovieDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :try_start_0
    iget v2, p0, Lcoil3/gif/MovieDrawable;->softwareScale:F

    .line 21
    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    .line 24
    div-float/2addr v3, v2

    .line 25
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcoil3/gif/MovieDrawable;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {p0, v1}, Lcoil3/gif/MovieDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcoil3/gif/MovieDrawable;->drawFrame(Landroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-boolean p1, p0, Lcoil3/gif/MovieDrawable;->isRunning:Z

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcoil3/gif/MovieDrawable;->stop()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final getAnimatedTransformation()Lcoil3/gif/AnimatedTransformation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->animatedTransformation:Lcoil3/gif/AnimatedTransformation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->config:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Movie;->height()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Movie;->width()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getOpacity()I
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->paint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xff

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->pixelOpacity:Lcoil3/gif/PixelOpacity;

    .line 12
    .line 13
    sget-object v1, Lcoil3/gif/PixelOpacity;->OPAQUE:Lcoil3/gif/PixelOpacity;

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcoil3/gif/PixelOpacity;->UNCHANGED:Lcoil3/gif/PixelOpacity;

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/graphics/Movie;->isOpaque()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p0, -0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, -0x3

    .line 32
    return p0
.end method

.method public final getRepeatCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/gif/MovieDrawable;->repeatCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getScale()Lcoil3/size/Scale;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->scale:Lcoil3/size/Scale;

    .line 2
    .line 3
    return-object p0
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/gif/MovieDrawable;->isRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x100

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "Invalid alpha: "

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setAnimatedTransformation(Lcoil3/gif/AnimatedTransformation;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->animatedTransformation:Lcoil3/gif/AnimatedTransformation;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/Picture;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Lcoil3/gif/MovieDrawable;->movie:Landroid/graphics/Movie;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {p1, v1}, Lcoil3/gif/AnimatedTransformation;->transform(Landroid/graphics/Canvas;)Lcoil3/gif/PixelOpacity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->pixelOpacity:Lcoil3/gif/PixelOpacity;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcoil3/gif/MovieDrawable;->animatedTransformationPicture:Landroid/graphics/Picture;

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcoil3/gif/MovieDrawable;->isSoftwareScalingEnabled:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->animatedTransformationPicture:Landroid/graphics/Picture;

    .line 59
    .line 60
    sget-object p1, Lcoil3/gif/PixelOpacity;->UNCHANGED:Lcoil3/gif/PixelOpacity;

    .line 61
    .line 62
    iput-object p1, p0, Lcoil3/gif/MovieDrawable;->pixelOpacity:Lcoil3/gif/PixelOpacity;

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcoil3/gif/MovieDrawable;->isSoftwareScalingEnabled:Z

    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->paint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRepeatCount(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcoil3/gif/MovieDrawable;->repeatCount:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string p0, "Invalid repeatCount: "

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcoil3/gif/MovieDrawable;->isRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcoil3/gif/MovieDrawable;->isRunning:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcoil3/gif/MovieDrawable;->loopIteration:I

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, p0, Lcoil3/gif/MovieDrawable;->startTimeMillis:J

    .line 17
    .line 18
    iget-object v1, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcoil3/gif/MovieDrawable;->isRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcoil3/gif/MovieDrawable;->isRunning:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/MovieDrawable;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
