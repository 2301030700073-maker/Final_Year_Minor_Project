.class Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->createEntryView(Landroid/view/LayoutInflater;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field final synthetic val$entry:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->val$entry:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 739
    instance-of p1, p1, Landroid/os/Bundle;

    if-nez p1, :cond_0

    return-void

    .line 743
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 744
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 745
    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->val$entry:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getThirdExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/dialog/CallSubjectDialog;->start(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
