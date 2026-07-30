.class Lcom/android/contacts/editor/TextFieldsEditorView$1;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->onFinishInflate()V
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

    .line 115
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$002(Lcom/android/contacts/editor/TextFieldsEditorView;I)I

    .line 121
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$202(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->onOptionalFieldVisibilityChange()V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    .line 130
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    .line 135
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 137
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/editor/EditorAnimator;->slideAndFadeIn(Landroid/view/ViewGroup;I)V

    .line 138
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCollapsedAnnouncement:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpandedAnnouncement:Ljava/lang/String;

    .line 138
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
