.class public Lcom/android/contacts/list/HeaderEntryContactListAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "HeaderEntryContactListAdapter.java"


# instance fields
.field private mShowCreateContact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getHeaderEntryCount()I
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->mShowCreateContact:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getExtraStartingSection()Z
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getViewTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getPartitionForPosition(I)I
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p1, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    :goto_0
    const p2, 0x7f0800c3

    .line 67
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setDrawableResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f10014b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    return-object p1

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setShowCreateContact(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->mShowCreateContact:Z

    .line 49
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    return-void
.end method
