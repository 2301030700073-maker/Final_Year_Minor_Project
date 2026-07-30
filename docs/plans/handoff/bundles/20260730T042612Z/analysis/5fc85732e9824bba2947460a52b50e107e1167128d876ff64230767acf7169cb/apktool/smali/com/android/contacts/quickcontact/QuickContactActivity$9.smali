.class Lcom/android/contacts/quickcontact/QuickContactActivity$9;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;I)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setScroll(I)V

    .line 755
    :cond_0
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->val$color:I

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/MaterialColorMapUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->val$color:I

    .line 757
    invoke-virtual {v1, v2}, Lcom/android/contacts/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v1

    .line 756
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    :cond_1
    return-void
.end method
