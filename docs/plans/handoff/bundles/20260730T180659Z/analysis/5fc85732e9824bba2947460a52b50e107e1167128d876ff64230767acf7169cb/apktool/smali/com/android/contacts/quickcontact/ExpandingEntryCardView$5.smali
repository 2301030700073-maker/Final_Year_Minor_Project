.class Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->collapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field final synthetic val$views:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;Ljava/util/List;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;->val$views:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 860
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$400(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    .line 861
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;->val$views:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 862
    instance-of v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;

    if-eqz v1, :cond_0

    .line 863
    invoke-static {}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$500()Landroid/util/Property;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 865
    :cond_0
    invoke-static {}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$500()Landroid/util/Property;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$5;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$600(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 867
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 868
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
