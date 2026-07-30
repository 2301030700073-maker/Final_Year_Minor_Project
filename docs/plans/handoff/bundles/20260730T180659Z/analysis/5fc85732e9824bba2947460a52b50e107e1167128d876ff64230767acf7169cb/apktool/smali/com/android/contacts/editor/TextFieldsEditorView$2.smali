.class Lcom/android/contacts/editor/TextFieldsEditorView$2;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {p1}, Lcom/android/contacts/editor/LabeledEditorView;->getEditorListener()Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {p1}, Lcom/android/contacts/editor/LabeledEditorView;->getEditorListener()Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object p1

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {p1}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    if-eqz p2, :cond_1

    .line 185
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$302(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z

    :cond_1
    return-void
.end method
