.class public abstract Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public canceled:Z


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/wikipedia/views/ViewAnimations$CancelStateAnimatorListenerAdapter;->canceled:Z

    .line 6
    .line 7
    return-void
.end method
