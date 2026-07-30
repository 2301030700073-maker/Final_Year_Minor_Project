.class Lcom/android/contacts/list/CustomContactListFilterActivity$1;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-static {p1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity;)Landroid/widget/ExpandableListView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    .line 115
    invoke-static {p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity;)Landroid/widget/ExpandableListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070075

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    .line 117
    invoke-static {p3}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity;)Landroid/widget/ExpandableListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070076

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p3, p4

    .line 114
    invoke-virtual {p1, p2, p3}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    return-void
.end method
