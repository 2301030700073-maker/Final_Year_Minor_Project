.class Lcom/android/contacts/widget/MultiShrinkScroller$7;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUpForEntranceAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

.field final synthetic val$desiredValue:I


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;I)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->val$desiredValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 733
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->val$desiredValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 734
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onEntranceAnimationDone()V

    :cond_0
    return-void
.end method
