.class public final Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field public lastFocusX:F

.field public lastFocusY:F

.field public final synthetic this$0:Lio/getstream/photoview/CustomGestureDetector;


# direct methods
.method public constructor <init>(Lio/getstream/photoview/CustomGestureDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->this$0:Lio/getstream/photoview/CustomGestureDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    cmpl-float v0, v1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->this$0:Lio/getstream/photoview/CustomGestureDetector;

    .line 27
    .line 28
    iget-object v0, v0, Lio/getstream/photoview/CustomGestureDetector;->listener:Lokhttp3/ConnectionPool;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->lastFocusX:F

    .line 43
    .line 44
    sub-float/2addr v4, v5

    .line 45
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget v6, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->lastFocusY:F

    .line 50
    .line 51
    sub-float/2addr v5, v6

    .line 52
    invoke-virtual/range {v0 .. v5}, Lokhttp3/ConnectionPool;->onScale(FFFFF)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->lastFocusX:F

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->lastFocusY:F

    .line 66
    .line 67
    :cond_1
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 70
    return p0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->lastFocusX:F

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lio/getstream/photoview/CustomGestureDetector$scaleListener$1;->lastFocusY:F

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method
