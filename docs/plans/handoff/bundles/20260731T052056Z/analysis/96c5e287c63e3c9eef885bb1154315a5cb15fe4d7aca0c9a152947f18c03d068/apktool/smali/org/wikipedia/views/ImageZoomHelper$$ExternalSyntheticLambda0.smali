.class public final synthetic Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/ImageZoomHelper;

.field public final synthetic f$1:F

.field public final synthetic f$10:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/ImageZoomHelper;FFLjava/lang/Integer;Ljava/lang/Integer;IIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/ImageZoomHelper;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Integer;

    .line 13
    .line 14
    iput p6, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$7:I

    .line 15
    .line 16
    iput p7, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$8:I

    .line 17
    .line 18
    iput p8, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$10:F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/ImageZoomHelper;

    .line 9
    .line 10
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget v2, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$1:F

    .line 37
    .line 38
    iget v3, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$2:F

    .line 39
    .line 40
    iget v6, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$7:I

    .line 41
    .line 42
    iget v7, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$8:I

    .line 43
    .line 44
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/views/ImageZoomHelper;->updateZoomableView(FFFIIII)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iget p0, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;->f$10:F

    .line 53
    .line 54
    sub-float/2addr v0, p0

    .line 55
    mul-float/2addr v0, v1

    .line 56
    add-float/2addr v0, p0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
