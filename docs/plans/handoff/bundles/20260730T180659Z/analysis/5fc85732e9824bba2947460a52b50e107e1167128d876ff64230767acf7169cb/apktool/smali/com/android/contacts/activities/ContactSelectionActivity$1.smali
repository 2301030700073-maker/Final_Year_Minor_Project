.class Lcom/android/contacts/activities/ContactSelectionActivity$1;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;->updateAddContactsButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$1;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 493
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$1;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    .line 494
    invoke-static {p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$600(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIdsArray()[J

    move-result-object p1

    .line 495
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$1;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$700(Lcom/android/contacts/activities/ContactSelectionActivity;[J)V

    return-void
.end method
