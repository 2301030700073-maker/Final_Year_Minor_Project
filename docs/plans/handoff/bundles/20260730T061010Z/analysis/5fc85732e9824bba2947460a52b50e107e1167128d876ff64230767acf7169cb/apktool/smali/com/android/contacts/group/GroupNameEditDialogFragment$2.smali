.class Lcom/android/contacts/group/GroupNameEditDialogFragment$2;
.super Ljava/lang/Object;
.source "GroupNameEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$202(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 169
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x7f0901de

    .line 170
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 169
    invoke-static {p1, v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$302(Lcom/android/contacts/group/GroupNameEditDialogFragment;Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/TextInputLayout;

    .line 171
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$400(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$200(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$400(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 176
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$200(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$400(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$400(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 176
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$200(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$500(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroid/view/View;)V

    .line 181
    iget-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$600(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    new-instance v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$1;-><init>(Lcom/android/contacts/group/GroupNameEditDialogFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$200(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$2;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$2;-><init>(Lcom/android/contacts/group/GroupNameEditDialogFragment$2;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
