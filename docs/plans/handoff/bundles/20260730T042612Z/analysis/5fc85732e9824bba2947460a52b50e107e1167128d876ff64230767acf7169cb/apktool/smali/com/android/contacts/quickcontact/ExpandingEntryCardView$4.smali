.class Lcom/android/contacts/quickcontact/ExpandingEntryCardView$4;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->expand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$4;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 802
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$4;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$300(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;->onExpandDone()V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 797
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$4;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$300(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;->onExpand()V

    return-void
.end method
