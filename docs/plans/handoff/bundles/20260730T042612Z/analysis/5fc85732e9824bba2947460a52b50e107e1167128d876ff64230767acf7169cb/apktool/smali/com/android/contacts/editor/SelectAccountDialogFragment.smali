.class public final Lcom/android/contacts/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountsAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field private mFilter:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Lcom/android/contacts/util/AccountsListAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method private getListener()Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    instance-of v1, v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onAccountSelected(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getListener()Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;ILcom/android/contacts/model/AccountTypeManager$AccountFilter;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/model/AccountTypeManager$AccountFilter;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;ILcom/android/contacts/model/AccountTypeManager$AccountFilter;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title_res_id"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p3, :cond_0

    .line 73
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    const-string p1, "extra_args"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "list_filter"

    .line 74
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 76
    new-instance p1, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {p1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;-><init>()V

    .line 77
    invoke-virtual {p1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p1, p0, p4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAccountsLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    const-string v1, "Accounts adapter should have been initialized"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/util/AccountsListAdapter;->setAccounts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    iget-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mFilter:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/contacts/model/account/AccountsLoader;->loadAccounts(Landroid/app/Fragment;ILcom/google/common/base/Predicate;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 126
    invoke-direct {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getListener()Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "list_filter"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mFilter:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    if-nez p1, :cond_0

    .line 87
    sget-object p1, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->ALL:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mFilter:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 93
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    const v2, 0x7f0c001d

    .line 97
    invoke-virtual {v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;->setCustomLayout(I)V

    .line 99
    new-instance v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0047

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "title_res_id"

    .line 110
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 112
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
