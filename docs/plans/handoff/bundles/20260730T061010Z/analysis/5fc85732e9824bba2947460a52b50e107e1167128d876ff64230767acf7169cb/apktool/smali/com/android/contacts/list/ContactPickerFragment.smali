.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field private mShortcutRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x2

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/contacts/list/HeaderEntryContactListAdapter;

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x2

    .line 138
    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    const/4 v2, 0x1

    .line 140
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 141
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 143
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->setShowCreateContact(Z)V

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c002d

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onItemClick(IJ)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p2, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 111
    :cond_1
    iget-boolean p2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 113
    :cond_2
    iget-boolean p2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz p2, :cond_3

    .line 114
    new-instance p2, Lcom/android/contacts/ShortcutIntentBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/contacts/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 115
    invoke-virtual {p2, p1}, Lcom/android/contacts/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_0
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    const-string v1, "editMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    const-string v1, "createContactEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    const-string v1, "shortcutRequested"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "editMode"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    const-string v0, "createContactEnabled"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    const-string v0, "shortcutRequested"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    return-void
.end method

.method public setCreateContactEnabled(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    return-void
.end method

.method public setShortcutRequested(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    return-void
.end method
