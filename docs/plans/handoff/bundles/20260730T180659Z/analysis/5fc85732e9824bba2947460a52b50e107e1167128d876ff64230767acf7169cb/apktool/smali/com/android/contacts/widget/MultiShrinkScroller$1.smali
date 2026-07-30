.class Lcom/android/contacts/widget/MultiShrinkScroller$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiShrinkScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$000(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onScrolledOffBottom()V

    .line 216
    iget-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$102(Lcom/android/contacts/widget/MultiShrinkScroller;Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    :cond_0
    return-void
.end method
