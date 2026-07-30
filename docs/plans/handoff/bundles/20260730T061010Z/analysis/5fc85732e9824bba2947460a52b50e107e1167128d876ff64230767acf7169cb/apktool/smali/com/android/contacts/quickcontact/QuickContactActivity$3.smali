.class Lcom/android/contacts/quickcontact/QuickContactActivity$3;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

    .line 435
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 441
    :cond_0
    check-cast p3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 442
    invoke-virtual {p3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 443
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v0, 0x7f1000c3

    .line 444
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 443
    invoke-interface {p1, v0, v0, v0, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 447
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 451
    :cond_1
    invoke-virtual {p3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getMimeType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "vnd.android.cursor.item/phone_v2"

    .line 457
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 458
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result p2

    goto :goto_0

    :cond_2
    const-string v1, "vnd.android.cursor.item/email_v2"

    .line 459
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 460
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    .line 464
    :goto_0
    invoke-virtual {p3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->isSuperPrimary()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 465
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const p3, 0x7f100092

    .line 466
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 465
    invoke-interface {p1, v0, v2, v0, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    const/4 p2, 0x2

    .line 468
    iget-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v1, 0x7f1001f8

    .line 469
    invoke-virtual {p3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 468
    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_5
    :goto_1
    return-void
.end method
