.class Lcom/android/contacts/interactions/ImportDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/ImportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;

    iget v0, v0, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    const v1, 0x7f10015a

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/interactions/ImportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;

    iget-object p2, p2, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mSim:Lcom/android/contacts/model/SimCard;

    invoke-static {v0, p2}, Lcom/android/contacts/interactions/ImportDialogFragment;->access$200(Lcom/android/contacts/interactions/ImportDialogFragment;Lcom/android/contacts/model/SimCard;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f10015c

    if-ne v0, p2, :cond_1

    .line 201
    iget-object p2, p0, Lcom/android/contacts/interactions/ImportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    const/4 v1, -0x1

    invoke-static {p2, v0, v1}, Lcom/android/contacts/interactions/ImportDialogFragment;->access$300(Lcom/android/contacts/interactions/ImportDialogFragment;II)V

    goto :goto_0

    .line 203
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected resource: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/interactions/ImportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    .line 204
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImportDialogFragment"

    .line 203
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
