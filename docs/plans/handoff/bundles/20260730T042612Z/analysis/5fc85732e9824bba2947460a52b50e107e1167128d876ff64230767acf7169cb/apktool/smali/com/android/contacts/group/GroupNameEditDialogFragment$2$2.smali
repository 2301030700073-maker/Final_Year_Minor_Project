.class Lcom/android/contacts/group/GroupNameEditDialogFragment$2$2;
.super Ljava/lang/Object;
.source "GroupNameEditDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/group/GroupNameEditDialogFragment$2;

.field final synthetic val$createButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupNameEditDialogFragment$2;Landroid/widget/Button;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$2;->this$1:Lcom/android/contacts/group/GroupNameEditDialogFragment$2;

    iput-object p2, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$2;->val$createButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$2;->this$1:Lcom/android/contacts/group/GroupNameEditDialogFragment$2;

    iget-object v0, v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;->this$0:Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->access$300(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2$2;->val$createButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
