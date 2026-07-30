.class Lcom/android/contacts/interactions/ExportDialogFragment$2;
.super Ljava/lang/Object;
.source "ExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$callingActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ExportDialogFragment;Landroid/widget/ArrayAdapter;Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;

    iget p2, p2, Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    const-string v0, "CALLING_ACTIVITY"

    const v1, 0x7f10011e

    if-ne p2, v1, :cond_0

    .line 137
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    .line 138
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    iget-object v1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f1001fe

    if-ne p2, v1, :cond_2

    .line 144
    invoke-static {}, Lcom/android/contacts/interactions/ExportDialogFragment;->access$000()I

    move-result p2

    if-nez p2, :cond_1

    .line 145
    iget-object p2, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    invoke-static {p2}, Lcom/android/contacts/interactions/ExportDialogFragment;->access$100(Lcom/android/contacts/interactions/ExportDialogFragment;)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    .line 148
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/vcard/ShareVCardActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    iget-object v1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    .line 156
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExportDialogFragment"

    .line 155
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
