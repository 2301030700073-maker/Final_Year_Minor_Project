.class public final Lcom/android/contacts/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsListAdapter.java"


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomLayout:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mCustomLayout:I

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 61
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/util/AccountsListAdapter;->setAccounts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mCustomLayout:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0c001d

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_1
    const p3, 0x1020014

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x1020015

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020006

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 96
    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountInfo;->getTypeLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p3, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p3}, Lcom/android/contacts/model/account/AccountInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p3, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public setAccounts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1, p2}, Lcom/android/contacts/model/account/AccountInfo;->getAccount(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 71
    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountInfo;->sameAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCustomLayout(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mCustomLayout:I

    return-void
.end method
