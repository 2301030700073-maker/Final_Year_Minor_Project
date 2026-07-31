.class public final Lio/getstream/photoview/PhotoViewAttacher$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field public final synthetic this$0:Lio/getstream/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lio/getstream/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/getstream/photoview/PhotoViewAttacher$1;->this$0:Lio/getstream/photoview/PhotoViewAttacher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher$1;->this$0:Lio/getstream/photoview/PhotoViewAttacher;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getScale()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v3, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMidScale:F

    .line 20
    .line 21
    cmpg-float v4, v1, v3

    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v3, v2, p1, v0}, Lio/getstream/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    cmpl-float v3, v1, v3

    .line 30
    .line 31
    if-ltz v3, :cond_1

    .line 32
    .line 33
    iget v3, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 34
    .line 35
    cmpg-float v1, v1, v3

    .line 36
    .line 37
    if-gez v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v3, v2, p1, v0}, Lio/getstream/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_1
    iget v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMinScale:F

    .line 44
    .line 45
    invoke-virtual {p0, v1, v2, p1, v0}, Lio/getstream/photoview/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    return v0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher$1;->this$0:Lio/getstream/photoview/PhotoViewAttacher;

    .line 5
    .line 6
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lio/getstream/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return p0
.end method
