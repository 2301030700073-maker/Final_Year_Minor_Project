.class public final Lorg/schabi/newpipe/views/AnimatedProgressBar;
.super Landroid/widget/ProgressBar;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    return-void
.end method


# virtual methods
.method public declared-synchronized setProgressAnimated(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    int-to-float p1, p1

    .line 23
    invoke-direct {v0, p0, v1, p1}, Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;-><init>(Lorg/schabi/newpipe/views/AnimatedProgressBar;FF)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/schabi/newpipe/views/AnimatedProgressBar;->animation:Lorg/schabi/newpipe/views/AnimatedProgressBar$ProgressBarAnimation;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method
