.class Lcom/android/contacts/editor/PickRawContactDialogFragment$1;
.super Ljava/lang/Object;
.source "PickRawContactDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PickRawContactDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

.field final synthetic val$metadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PickRawContactDialogFragment;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;->val$metadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/contacts/editor/PickRawContactDialogFragment;->access$002(Lcom/android/contacts/editor/PickRawContactDialogFragment;Z)Z

    .line 190
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-virtual {p2}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class v0, Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.android.contacts.action.JOIN_CONTACT"

    .line 192
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object p2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;->val$metadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-wide v0, p2, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->contactId:J

    const-string p2, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 195
    iget-object p2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-virtual {p2}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
