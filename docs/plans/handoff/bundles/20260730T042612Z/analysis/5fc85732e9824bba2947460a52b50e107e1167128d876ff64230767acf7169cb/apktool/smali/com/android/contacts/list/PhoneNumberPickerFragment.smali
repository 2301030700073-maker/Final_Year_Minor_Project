.class public Lcom/android/contacts/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
.implements Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;",
        "Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;"
    }
.end annotation


# instance fields
.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mShortcutAction:Ljava/lang/String;

.field private mUseCallableUri:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setQuickContactEnabled(Z)V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private callNumber(IZ)V
    .locals 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->cacheContactInfo(I)V

    .line 162
    iget-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getCallInitiationType(Z)I

    move-result v1

    .line 162
    invoke-interface {p1, v0, p2, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 165
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Item at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was clicked before adapter is ready. Ignoring"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneNumberPicker"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected cacheContactInfo(I)V
    .locals 0

    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .line 222
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 233
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/list/ContactEntryListAdapter;)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 2

    .line 214
    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 216
    iget-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    return-object v0
.end method

.method protected getCallInitiationType(Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getPhoneNumber(I)Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 182
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected getVisibleScrollbarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0028

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getVisibleScrollbarEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0

    const/4 p2, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->callNumber(IZ)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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

    .line 198
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_0

    .line 201
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 130
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getCallInitiationType(Z)I

    move-result v2

    .line 266
    invoke-interface {v0, p1, v1, v2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickDataUri(Landroid/net/Uri;ZI)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    const-string v1, "filter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    const-string v1, "shortcutAction"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {p1, p2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    return-void
.end method

.method public onVideoCallIconClicked(I)V
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->callNumber(IZ)V

    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;Z)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getCallInitiationType(Z)I

    move-result v1

    .line 247
    invoke-interface {v0, p1, p2, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickDataUri(Landroid/net/Uri;ZI)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startPhoneNumberShortcutIntent(Landroid/net/Uri;Z)V

    :goto_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "filter"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    const-string v0, "shortcutAction"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    return-void
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    return-void
.end method

.method protected setPhotoPosition(Lcom/android/contacts/list/ContactEntryListAdapter;)V
    .locals 1

    .line 237
    check-cast p1, Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    return-void
.end method

.method protected startLoading()V
    .locals 0

    .line 193
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method protected startPhoneNumberShortcutIntent(Landroid/net/Uri;Z)V
    .locals 1

    .line 255
    new-instance p2, Lcom/android/contacts/ShortcutIntentBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/android/contacts/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
