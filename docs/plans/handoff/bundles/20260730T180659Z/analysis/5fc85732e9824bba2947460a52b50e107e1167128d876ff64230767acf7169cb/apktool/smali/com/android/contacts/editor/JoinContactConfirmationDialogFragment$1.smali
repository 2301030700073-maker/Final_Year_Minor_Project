.class Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "JoinContactConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment$Listener;

    .line 79
    iget-object p2, p0, Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;

    invoke-static {p2}, Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;->access$000(Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment$Listener;->onJoinContactConfirmed(J)V

    return-void
.end method
