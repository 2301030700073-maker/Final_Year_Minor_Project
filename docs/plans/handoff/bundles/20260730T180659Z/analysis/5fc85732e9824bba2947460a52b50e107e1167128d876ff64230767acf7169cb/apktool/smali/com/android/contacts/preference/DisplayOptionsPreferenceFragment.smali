.class public Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayOptionsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;,
        Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;,
        Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;
    }
.end annotation


# instance fields
.field private mAreContactsAvailable:Z

.field private mHasProfile:Z

.field private mListener:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;

.field private mMyInfoPreference:Landroid/preference/Preference;

.field private mNewLocalProfileExtra:Ljava/lang/String;

.field private mProfileContactId:J

.field private final mProfileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/ViewGroup;

.field private mSaveServiceListener:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 146
    new-instance v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;-><init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mProfileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getProjection(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mListener:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 1

    .line 324
    new-instance v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$2;-><init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method private getProjection(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .line 337
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 340
    invoke-static {}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;->access$400()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 342
    :cond_0
    invoke-static {}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileQuery;->access$500()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;
    .locals 3

    .line 170
    new-instance v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-direct {v0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;-><init>()V

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "new_local_profile"

    .line 172
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "are_contacts_available"

    .line 173
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private removeUnsupportedPreferences()V
    .locals 3

    .line 279
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "sortOrder"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const v1, 0x7f05000c

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "phoneticNameDisplay"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    :cond_1
    invoke-static {}, Lcom/android/contactsbind/HelpUtils;->isHelpAndFeedbackAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "about"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const v1, 0x7f05000a

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "displayOrder"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 297
    invoke-static {v0}, Lcom/android/contacts/compat/TelephonyManagerCompat;->isVoiceCapable(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/BlockedNumberContract;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 302
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "blockedNumbers"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mAreContactsAvailable:Z

    if-nez v0, :cond_6

    .line 306
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "export"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    return-void
.end method

.method private setCustomContactsFilterSummary()V
    .locals 3

    const-string v0, "customContactsFilter"

    .line 400
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getPersistedFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 405
    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    const v1, 0x7f10016f

    .line 409
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const v1, 0x7f100171

    .line 407
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 320
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "defaultAccount"

    .line 314
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/DefaultAccountPreference;

    .line 315
    invoke-virtual {v0, p1}, Lcom/android/contacts/preference/DefaultAccountPreference;->setAccounts(Ljava/util/List;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 252
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mProfileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 254
    invoke-static {}, Lcom/android/contacts/model/AccountTypeManager;->writableFilter()Lcom/google/common/base/Predicate;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/contacts/model/account/AccountsLoader;->loadAccounts(Landroid/app/Fragment;ILcom/google/common/base/Predicate;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object p1

    .line 391
    invoke-static {p1, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 393
    invoke-direct {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->setCustomContactsFilterSummary()V

    goto :goto_0

    .line 395
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 182
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;

    iput-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mListener:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 184
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement ProfileListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130002

    .line 212
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 214
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "new_local_profile"

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mNewLocalProfileExtra:Ljava/lang/String;

    const-string v0, "are_contacts_available"

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mAreContactsAvailable:Z

    .line 218
    invoke-direct {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->removeUnsupportedPreferences()V

    const-string p1, "myInfo"

    .line 220
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mMyInfoPreference:Landroid/preference/Preference;

    const-string p1, "accounts"

    .line 222
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 223
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "import"

    .line 225
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 226
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "export"

    .line 228
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string p1, "blockedNumbers"

    .line 233
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    const-string p1, "about"

    .line 238
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    const-string p1, "customContactsFilter"

    .line 243
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 245
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    invoke-direct {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->setCustomContactsFilterSummary()V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 191
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mRootView:Landroid/view/ViewGroup;

    .line 192
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    iget-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 259
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 260
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mSaveServiceListener:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 347
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "about"

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-virtual {p1}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->showAboutFragment()V

    return v1

    :cond_0
    const-string v0, "import"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/interactions/ImportDialogFragment;->show(Landroid/app/FragmentManager;)V

    return v1

    :cond_1
    const-string v0, "export"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-static {p1, v0, v1}, Lcom/android/contacts/interactions/ExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/Class;I)V

    return v1

    :cond_2
    const-string v0, "myInfo"

    .line 359
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    iget-boolean p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mHasProfile:Z

    if-eqz p1, :cond_3

    .line 361
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mProfileContactId:J

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 362
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, p1, v2}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startQuickContact(Landroid/app/Activity;Landroid/net/Uri;I)V

    goto :goto_0

    .line 364
    :cond_3
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 365
    iget-object v0, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mNewLocalProfileExtra:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return v1

    :cond_4
    const-string v0, "accounts"

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 371
    invoke-static {}, Lcom/android/contacts/util/ImplicitIntentsUtil;->getIntentForAddingAccount()Landroid/content/Intent;

    move-result-object v0

    .line 370
    invoke-static {p1, v0}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityOutsideApp(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    :cond_5
    const-string v0, "blockedNumbers"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 374
    invoke-static {p1}, Lcom/android/contacts/compat/TelecomManagerUtil;->createManageBlockedNumbersIntent(Landroid/telecom/TelecomManager;)Landroid/content/Intent;

    move-result-object p1

    .line 376
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_6
    const-string v0, "customContactsFilter"

    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 380
    invoke-virtual {p0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object p1

    .line 381
    invoke-static {p0, v0, p1}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V

    :cond_7
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 199
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 201
    new-instance p1, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;-><init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;)V

    iput-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mSaveServiceListener:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;

    .line 202
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mSaveServiceListener:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/contacts/SimImportService;->BROADCAST_SIM_IMPORT_COMPLETE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public updateMyInfoPreference(ZLjava/lang/String;JI)V
    .locals 1

    if-nez p1, :cond_0

    const p2, 0x7f1001fa

    .line 267
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ne p5, v0, :cond_1

    .line 269
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p5

    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p5, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p2

    .line 271
    :cond_1
    :goto_0
    iget-object p5, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mMyInfoPreference:Landroid/preference/Preference;

    invoke-virtual {p5, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    iput-boolean p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mHasProfile:Z

    .line 273
    iput-wide p3, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mProfileContactId:J

    .line 274
    iget-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->mMyInfoPreference:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
