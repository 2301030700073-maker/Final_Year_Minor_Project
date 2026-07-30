.class Lcom/android/contacts/editor/AccountHeaderPresenter$2;
.super Ljava/lang/Object;
.source "AccountHeaderPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/AccountHeaderPresenter;->showPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/AccountHeaderPresenter;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/AccountHeaderPresenter;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$2;->this$0:Lcom/android/contacts/editor/AccountHeaderPresenter;

    iput-object p2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$2;->val$popup:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$2;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

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

    .line 188
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$2;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 189
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$2;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {p1, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    .line 190
    iget-object p2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$2;->this$0:Lcom/android/contacts/editor/AccountHeaderPresenter;

    invoke-virtual {p2, p1}, Lcom/android/contacts/editor/AccountHeaderPresenter;->setCurrentAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 192
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter$2;->this$0:Lcom/android/contacts/editor/AccountHeaderPresenter;

    invoke-static {p1}, Lcom/android/contacts/editor/AccountHeaderPresenter;->access$100(Lcom/android/contacts/editor/AccountHeaderPresenter;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void
.end method
