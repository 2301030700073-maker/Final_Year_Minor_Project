.class public Lcom/android/contacts/list/AccountFilterActivity;
.super Landroid/app/Activity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;
    }
.end annotation


# instance fields
.field private mCurrentFilterType:I

.field private mCustomFilterView:Lcom/android/contacts/list/ContactListFilterView;

.field private mIsCustomFilterViewSelected:Z

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    .line 114
    iget-object p3, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCustomFilterView:Lcom/android/contacts/list/ContactListFilterView;

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mIsCustomFilterViewSelected:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p3, p1}, Lcom/android/contacts/list/ContactListFilterView;->setActivated(Z)V

    return-void

    :cond_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 p2, -0x3

    .line 127
    invoke-static {p2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p2

    const-string v0, "contactListFilter"

    .line 129
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x102000a

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 64
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilterController;->isCustomFilterPersisted()Z

    move-result p1

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    const/4 p1, -0x3

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    .line 73
    :goto_0
    iput p1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilterType:I

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    iget v2, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilterType:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

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

    .line 87
    move-object p1, p2

    check-cast p1, Lcom/android/contacts/list/ContactListFilterView;

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/ContactListFilter;

    if-nez p2, :cond_0

    return-void

    .line 90
    :cond_0
    iget p3, p2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 p4, -0x3

    const/4 p5, 0x1

    if-ne p3, p4, :cond_1

    .line 91
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCustomFilterView:Lcom/android/contacts/list/ContactListFilterView;

    .line 92
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilterView;->isChecked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/contacts/list/AccountFilterActivity;->mIsCustomFilterViewSelected:Z

    .line 93
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget p3, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilterType:I

    const-string p4, "currentListFilterType"

    .line 94
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 96
    invoke-virtual {p1, p5}, Lcom/android/contacts/list/ContactListFilterView;->setActivated(Z)V

    .line 100
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1, p5}, Lcom/android/contacts/list/ContactListFilterView;->setActivated(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 105
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "contactListFilter"

    .line 106
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 107
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
