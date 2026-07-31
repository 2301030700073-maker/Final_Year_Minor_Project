.class public final Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;
.super Landroid/view/animation/Animation;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final from:F

.field public final progressBar:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field public final to:F


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/views/AnimatedProgressBar;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->progressBar:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->from:F

    .line 7
    .line 8
    iput p3, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->to:F

    .line 9
    .line 10
    const-wide/16 p1, 0x1f4

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->from:F

    .line 5
    .line 6
    iget v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->to:F

    .line 7
    .line 8
    invoke-static {v0, p2, p1, p2}, Landroidx/compose/ui/Modifier$-CC;->m(FFFF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;->progressBar:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 13
    .line 14
    float-to-int p1, p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
