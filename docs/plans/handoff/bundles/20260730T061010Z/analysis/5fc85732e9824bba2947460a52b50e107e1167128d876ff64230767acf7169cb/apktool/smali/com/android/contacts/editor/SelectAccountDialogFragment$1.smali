.class Lcom/android/contacts/editor/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 105
    iget-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Lcom/android/contacts/util/AccountsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method
