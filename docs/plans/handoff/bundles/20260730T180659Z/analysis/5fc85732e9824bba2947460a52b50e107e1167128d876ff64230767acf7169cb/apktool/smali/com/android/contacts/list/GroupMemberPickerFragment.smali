.class public Lcom/android/contacts/list/GroupMemberPickerFragment;
.super Lcom/android/contacts/list/MultiSelectContactsListFragment;
.source "GroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;,
        Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/MultiSelectContactsListFragment<",
        "Lcom/android/contacts/list/DefaultContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountDataSet:Ljava/lang/String;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;-><init>()V

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 189
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDisplayDirectoryHeader(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/GroupMemberPickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mContactIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getContactSelectionActivity()Lcom/android/contacts/activities/ContactSelectionActivity;
    .locals 2

    .line 288
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    instance-of v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Lcom/android/contacts/activities/ContactSelectionActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/contacts/list/GroupMemberPickerFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/contacts/list/GroupMemberPickerFragment;"
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accountName"

    .line 176
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "accountType"

    .line 177
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "accountDataSet"

    .line 178
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "contactIds"

    .line 179
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    new-instance p0, Lcom/android/contacts/list/GroupMemberPickerFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/GroupMemberPickerFragment;-><init>()V

    .line 182
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private static setVisible(Landroid/view/Menu;IZ)V
    .locals 0

    .line 296
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 298
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/list/GroupMemberPickerFragment;->createListAdapter()Lcom/android/contacts/list/DefaultContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/DefaultContactListAdapter;
    .locals 4

    .line 247
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 248
    iget-object v1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountDataSet:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/list/ContactListFilter;->createGroupMembersFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 251
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0028

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "contactIds"

    const-string v1, "accountDataSet"

    const-string v2, "accountType"

    const-string v3, "accountName"

    if-nez p1, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountName:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountType:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountDataSet:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mContactIds:Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountName:Ljava/lang/String;

    .line 202
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountType:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountDataSet:Ljava/lang/String;

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mContactIds:Ljava/util/ArrayList;

    .line 206
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 271
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0001

    .line 272
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->isDisplayingCheckBoxes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onItemClick(IJ)V

    return-void

    .line 261
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mListener:Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;

    if-eqz p2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactId(I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 264
    iget-object p3, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mListener:Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;

    invoke-interface {p3, p1, p2}, Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;->onGroupMemberClicked(J)V

    :cond_1
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 233
    new-instance v0, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;-><init>(Lcom/android/contacts/list/GroupMemberPickerFragment;Landroid/database/Cursor;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f09002d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 236
    new-instance v6, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object p2, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountDataSet:Ljava/lang/String;

    invoke-direct {v6, p2, v1, v2}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 239
    invoke-virtual {v0}, Lcom/android/contacts/list/GroupMemberPickerFragment$FilterCursorWrapper;->getCount()I

    move-result v7

    move-object v2, p0

    .line 238
    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->bindListHeader(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/contacts/model/account/AccountWithDataSet;I)V

    .line 241
    invoke-super {p0, p1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/GroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 306
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return v1

    :cond_1
    const v2, 0x7f09013a

    if-ne v0, v2, :cond_3

    .line 312
    iget-object p1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mListener:Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;

    if-eqz p1, :cond_2

    .line 313
    invoke-interface {p1}, Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;->onSelectGroupMembers()V

    :cond_2
    return v1

    .line 317
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 277
    invoke-direct {p0}, Lcom/android/contacts/list/GroupMemberPickerFragment;->getContactSelectionActivity()Lcom/android/contacts/activities/ContactSelectionActivity;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mContactIds:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v0, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 279
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->isSearchMode()Z

    move-result v4

    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 280
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->isSelectionMode()Z

    move-result v0

    :goto_2
    const v5, 0x7f090139

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 283
    :goto_3
    invoke-static {p1, v5, v6}, Lcom/android/contacts/list/GroupMemberPickerFragment;->setVisible(Landroid/view/Menu;IZ)V

    const v5, 0x7f09013a

    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 284
    :goto_4
    invoke-static {p1, v5, v2}, Lcom/android/contacts/list/GroupMemberPickerFragment;->setVisible(Landroid/view/Menu;IZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountName:Ljava/lang/String;

    const-string v1, "accountName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountType:Ljava/lang/String;

    const-string v1, "accountType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mAccountDataSet:Ljava/lang/String;

    const-string v1, "accountDataSet"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mContactIds:Ljava/util/ArrayList;

    const-string v1, "contactIds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/contacts/list/GroupMemberPickerFragment;->mListener:Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;

    return-void
.end method
