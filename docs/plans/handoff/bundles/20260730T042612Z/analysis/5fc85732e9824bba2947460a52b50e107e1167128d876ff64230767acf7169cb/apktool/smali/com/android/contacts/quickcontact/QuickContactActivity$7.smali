.class Lcom/android/contacts/quickcontact/QuickContactActivity$7;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 687
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 690
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    return-void
.end method
