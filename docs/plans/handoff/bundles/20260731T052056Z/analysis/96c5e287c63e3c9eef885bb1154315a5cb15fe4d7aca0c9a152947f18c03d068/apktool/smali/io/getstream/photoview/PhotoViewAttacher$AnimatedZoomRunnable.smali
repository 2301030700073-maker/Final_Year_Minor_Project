.class public final Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mFocalX:F

.field public final mFocalY:F

.field public final mStartTime:J

.field public final mZoomEnd:F

.field public final mZoomStart:F

.field public final synthetic this$0:Lio/getstream/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lio/getstream/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lio/getstream/photoview/PhotoViewAttacher;

    .line 5
    .line 6
    iput p2, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 7
    .line 8
    iput p3, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    .line 9
    .line 10
    iput p4, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 11
    .line 12
    iput p5, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-float v0, v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    mul-float/2addr v0, v1

    .line 12
    iget-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lio/getstream/photoview/PhotoViewAttacher;

    .line 13
    .line 14
    iget v3, v2, Lio/getstream/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 15
    .line 16
    int-to-float v3, v3

    .line 17
    div-float/2addr v0, v3

    .line 18
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v3, v2, Lio/getstream/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v3, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 29
    .line 30
    iget v4, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    .line 31
    .line 32
    invoke-static {v4, v3, v0, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2}, Lio/getstream/photoview/PhotoViewAttacher;->getScale()F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    div-float v6, v3, v4

    .line 41
    .line 42
    iget-object v5, v2, Lio/getstream/photoview/PhotoViewAttacher;->onGestureListener:Lokhttp3/ConnectionPool;

    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    iget v7, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 47
    .line 48
    iget v8, p0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 49
    .line 50
    invoke-virtual/range {v5 .. v10}, Lokhttp3/ConnectionPool;->onScale(FFFFF)V

    .line 51
    .line 52
    .line 53
    cmpg-float v0, v0, v1

    .line 54
    .line 55
    if-gez v0, :cond_0

    .line 56
    .line 57
    iget-object v0, v2, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 58
    .line 59
    const-wide/16 v1, 0x10

    .line 60
    .line 61
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method
