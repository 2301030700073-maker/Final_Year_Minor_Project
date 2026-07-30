.class Lcom/android/contacts/editor/RawContactEditorView$1$1;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/RawContactEditorView$1;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView$1;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$1;

    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->val$popup:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 824
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 825
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {p1, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    .line 826
    iget-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$1;

    iget-object p2, p2, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {p2}, Lcom/android/contacts/editor/RawContactEditorView;->access$500(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/RawContactEditorView$Listener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$1;

    iget-object p2, p2, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {p2}, Lcom/android/contacts/editor/RawContactEditorView;->access$600(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 827
    iget-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$1;

    iget-object p2, p2, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/contacts/editor/RawContactEditorView;->access$702(Lcom/android/contacts/editor/RawContactEditorView;Z)Z

    .line 828
    iget-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$1;

    iget-object p2, p2, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {p2}, Lcom/android/contacts/editor/RawContactEditorView;->access$500(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/RawContactEditorView$Listener;

    move-result-object p2

    iget-object p3, p0, Lcom/android/contacts/editor/RawContactEditorView$1$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$1;

    iget-object p4, p3, Lcom/android/contacts/editor/RawContactEditorView$1;->val$rawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    iget-object p3, p3, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    .line 830
    invoke-static {p3}, Lcom/android/contacts/editor/RawContactEditorView;->access$600(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p3

    .line 828
    invoke-interface {p2, p4, p3, p1}, Lcom/android/contacts/editor/RawContactEditorView$Listener;->onRebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :cond_0
    return-void
.end method
