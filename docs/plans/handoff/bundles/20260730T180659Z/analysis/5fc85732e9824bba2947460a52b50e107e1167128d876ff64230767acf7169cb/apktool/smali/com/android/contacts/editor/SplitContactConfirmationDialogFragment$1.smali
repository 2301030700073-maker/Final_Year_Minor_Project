.class Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "SplitContactConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->access$100(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;->this$0:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-static {p2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->access$000(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;->onSplitContactConfirmed(Z)V

    return-void
.end method
