.class Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private final mCurrentFilter:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;I)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 147
    iput-object p2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    .line 148
    iput p3, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:I

    .line 149
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->getItem(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 170
    check-cast p2, Lcom/android/contacts/list/ContactListFilterView;

    goto :goto_0

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c002b

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/ContactListFilterView;

    .line 175
    :goto_0
    iget-object p3, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2, p3}, Lcom/android/contacts/list/ContactListFilterView;->setSingleAccount(Z)V

    .line 176
    iget-object p3, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    .line 177
    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 178
    iget-object p3, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {p2, p3}, Lcom/android/contacts/list/ContactListFilterView;->bindView(Lcom/android/contacts/model/AccountTypeManager;)V

    .line 179
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 180
    iget p1, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget p3, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:I

    if-ne p1, p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/contacts/list/ContactListFilterView;->setActivated(Z)V

    return-object p2
.end method
