.class Lcom/android/contacts/group/GroupNameEditDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupNameEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupNameEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupNameEditDialogFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$1;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$1;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$000(Lcom/android/contacts/group/GroupNameEditDialogFragment;)V

    .line 153
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$1;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$100(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;->onGroupNameEditCancelled()V

    .line 154
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$1;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
