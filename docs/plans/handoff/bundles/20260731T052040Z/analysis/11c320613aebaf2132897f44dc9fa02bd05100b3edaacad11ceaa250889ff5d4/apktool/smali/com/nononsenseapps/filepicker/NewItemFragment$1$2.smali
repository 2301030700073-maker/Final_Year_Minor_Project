.class public final Lcom/nononsenseapps/filepicker/NewItemFragment$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/nononsenseapps/filepicker/NewItemFragment$1;

.field public final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/NewItemFragment$1;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$2;->this$1:Lcom/nononsenseapps/filepicker/NewItemFragment$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$2;->val$editText:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$2;->val$editText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$2;->this$1:Lcom/nononsenseapps/filepicker/NewItemFragment$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/nononsenseapps/filepicker/NewItemFragment$1;->this$0:Lcom/nononsenseapps/filepicker/NewItemFragment;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/nononsenseapps/filepicker/NewItemFragment;->validateName(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lcom/nononsenseapps/filepicker/NewItemFragment;->listener:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onNewFolder(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
