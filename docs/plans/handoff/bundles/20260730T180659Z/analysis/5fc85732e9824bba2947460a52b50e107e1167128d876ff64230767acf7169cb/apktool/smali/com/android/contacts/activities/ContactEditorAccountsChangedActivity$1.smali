.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

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

    .line 63
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-static {p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/util/AccountsListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-static {p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/util/AccountsListAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method
