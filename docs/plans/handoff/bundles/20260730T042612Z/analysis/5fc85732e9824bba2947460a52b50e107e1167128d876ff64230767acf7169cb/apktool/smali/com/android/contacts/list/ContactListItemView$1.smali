.class Lcom/android/contacts/list/ContactListItemView$1;
.super Ljava/lang/Object;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactListItemView;->setShowVideoCallIcon(ZLcom/android/contacts/list/PhoneNumberListAdapter$Listener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactListItemView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView$1;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 401
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView$1;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {p1}, Lcom/android/contacts/list/ContactListItemView;->access$000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/android/contacts/list/ContactListItemView$1;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {p1}, Lcom/android/contacts/list/ContactListItemView;->access$000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$1;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;->onVideoCallIconClicked(I)V

    :cond_0
    return-void
.end method
