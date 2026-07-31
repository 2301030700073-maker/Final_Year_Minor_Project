.class public final Lcom/nononsenseapps/filepicker/NewItemFragment$1$3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$1:Lcom/nononsenseapps/filepicker/NewItemFragment$1;

.field public final synthetic val$ok:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/NewItemFragment$1;Landroid/widget/Button;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$3;->this$1:Lcom/nononsenseapps/filepicker/NewItemFragment$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$3;->val$ok:Landroid/widget/Button;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$3;->this$1:Lcom/nononsenseapps/filepicker/NewItemFragment$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/nononsenseapps/filepicker/NewItemFragment$1;->this$0:Lcom/nononsenseapps/filepicker/NewItemFragment;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/nononsenseapps/filepicker/NewItemFragment;->validateName(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/NewItemFragment$1$3;->val$ok:Landroid/widget/Button;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
