.class Lcom/android/contacts/quickcontact/QuickContactActivity$2;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapse(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->prepareForShrinkingScrollChild(I)V

    return-void
.end method

.method public onExpand()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setDisableTouchesForSuppressLayout(Z)V

    return-void
.end method

.method public onExpandDone()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setDisableTouchesForSuppressLayout(Z)V

    return-void
.end method
