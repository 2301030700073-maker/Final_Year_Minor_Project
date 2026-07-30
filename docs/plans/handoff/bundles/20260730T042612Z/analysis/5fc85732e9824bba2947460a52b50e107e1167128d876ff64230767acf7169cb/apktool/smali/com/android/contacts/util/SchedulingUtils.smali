.class public Lcom/android/contacts/util/SchedulingUtils;
.super Ljava/lang/Object;
.source "SchedulingUtils.java"


# direct methods
.method public static doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/contacts/util/SchedulingUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/util/SchedulingUtils$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/contacts/util/SchedulingUtils$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/contacts/util/SchedulingUtils$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;Z)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
