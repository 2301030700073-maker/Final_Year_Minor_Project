.class public final Lcom/android/contacts/preference/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"

# interfaces
.implements Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# instance fields
.field private mAreContactsAvailable:Z

.field private mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private mNewLocalProfileExtra:Ljava/lang/String;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setActivityTitle(I)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "resourceId"

    .line 223
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "subscriptionId"

    .line 224
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 223
    invoke-static {p0, v0, p1, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/app/Activity;ILcom/android/contacts/model/account/AccountWithDataSet;I)V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f10002c

    .line 187
    invoke-direct {p0, v0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 190
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 74
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 79
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newLocalProfile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mNewLocalProfileExtra:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 81
    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mAreContactsAvailable:Z

    const v1, 0x7f10002c

    if-nez p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mNewLocalProfileExtra:Ljava/lang/String;

    .line 85
    invoke-static {p1, v0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->newInstance(Ljava/lang/String;Z)Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x1020002

    const-string v3, "display_options"

    .line 87
    invoke-virtual {v0, v2, p1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 89
    invoke-direct {p0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "about_contacts"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/preference/AboutPreferenceFragment;

    if-eqz p1, :cond_3

    const p1, 0x7f1001fb

    .line 95
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 141
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method public onProfileLoaded(Landroid/database/Cursor;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 207
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 208
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 209
    :goto_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v0, 0x3

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v10, v0

    move v6, v1

    move-wide v8, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    move-wide v8, v3

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 213
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1001a6

    .line 214
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_2

    :cond_2
    move-object v7, v2

    .line 217
    :goto_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "display_options"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    .line 218
    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->updateMyInfoPreference(ZLjava/lang/String;JI)V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 147
    iget-object p2, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected showAboutFragment()V
    .locals 4

    .line 168
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/android/contacts/preference/AboutPreferenceFragment;->newInstance()Lcom/android/contacts/preference/AboutPreferenceFragment;

    move-result-object v1

    const v2, 0x1020002

    const-string v3, "about_contacts"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const v0, 0x7f1001fb

    .line 172
    invoke-direct {p0, v0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    return-void
.end method
