.class Lcom/android/contacts/editor/RawContactEditorView$1;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->addAccountSelector(Lcom/android/contacts/model/RawContactDelta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;

.field final synthetic val$rawContactDelta:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->val$rawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 810
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->val$rawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    .line 811
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/RawContactEditorView;->access$300(Lcom/android/contacts/editor/RawContactEditorView;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/model/account/AccountInfo;->sortAccounts(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/util/List;)V

    .line 812
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 813
    new-instance v1, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    .line 814
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {v3}, Lcom/android/contacts/editor/RawContactEditorView;->access$300(Lcom/android/contacts/editor/RawContactEditorView;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 815
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {p1}, Lcom/android/contacts/editor/RawContactEditorView;->access$400(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 816
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {p1}, Lcom/android/contacts/editor/RawContactEditorView;->access$400(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 817
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 818
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 p1, 0x2

    .line 819
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 820
    new-instance p1, Lcom/android/contacts/editor/RawContactEditorView$1$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/contacts/editor/RawContactEditorView$1$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView$1;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 835
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
