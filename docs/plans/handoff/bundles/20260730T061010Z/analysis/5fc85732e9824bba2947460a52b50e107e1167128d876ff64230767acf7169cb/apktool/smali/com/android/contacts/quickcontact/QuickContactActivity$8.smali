.class Lcom/android/contacts/quickcontact/QuickContactActivity$8;
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


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 724
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getStartingTransparentHeightRatio()F

    move-result v0

    .line 729
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 732
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    const-string v0, "alpha"

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v1

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method
