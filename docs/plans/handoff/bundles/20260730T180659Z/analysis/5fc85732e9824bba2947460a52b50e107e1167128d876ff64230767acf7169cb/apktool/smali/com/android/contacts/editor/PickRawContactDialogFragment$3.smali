.class Lcom/android/contacts/editor/PickRawContactDialogFragment$3;
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

    .line 213
    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$3;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$3;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/editor/PickRawContactDialogFragment;->access$100(Lcom/android/contacts/editor/PickRawContactDialogFragment;)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p1

    .line 217
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$3;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PickRawContactDialogFragment$PickRawContactListener;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/editor/PickRawContactDialogFragment$PickRawContactListener;->onPickRawContact(J)V

    return-void
.end method
