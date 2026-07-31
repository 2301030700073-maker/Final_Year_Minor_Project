.class public final Lcom/fsck/k9/ui/compose/SimpleHighlightView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final backgroundColor:I

.field public final basicPaint:Landroid/graphics/Paint;

.field public bitmapBuffer:Landroid/graphics/Bitmap;

.field public final eraserPaint:Landroid/graphics/Paint;

.field public final fadeInMillis:J

.field public final fadeOutMillis:J

.field public highlightX:I

.field public highlightY:I

.field public parent:Landroid/view/ViewGroup;

.field public final positionInWindow:[I

.field public final radius:F


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x10e0001

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-long v1, p1

    .line 16
    iput-wide v1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->fadeInMillis:J

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-long v0, p1

    .line 27
    iput-wide v0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->fadeOutMillis:J

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const v0, 0x7f0700c4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->radius:F

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->basicPaint:Landroid/graphics/Paint;

    .line 48
    .line 49
    new-instance p1, Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 52
    .line 53
    .line 54
    const v0, 0xffffff

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 65
    .line 66
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->eraserPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    const/4 p1, 0x2

    .line 81
    new-array p1, p1, [I

    .line 82
    .line 83
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->positionInWindow:[I

    .line 84
    .line 85
    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->highlightX:I

    .line 87
    .line 88
    iput p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->highlightY:I

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget-object v1, Lcom/fsck/k9/ui/R$styleable;->SimpleHighlightView:[I

    .line 95
    .line 96
    const v2, 0x7f130178

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x80

    .line 107
    .line 108
    const/16 v2, 0x50

    .line 109
    .line 110
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->backgroundColor:I

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public static final synthetic access$setParent(Lcom/fsck/k9/ui/compose/SimpleHighlightView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->setParent(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setTarget(Lcom/fsck/k9/ui/compose/SimpleHighlightView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->setTarget(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final setParent(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->parent:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method private final setTarget(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x64

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->highlightX:I

    .line 5
    .line 6
    iget v1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->highlightY:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    if-ltz v0, :cond_1

    .line 11
    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v3, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->backgroundColor:I

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 20
    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    int-to-float v1, v1

    .line 24
    new-instance v3, Landroid/graphics/Canvas;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    iget v4, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->radius:F

    .line 30
    .line 31
    iget-object v5, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->eraserPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->basicPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final updateBitmap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 47
    .line 48
    return-void
.end method
