.class Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceleratingFlingInterpolator"
.end annotation


# instance fields
.field private final mDurationMs:F

.field private final mNumberFrames:F

.field private final mPixelsDelta:I

.field private final mStartingSpeedPixelsPerFrame:F

.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method public constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;IFI)V
    .locals 0

    .line 1316
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getRefreshRate()F

    move-result p1

    div-float/2addr p3, p1

    iput p3, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    int-to-float p1, p2

    .line 1318
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mDurationMs:F

    .line 1319
    iput p4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mPixelsDelta:I

    .line 1320
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getFrameIntervalMs()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mNumberFrames:F

    return-void
.end method

.method private getRefreshRate()F
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 1341
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 1342
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method


# virtual methods
.method public getFrameIntervalMs()J
    .locals 2

    .line 1346
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-long v0, v1

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 4

    .line 1325
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mNumberFrames:F

    mul-float v0, v0, p1

    .line 1326
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    mul-float v0, v0, v1

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mPixelsDelta:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    mul-float p1, p1, p1

    add-float/2addr p1, v0

    .line 1331
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_0
    sub-float v1, p1, v0

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    .line 1335
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
