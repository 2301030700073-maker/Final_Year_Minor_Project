.class public final Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $targetRotation:I

.field public final synthetic $this_animateRotation:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$this_animateRotation:Landroid/view/View;

    .line 2
    .line 3
    iput p2, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$targetRotation:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$targetRotation:I

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$this_animateRotation:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$targetRotation:I

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/ktx/ViewUtils$animateRotation$1;->$this_animateRotation:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
