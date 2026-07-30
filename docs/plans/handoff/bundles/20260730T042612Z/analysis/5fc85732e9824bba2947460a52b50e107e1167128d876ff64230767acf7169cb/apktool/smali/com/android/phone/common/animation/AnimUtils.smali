.class public Lcom/android/phone/common/animation/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;
    }
.end annotation


# static fields
.field public static final EASE_IN:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    invoke-static {v0, v0, v1, v2}, Lcom/android/phone/common/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    const v3, 0x3ecccccd    # 0.4f

    .line 36
    invoke-static {v3, v0, v2, v2}, Lcom/android/phone/common/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    sput-object v4, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    .line 38
    invoke-static {v3, v0, v1, v2}, Lcom/android/phone/common/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    int-to-long v1, p2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Lcom/android/phone/common/animation/AnimUtils$2;

    invoke-direct {v1, p0, p3}, Lcom/android/phone/common/animation/AnimUtils$2;-><init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    int-to-long p0, p1

    .line 117
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/phone/common/animation/AnimUtils$1;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/common/animation/AnimUtils$1;-><init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    int-to-long p0, p1

    .line 79
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static scaleIn(Landroid/view/View;II)V
    .locals 7

    .line 129
    new-instance v5, Lcom/android/phone/common/animation/AnimUtils$3;

    invoke-direct {v5, p0}, Lcom/android/phone/common/animation/AnimUtils$3;-><init>(Landroid/view/View;)V

    .line 141
    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/phone/common/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
    .locals 0

    int-to-float p1, p1

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 174
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 179
    invoke-virtual {p0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p2

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    int-to-long p1, p3

    .line 186
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    int-to-long p1, p4

    .line 188
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static scaleOut(Landroid/view/View;I)V
    .locals 7

    .line 152
    new-instance v5, Lcom/android/phone/common/animation/AnimUtils$4;

    invoke-direct {v5, p0}, Lcom/android/phone/common/animation/AnimUtils$4;-><init>(Landroid/view/View;)V

    .line 166
    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/phone/common/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    return-void
.end method
