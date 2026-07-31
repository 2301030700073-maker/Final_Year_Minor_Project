.class public final Lorg/schabi/newpipe/views/player/CircleClipTapView;
.super Landroid/view/View;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public arcSize:F

.field public final backgroundPaint:Landroid/graphics/Paint;

.field public heightPx:I

.field public isLeft:Z

.field public final shapePath:Landroid/graphics/Path;

.field public widthPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->backgroundPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    .line 20
    .line 21
    const/high16 v0, 0x42a00000    # 80.0f

    .line 22
    .line 23
    iput v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    .line 37
    .line 38
    const/high16 v0, 0x30000000

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 52
    .line 53
    iput p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    .line 54
    .line 55
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .line 57
    iput p1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    const-string p0, "Context is null."

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    throw p0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->backgroundPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updatePathShape()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    .line 6
    mul-float/2addr v0, v1

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->shapePath:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 10
    .line 11
    .line 12
    iget-boolean v2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move v4, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v4, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->widthPx:I

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    :goto_0
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v2, -0x1

    .line 27
    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 28
    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    iget v5, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    .line 32
    .line 33
    invoke-static {v0, v5, v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(FFFF)F

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    .line 39
    .line 40
    iget v3, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    .line 41
    .line 42
    add-float v5, v0, v3

    .line 43
    .line 44
    mul-float/2addr v5, v2

    .line 45
    add-float/2addr v5, v4

    .line 46
    iget v6, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    .line 47
    .line 48
    int-to-float v7, v6

    .line 49
    const/high16 v8, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v7, v8

    .line 52
    invoke-static {v0, v3, v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(FFFF)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    int-to-float v2, v6

    .line 57
    invoke-virtual {v1, v5, v7, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->heightPx:I

    .line 61
    .line 62
    int-to-float v0, v0

    .line 63
    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
