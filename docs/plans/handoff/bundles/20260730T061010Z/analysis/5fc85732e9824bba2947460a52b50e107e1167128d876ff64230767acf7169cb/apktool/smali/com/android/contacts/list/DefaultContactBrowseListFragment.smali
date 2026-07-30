.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;
    }
.end annotation


# instance fields
.field private mAccountFilterContainer:Landroid/view/View;

.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private final mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private mActivity:Lcom/android/contacts/activities/PeopleActivity;

.field private final mAddContactListener:Landroid/view/View$OnClickListener;

.field private mAlertContainer:Landroid/view/View;

.field private mAlertDismissIcon:Landroid/widget/ImageView;

.field private mAlertText:Landroid/widget/TextView;

.field private mCanSetActionBar:Z

.field private final mCancelRefresh:Ljava/lang/Runnable;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsAvailable:Z

.field private mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mDisableOptionItemSelected:Z

.field private mEmptyAccountView:Landroid/view/View;

.field private mEmptyHomeView:Landroid/view/View;

.field private mEnableDebugMenuOptions:Z

.field private mFragmentInitialized:Z

.field private mFromOnNewIntent:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeletionInProgress:Z

.field private mIsRecreatedInstance:Z

.field private mOptionsMenuContactsAvailable:Z

.field private mReasonSyncOff:I

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSearchResultClicked:Z

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mWritableAccountsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 245
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCancelRefresh:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mReasonSyncOff:I

    .line 129
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCanSetActionBar:Z

    .line 162
    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 238
    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddContactListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setQuickContactEnabled(Z)V

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDisplayDirectoryHeader(Z)V

    .line 253
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRecreatedInstance:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->turnSyncOn()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dismiss()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCancelRefresh:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/os/Handler;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->syncContacts(Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)I
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListTypeIncludingSearch()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilterAndUpdateTitle(Lcom/android/contacts/list/ContactListFilter;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsDeletionInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->maybeShowHamburgerFeatureHighlight()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->maybeHideCheckBoxes()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSyncOffAlert()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSwipeRefreshLayoutEnabledOrNot(Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureContactListFragment()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEnableDebugMenuOptions:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEnableDebugMenuOptions:Z

    return p1
.end method

.method private bindListHeader(I)V
    .locals 9

    .line 311
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-gtz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowEmptyView(Lcom/android/contacts/list/ContactListFilter;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->isContactsFilterType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyHomeView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeViewVisible(Landroid/view/View;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyAccountView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeViewVisible(Landroid/view/View;)V

    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterContainer:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeViewVisible(Landroid/view/View;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->hideHeaderAndAddPadding(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 325
    :cond_2
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->bindListHeaderCustom(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    .line 328
    new-instance v7, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-direct {v7, v1, v2, v0}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterContainer:Landroid/view/View;

    move-object v3, p0

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->bindListHeader(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/contacts/model/account/AccountWithDataSet;I)V

    goto :goto_1

    .line 333
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->hideHeaderAndAddPadding(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private checkHeaderViewVisibility()V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 801
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private configureContactListFragment()V
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilterAndUpdateTitle(Lcom/android/contacts/list/ContactListFilter;)V

    .line 898
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getScrollBarPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVerticalScrollbarPosition(I)V

    const/4 v0, 0x0

    .line 899
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSelectionVisible(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private configureContactListFragmentForRequest()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 748
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method private configureFragment()V
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFragmentInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFromOnNewIntent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFragmentInitialized:Z

    .line 699
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFromOnNewIntent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 700
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFromOnNewIntent:Z

    .line 701
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureFragmentForRequest()V

    .line 704
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureContactListFragment()V

    return-void
.end method

.method private configureFragmentForRequest()V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 710
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x5

    .line 716
    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/AccountFilterUtil;->createContactsFilter(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 729
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    const/4 v1, 0x0

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    .line 737
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 738
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureContactListFragmentForRequest()V

    return-void
.end method

.method private deleteSelectedContacts()V
    .locals 3

    .line 1145
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->start(Landroid/app/Fragment;Ljava/util/TreeSet;)Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    move-result-object v0

    .line 1146
    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->setListener(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;)V

    const/4 v0, 0x1

    .line 1147
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsDeletionInProgress:Z

    return-void
.end method

.method private dismiss()V
    .locals 2

    .line 559
    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mReasonSyncOff:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/SharedPreferenceUtil;->incNumOfDismissesForAutoSyncOff(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 562
    invoke-static {v0, v1}, Lcom/android/contacts/util/SharedPreferenceUtil;->incNumOfDismissesForAccountSyncOff(Landroid/content/Context;Ljava/lang/String;)V

    .line 565
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getEmptyAccountView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6

    const v0, 0x7f0c005e

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900d0

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 457
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 459
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 461
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 462
    div-int/2addr v2, v3

    add-int/2addr v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    .line 463
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09004e

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 469
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private getEmptyHomeView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0c0060

    const/4 v1, 0x0

    .line 434
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900d7

    .line 436
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 437
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 438
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 439
    div-int/lit8 v2, v2, 0x2

    .line 440
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 441
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    .line 442
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09004e

    .line 447
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 448
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAddContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private getListTypeIncludingSearch()I
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListType()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getScrollBarPosition()I
    .locals 2

    .line 904
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 906
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method private hasExportIntentHandler()Z
    .locals 3

    .line 1044
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.providers.contacts.DUMP_DATABASE"

    .line 1045
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initSwipeRefreshLayout()V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 574
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 593
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 598
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 599
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 598
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setDistanceToTriggerSync(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060107
        0x7f060108
        0x7f060109
        0x7f06010a
    .end array-data
.end method

.method private isAllContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->isContactsFilterType()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTalkbackOnAndOnPreLollipopMr1()Z
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 306
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private joinSelectedContacts()V
    .locals 2

    .line 1135
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1137
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIdsArray()[J

    move-result-object v1

    .line 1136
    invoke-static {v0, v1}, Lcom/android/contacts/ContactSaveService;->createJoinSeveralContactsIntent(Landroid/content/Context;[J)Landroid/content/Intent;

    move-result-object v1

    .line 1138
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1140
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 0

    .line 1037
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1039
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private makeViewVisible(Landroid/view/View;)V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyAccountView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyHomeView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private maybeHideCheckBoxes()V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 776
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    :cond_0
    return-void
.end method

.method private maybeShowHamburgerFeatureHighlight()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 293
    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isTalkbackOnAndOnPreLollipopMr1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getShouldShowHamburgerPromo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contactsbind/FeatureHighlightHelper;->showHamburgerFeatureHighlight(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/SharedPreferenceUtil;->setHamburgerPromoDisplayedBefore(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 990
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z

    move-result v1

    .line 989
    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    return-void
.end method

.method private setDirectorySearchMode()V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 753
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    :goto_0
    return-void
.end method

.method private setFilterAndUpdateTitle(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 1

    .line 862
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->updateListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 864
    iget-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {p2, p1}, Lcom/android/contacts/util/AccountFilterUtil;->getActionBarTitleForFilter(Landroid/content/Context;Lcom/android/contacts/list/ContactListFilter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 867
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSyncOffAlert()V

    .line 870
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSwipeRefreshLayoutEnabledOrNot(Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method private setSwipeRefreshLayoutEnabledOrNot(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    .line 874
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x3

    const-string v0, "DefaultListFragment"

    .line 876
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Can not load swipeRefreshLayout, swipeRefreshLayout is null"

    .line 877
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 882
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 883
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    if-eqz p1, :cond_3

    .line 885
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 886
    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 887
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->isSyncable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 888
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->shouldShowSyncState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 889
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/util/SyncUtil;->hasSyncableAccount(Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 890
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private setSyncOffAlert()V
    .locals 4

    .line 630
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 632
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->isGoogleAccountType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 635
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->isContactsFilterType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/contacts/util/SyncUtil;->calculateReasonSyncOff(Landroid/content/Context;Landroid/accounts/Account;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mReasonSyncOff:I

    .line 640
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mReasonSyncOff:I

    invoke-static {v0, v1, v3}, Lcom/android/contacts/util/SyncUtil;->isAlertVisible(Landroid/content/Context;Landroid/accounts/Account;I)Z

    move-result v0

    .line 641
    iget v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mReasonSyncOff:I

    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSyncOffMsg(I)V

    .line 642
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setSyncOffMsg(I)V
    .locals 2

    .line 647
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertText:Landroid/widget/TextView;

    const v1, 0x7f100025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertText:Landroid/widget/TextView;

    const v1, 0x7f100037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private shareSelectedContacts()V
    .locals 6

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1099
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1100
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1099
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1102
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1101
    invoke-static {v3, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 1107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 1110
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/16 v3, 0x3a

    .line 1112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1116
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 1119
    :cond_4
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    .line 1121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    .line 1123
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 1124
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 1126
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0006

    .line 1127
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    .line 1126
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1130
    :catch_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100200

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private shouldShowEmptyView(Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 347
    iget v2, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v1, -0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_6

    .line 363
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v1}, Lcom/android/contacts/util/SyncUtil;->isSyncStatusPendingOrActive(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 365
    invoke-static {v1}, Lcom/android/contacts/util/SyncUtil;->isUnsyncableGoogleAccount(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 350
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableGoogleAccounts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountInfo;

    .line 355
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountWithDataSet;->getAccountOrNull()Landroid/accounts/Account;

    move-result-object v1

    .line 356
    invoke-static {v1}, Lcom/android/contacts/util/SyncUtil;->isSyncStatusPendingOrActive(Landroid/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 357
    invoke-static {v1}, Lcom/android/contacts/util/SyncUtil;->isUnsyncableGoogleAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_5
    return v3

    :cond_6
    return v0
.end method

.method private showSearchProgress(Z)V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 794
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private syncContacts(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 611
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "expedited"

    const/4 v2, 0x1

    .line 612
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "force"

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 615
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mWritableAccountsFuture:Ljava/util/concurrent/Future;

    .line 616
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 615
    invoke-static {v1}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 617
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListFilter;->getSyncableAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 618
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 621
    invoke-static {v1}, Lcom/android/contacts/util/SyncUtil;->isSyncStatusPendingOrActive(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    invoke-static {v1}, Lcom/android/contacts/util/SyncUtil;->isUnsyncableGoogleAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    const-string v2, "com.android.contacts"

    .line 623
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private turnSyncOn()V
    .locals 3

    .line 525
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 526
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mReasonSyncOff:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 528
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 531
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 533
    :cond_0
    new-instance v1, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;-><init>()V

    .line 535
    invoke-static {p0, v0}, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;->show(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public canSetActionBar()Z
    .locals 1

    .line 1247
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCanSetActionBar:Z

    return v0
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 1

    .line 274
    new-instance v0, Lcom/android/contacts/list/FavoritesAndContactsLoader;

    invoke-direct {v0, p1}, Lcom/android/contacts/list/FavoritesAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 2

    .line 404
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v1, 0x1

    .line 406
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    const/4 v1, 0x0

    .line 408
    invoke-static {v1}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    return-object v0
.end method

.method public getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsMenuContactsAvailable()Z
    .locals 1

    .line 1198
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mOptionsMenuContactsAvailable:Z

    return v0
.end method

.method public getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0c0028

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09002d

    .line 421
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterContainer:Landroid/view/View;

    const v0, 0x7f090082

    .line 424
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 425
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getEmptyAccountView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyAccountView:Landroid/view/View;

    .line 426
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getEmptyHomeView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyHomeView:Landroid/view/View;

    .line 427
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyAccountView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEmptyHomeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public initializeActionBarAdapter(Landroid/os/Bundle;)V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 661
    invoke-super {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 663
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    .line 664
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 665
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v5

    const v6, 0x7f100116

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/app/Activity;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroidx/appcompat/app/ActionBar;Landroidx/appcompat/widget/Toolbar;I)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x1

    .line 667
    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setShowHomeIcon(Z)V

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->initializeActionBarAdapter(Landroid/os/Bundle;)V

    .line 669
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 673
    :cond_0
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setCheckBoxListListener(Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;)V

    .line 674
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    if-eqz p1, :cond_2

    const-string v0, "deletionInProgress"

    .line 676
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteSelectedContacts()V

    :cond_1
    const-string v0, "search_result_clicked"

    .line 679
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchResultClicked:Z

    .line 682
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode()V

    .line 683
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCanSetActionBar:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 1179
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/contacts/list/ContactEntryListFragment;->onPickerResult(Landroid/content/Intent;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x4

    .line 1183
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListTypeIncludingSearch()I

    move-result p2

    .line 1184
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result p3

    .line 1185
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    .line 1182
    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 475
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 476
    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRecreatedInstance:Z

    .line 477
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 478
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 482
    iget-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRecreatedInstance:Z

    if-eqz p1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object p1

    goto :goto_1

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/util/AccountFilterUtil;->createContactsFilter(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p1

    .line 485
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 995
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isInSecondLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 999
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0003

    .line 1000
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    .line 490
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 492
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->initSwipeRefreshLayout()V

    .line 496
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c009d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 497
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    .line 498
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p2, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 500
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 502
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09019c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    .line 503
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const p2, 0x7f0901f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    .line 505
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090056

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    const p2, 0x7f090058

    .line 506
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertText:Landroid/widget/TextView;

    .line 507
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    const p2, 0x7f090057

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertDismissIcon:Landroid/widget/ImageView;

    .line 508
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertText:Landroid/widget/TextView;

    new-instance p2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;

    invoke-direct {p2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertDismissIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;

    invoke-direct {p2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1225
    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1227
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEnableAutoSync(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 4

    const/4 v0, 0x1

    .line 542
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mWritableAccountsFuture:Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 547
    invoke-static {v1}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 548
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListFilter;->getSyncableAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 549
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 550
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 551
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.contacts"

    invoke-static {v2, v1, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlertContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->isDisplayingCheckBoxes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onItemClick(IJ)V

    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 395
    iput-boolean p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchResultClicked:Z

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->createSearchStateForSearchResultClick(I)Lcom/android/contacts/logging/SearchState;

    move-result-object p2

    invoke-static {p2}, Lcom/android/contacts/logging/Logger;->logSearchEvent(Lcom/android/contacts/logging/SearchState;)V

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactListAdapter;->isEnterpriseContact(I)Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->viewContact(ILandroid/net/Uri;Z)V

    return-void
.end method

.method public onKeyDown(I)Z
    .locals 4

    .line 1231
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    new-instance v0, Ljava/lang/String;

    new-array v3, v1, [I

    aput p1, v3, v2

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([III)V

    .line 1238
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1239
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    return v1

    :cond_1
    return v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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

    .line 279
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->bindListHeader(I)V

    .line 282
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 284
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->maybeShowHamburgerFeatureHighlight()V

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz p1, :cond_3

    .line 287
    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateOverflowButtonColor()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1054
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisableOptionItemSelected:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1058
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 1060
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1062
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    :cond_1
    return v2

    :cond_2
    const v1, 0x7f090139

    if-ne v0, v1, :cond_4

    .line 1066
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1067
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_3
    return v2

    :cond_4
    const v1, 0x7f09013e

    if-ne v0, v1, :cond_5

    .line 1071
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shareSelectedContacts()V

    return v2

    :cond_5
    const v1, 0x7f090132

    if-ne v0, v1, :cond_6

    const/4 p1, 0x6

    .line 1075
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListTypeIncludingSearch()I

    move-result v0

    .line 1076
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    const/4 v3, -0x1

    .line 1077
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    .line 1074
    invoke-static {p1, v0, v1, v3, v4}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    .line 1078
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->joinSelectedContacts()V

    return v2

    :cond_6
    const v1, 0x7f09012d

    if-ne v0, v1, :cond_7

    .line 1081
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteSelectedContacts()V

    return v2

    :cond_7
    const v1, 0x7f0900ea

    if-ne v0, v1, :cond_8

    .line 1084
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.providers.contacts.DUMP_DATABASE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x80000

    .line 1085
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityOutsideApp(Landroid/content/Context;Landroid/content/Intent;)V

    return v2

    .line 1089
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1218
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mOptionsMenuContactsAvailable:Z

    .line 1219
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 1005
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsAvailable:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mOptionsMenuContactsAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 1011
    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const v3, 0x7f090139

    xor-int/lit8 v4, v0, 0x1

    .line 1012
    invoke-direct {p0, p1, v3, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1014
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1015
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const v4, 0x7f09013e

    .line 1016
    invoke-direct {p0, p1, v4, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    const v4, 0x7f09012d

    .line 1017
    invoke-direct {p0, p1, v4, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1018
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1019
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    const v4, 0x7f090132

    .line 1020
    invoke-direct {p0, p1, v4, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0900ea

    .line 1023
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEnableDebugMenuOptions:Z

    if-eqz v4, :cond_5

    .line 1024
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hasExportIntentHandler()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 1023
    :goto_4
    invoke-direct {p0, p1, v3, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1027
    :goto_5
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1028
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 1030
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060020

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 761
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onResume()V

    .line 762
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureFragment()V

    .line 763
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->maybeShowHamburgerFeatureHighlight()V

    .line 766
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisableOptionItemSelected:Z

    .line 768
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->maybeHideCheckBoxes()V

    .line 770
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 771
    invoke-static {}, Lcom/android/contacts/model/AccountTypeManager;->writableFilter()Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 770
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mWritableAccountsFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1203
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1207
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1208
    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1209
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x1

    .line 1211
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisableOptionItemSelected:Z

    .line 1212
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsDeletionInProgress:Z

    const-string v1, "deletionInProgress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1213
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchResultClicked:Z

    const-string v1, "search_result_clicked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public resetSearchResultClicked()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchResultClicked:Z

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setContactsAvailable(Z)V
    .locals 0

    .line 982
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsAvailable:Z

    return-void
.end method

.method public setFilterAndUpdateTitle(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1

    const/4 v0, 0x1

    .line 858
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilterAndUpdateTitle(Lcom/android/contacts/list/ContactListFilter;Z)V

    return-void
.end method

.method protected setListHeader()V
    .locals 3

    .line 807
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 820
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 821
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 823
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_1

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 826
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 828
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_1

    .line 817
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 818
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    :goto_1
    return-void
.end method

.method public setParameters(Lcom/android/contacts/list/ContactsRequest;Z)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 1169
    iput-boolean p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFromOnNewIntent:Z

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 0

    .line 786
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 787
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 788
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    :cond_0
    return-void
.end method

.method public wasSearchResultClicked()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchResultClicked:Z

    return v0
.end method
