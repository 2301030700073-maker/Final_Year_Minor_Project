.class Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "SuggestionEditConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;

    .line 55
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/ContactEditorFragment;

    .line 56
    iget-object p2, p0, Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;

    .line 57
    invoke-virtual {p2}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 58
    iget-object v0, p0, Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;

    .line 59
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rawContactId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 60
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->doEditSuggestedContact(Landroid/net/Uri;J)V

    return-void
.end method
