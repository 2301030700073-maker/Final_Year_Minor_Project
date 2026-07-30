.class Lcom/android/contacts/editor/PhotoSourceDialogFragment$1;
.super Ljava/lang/Object;
.source "PhotoSourceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoSourceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoSourceDialogFragment;

.field final synthetic val$choices:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoSourceDialogFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoSourceDialogFragment$1;->this$0:Lcom/android/contacts/editor/PhotoSourceDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoSourceDialogFragment$1;->val$choices:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoSourceDialogFragment$1;->this$0:Lcom/android/contacts/editor/PhotoSourceDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/PhotoSourceDialogFragment$Listener;

    .line 79
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoSourceDialogFragment$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 80
    invoke-virtual {p2}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {p1}, Lcom/android/contacts/editor/PhotoSourceDialogFragment$Listener;->onRemovePictureChosen()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p1}, Lcom/android/contacts/editor/PhotoSourceDialogFragment$Listener;->onPickFromGalleryChosen()V

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {p1}, Lcom/android/contacts/editor/PhotoSourceDialogFragment$Listener;->onTakePhotoChosen()V

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoSourceDialogFragment$1;->this$0:Lcom/android/contacts/editor/PhotoSourceDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
