.class Lcom/android/contacts/editor/LabeledEditorView$3;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 457
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 458
    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 459
    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    .line 460
    invoke-static {p2}, Lcom/android/contacts/editor/LabeledEditorView;->access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {p2}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object p2

    .line 461
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/account/AccountType$EditType;

    .line 462
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 463
    iget-object v1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 464
    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {p2, v0}, Lcom/android/contacts/editor/LabeledEditorView;->access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/account/AccountType$EditType;

    .line 468
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {p2}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 470
    :cond_2
    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {p2}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p2

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    iget v1, v1, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p2, v0, v1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 471
    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {p2}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p2

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {p1}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    .line 473
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {p1}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 474
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {p1}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    :cond_3
    return-void
.end method
