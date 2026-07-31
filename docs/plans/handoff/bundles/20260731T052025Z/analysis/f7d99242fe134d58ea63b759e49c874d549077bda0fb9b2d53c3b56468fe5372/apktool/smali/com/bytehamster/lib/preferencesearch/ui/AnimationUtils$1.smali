.class public final Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$endColor:I

.field public final synthetic val$revealSettings:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

.field public final synthetic val$startColor:I

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$view:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$revealSettings:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$context:Landroid/content/Context;

    .line 9
    .line 10
    iput p4, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$startColor:I

    .line 11
    .line 12
    iput p5, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$endColor:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$view:Landroid/view/View;

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p4, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$revealSettings:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 11
    .line 12
    iget p5, p4, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->centerX:I

    .line 13
    .line 14
    iget p6, p4, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->centerY:I

    .line 15
    .line 16
    iget p7, p4, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->width:I

    .line 17
    .line 18
    iget p4, p4, Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;->height:I

    .line 19
    .line 20
    iget-object p8, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p8

    .line 26
    const p9, 0x10e0002

    .line 27
    .line 28
    .line 29
    invoke-virtual {p8, p9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 30
    .line 31
    .line 32
    move-result p8

    .line 33
    mul-int/2addr p7, p7

    .line 34
    mul-int/2addr p4, p4

    .line 35
    add-int/2addr p4, p7

    .line 36
    int-to-double v0, p4

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    double-to-float p4, v0

    .line 42
    const/4 p7, 0x0

    .line 43
    invoke-static {p1, p5, p6, p7, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    int-to-long p4, p8

    .line 48
    invoke-virtual {p1, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p6, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 53
    .line 54
    invoke-direct {p6, p3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 66
    .line 67
    .line 68
    iget p3, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$startColor:I

    .line 69
    .line 70
    iget p0, p0, Lcom/bytehamster/lib/preferencesearch/ui/AnimationUtils$1;->val$endColor:I

    .line 71
    .line 72
    filled-new-array {p3, p0}, [I

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Landroid/animation/ArgbEvaluator;

    .line 80
    .line 81
    invoke-direct {p0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 85
    .line 86
    .line 87
    new-instance p0, Lcom/google/android/material/textfield/TextInputLayout$4;

    .line 88
    .line 89
    const/4 p3, 0x3

    .line 90
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/textfield/TextInputLayout$4;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    .line 101
    .line 102
    return-void
.end method
