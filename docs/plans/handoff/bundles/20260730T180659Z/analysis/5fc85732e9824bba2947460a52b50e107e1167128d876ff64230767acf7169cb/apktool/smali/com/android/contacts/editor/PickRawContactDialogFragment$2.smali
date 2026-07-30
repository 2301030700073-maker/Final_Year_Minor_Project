.class Lcom/android/contacts/editor/PickRawContactDialogFragment$2;
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


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PickRawContactDialogFragment;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$2;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$2;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/contacts/editor/PickRawContactDialogFragment;->access$002(Lcom/android/contacts/editor/PickRawContactDialogFragment;Z)Z

    .line 203
    new-instance p1, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {p1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 205
    iget-object p2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$2;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-virtual {p2}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "SplitConfirmation"

    invoke-virtual {p1, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
