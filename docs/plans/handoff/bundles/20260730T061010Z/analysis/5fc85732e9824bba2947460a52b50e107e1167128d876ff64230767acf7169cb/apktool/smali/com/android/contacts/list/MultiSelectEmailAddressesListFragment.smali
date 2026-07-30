.class public Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;
.super Lcom/android/contacts/list/MultiSelectContactsListFragment;
.source "MultiSelectEmailAddressesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/MultiSelectContactsListFragment<",
        "Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;-><init>()V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const/16 v0, 0xd

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;->createListAdapter()Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createListAdapter()Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;
    .locals 2

    .line 49
    new-instance v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;

    .line 50
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0028

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 57
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0002

    .line 58
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 97
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.contacts.extra.SELECTION_DEFAULT_SELECTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    .line 101
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 102
    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->setSelectedContactIds(Ljava/util/TreeSet;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onSelectedContactsChanged()V

    .line 107
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onItemLongClick(IJ)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09013b

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.contacts.extra.SELECTION_SEND_SCHEME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.contacts.extra.SELECTION_SEND_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIdsArray()[J

    move-result-object v2

    .line 85
    invoke-static {v1, v2, p1}, Lcom/android/contacts/group/GroupUtil;->getSendToDataForIds(Landroid/content/Context;[JLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    .line 87
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {p0, v1, p1, v0}, Lcom/android/contacts/group/GroupUtil;->startSendToSelectionActivity(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f09013b

    .line 63
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->hasSelectedItems()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment$1;-><init>(Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 112
    invoke-super {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onStart()V

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.contacts.extra.SELECTION_ITEM_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.contacts.extra.SELECTION_DEFAULT_SELECTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 119
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 120
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x0

    .line 121
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 122
    aget-boolean v4, v1, v3

    if-eqz v4, :cond_0

    .line 123
    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->setSelectedContactIds(Ljava/util/TreeSet;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onSelectedContactsChanged()V

    :cond_2
    return-void
.end method
