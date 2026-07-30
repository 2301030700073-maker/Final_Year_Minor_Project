.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/AppCompatContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$SaveServiceListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsView;
    }
.end annotation


# static fields
.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

.field private mDrawerFragment:Lcom/android/contacts/drawer/DrawerFragment;

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private final mFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

.field private mFloatingActionButtonContainer:Landroid/view/View;

.field private mFloatingActionButtonController:Lcom/android/contacts/widget/FloatingActionButtonController;

.field private mGroupUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mLayoutRoot:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

.field private mNewGroupAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mProviderStatus:Ljava/lang/Integer;

.field private final mProviderStatusListener:Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSaveServiceListener:Landroid/content/BroadcastReceiver;

.field private mShouldSwitchToAllContacts:Z

.field private mShouldSwitchToGroupView:Z

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mToggle:Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private wasLastFabAnimationScaleIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 328
    invoke-direct {p0}, Lcom/android/contacts/AppCompatContactsActivity;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->wasLastFabAnimationScaleIn:Z

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$1;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 245
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$2;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 254
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$3;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusListener:Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

    .line 329
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    .line 330
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 331
    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSyncStateUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->handleFilterChangeForFragment(Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->handleFilterChangeForActivity(Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PeopleActivity;Z)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/PeopleActivity;Landroid/content/Intent;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->onGroupDeleted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/content/Intent;
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->createPreferenceIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private areContactsAvailable()Z
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private createPreferenceIntent()Landroid/content/Intent;
    .locals 2

    .line 1260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "newLocalProfile"

    .line 1261
    invoke-virtual {v0, v1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createViewsAndFragments()V
    .locals 3

    const v0, 0x7f0c008f

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 531
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setUpListFragment(Landroid/app/FragmentManager;)V

    const-string v1, "contacts-groups"

    .line 533
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupMembersFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    const v0, 0x7f0900f5

    .line 536
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonContainer:Landroid/view/View;

    const v0, 0x7f0900f4

    .line 538
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 539
    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$5;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    new-instance v1, Lcom/android/contacts/widget/FloatingActionButtonController;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/contacts/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonController:Lcom/android/contacts/widget/FloatingActionButtonController;

    .line 549
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    const v0, 0x7f090186

    .line 551
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mLayoutRoot:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 553
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mShouldSwitchToGroupView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    const-string v0, "switchGroup"

    .line 555
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->switchToOrUpdateGroupView(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 556
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mShouldSwitchToGroupView:Z

    :cond_0
    return-void
.end method

.method private handleFilterChangeForActivity(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1

    .line 1061
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isAssistantView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->isContactsFilterType()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1062
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mShouldSwitchToAllContacts:Z

    .line 1065
    :cond_0
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNCompatible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1066
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x20

    .line 1067
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1069
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private handleFilterChangeForFragment(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->canSetActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilterAndUpdateTitle(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1052
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->scrollToTop()V

    :cond_0
    return-void
.end method

.method private initializeFabVisibility()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->shouldHideFab()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonController:Lcom/android/contacts/widget/FloatingActionButtonController;

    invoke-virtual {v0}, Lcom/android/contacts/widget/FloatingActionButtonController;->resetIn()V

    .line 661
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->shouldHideFab()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->wasLastFabAnimationScaleIn:Z

    return-void
.end method

.method private initializeHomeVisibility()V
    .locals 2

    .line 666
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupsFragmentInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupsFragmentInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getOptionsMenuContactsAvailable()Z

    move-result v0

    .line 756
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 757
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private static isGroupSaveAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "updateGroup"

    .line 475
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "addToGroup"

    .line 476
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "removeFromGroup"

    .line 477
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isGroupsFragmentInSearchMode()Z
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    .line 890
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGroupsFragmentInSelectionMode()Z
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    .line 885
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInThirdLevel()Z
    .locals 1

    const-string v0, "third-level"

    .line 1230
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->isLastBackStackTag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isLastBackStackTag(Ljava/lang/String;)Z
    .locals 4

    .line 1234
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 1237
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    if-nez p1, :cond_1

    .line 1239
    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1241
    :cond_1
    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private isListFragmentInSearchMode()Z
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 880
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isListFragmentInSelectionMode()Z
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 875
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeHandleInListFragment()Z
    .locals 3

    .line 846
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSelectionMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return v1

    .line 851
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 853
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->wasSearchResultClicked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->resetSearchResultClicked()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 856
    invoke-static {p0, v0}, Lcom/android/contacts/logging/Logger;->logScreenView(Landroid/app/Activity;I)V

    .line 857
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->createSearchState()Lcom/android/contacts/logging/SearchState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/logging/Logger;->logSearchEvent(Lcom/android/contacts/logging/SearchState;)V

    :goto_0
    return v1

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/AccountFilterUtil;->isAllContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 863
    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 866
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->switchToAllContacts()V

    return v1

    :cond_3
    return v2
.end method

.method private onBackPressedAssistantView()V
    .locals 1

    .line 836
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isInThirdLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->switchToAllContacts()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setDrawerLockMode(Z)V

    .line 840
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private onBackPressedGroupView()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->exitEditMode()V

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    .line 827
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0

    .line 831
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->switchToAllContacts()V

    :goto_0
    return-void
.end method

.method private onFilterMenuItemClicked(Landroid/content/Intent;)V
    .locals 4

    .line 957
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isInSecondLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->popSecondLevel()V

    const/4 v0, 0x1

    .line 959
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showFabWithAnimation(Z)V

    .line 962
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 963
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 964
    invoke-static {p0}, Lcom/android/contacts/util/AccountFilterUtil;->createContactsFilter(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    const/4 v3, 0x0

    .line 963
    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 965
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 967
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ACCOUNT_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 968
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    return-void
.end method

.method private onGroupDeleted(Landroid/content/Intent;)V
    .locals 3

    .line 910
    invoke-static {p1}, Lcom/android/contacts/ContactSaveService;->canUndo(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "accessibility"

    .line 913
    invoke-virtual {p0, v0}, Lcom/android/contacts/AppCompatContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 916
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a98

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f100139

    .line 917
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 919
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mLayoutRoot:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v2, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v2, Lcom/android/contacts/activities/PeopleActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/activities/PeopleActivity$6;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/content/Intent;)V

    const p1, 0x7f100240

    .line 920
    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    const v2, 0x7f060105

    .line 926
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 929
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mLayoutRoot:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mLayoutRoot:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 932
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private onGroupMenuItemClicked(J)V
    .locals 1

    .line 947
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/group/GroupMembersFragment;->isCurrentGroup(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 951
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    const-string p1, "switchGroup"

    .line 952
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->switchToOrUpdateGroupView(Ljava/lang/String;)V

    return-void
.end method

.method private onSyncStateUpdated()V
    .locals 5

    .line 208
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSearchMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 214
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 215
    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x3

    const-string v1, "PeopleActivity"

    .line 217
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Can not load swipeRefreshLayout, swipeRefreshLayout is null"

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 224
    :cond_2
    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v2, :cond_3

    .line 225
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->isGoogleAccountType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    new-instance v2, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v3, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->shouldShowSyncState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 230
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getWritableGoogleAccounts()Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 234
    :goto_0
    invoke-static {v0}, Lcom/android/contacts/util/SyncUtil;->isAnySyncing(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 237
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method private popSecondLevel()V
    .locals 3

    .line 1247
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "assistant-helper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1249
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "second-level"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 1251
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    .line 1252
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->resetToolBarStatusBarColor()V

    return-void
.end method

.method private processIntent(Z)Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const-string v0, "PeopleActivity"

    const/4 v1, 0x3

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " processIntent: forNewIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " intent="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 503
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    return v0

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result p1

    const/16 v1, 0x8c

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 519
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mShouldSwitchToGroupView:Z

    return v0

    .line 514
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onCreateGroupMenuItemClicked()V

    return v0

    .line 509
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 510
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object p1

    .line 509
    invoke-static {p0, p1, v0}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startQuickContact(Landroid/app/Activity;Landroid/net/Uri;I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetFilter()V
    .locals 3

    .line 1026
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1027
    invoke-static {p0}, Lcom/android/contacts/util/AccountFilterUtil;->createContactsFilter(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    const-string v2, "contactListFilter"

    .line 1028
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1029
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    return-void
.end method

.method private resetToolBarStatusBarColor()V
    .locals 2

    const v0, 0x7f0901ed

    .line 1035
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600e5

    .line 1036
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 1035
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0600e6

    .line 1037
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateStatusBarBackground(I)V

    return-void
.end method

.method private selectAccountForNewGroup()V
    .locals 5

    .line 1129
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->GROUPS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    .line 1130
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1129
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v0, 0x7f100137

    .line 1134
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1138
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 1139
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/activities/PeopleActivity;->onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    return-void

    .line 1142
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1000e1

    sget-object v2, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->GROUPS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    const-string v3, "selectAccountDialog"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/model/AccountTypeManager$AccountFilter;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private setUpListFragment(Landroid/app/FragmentManager;)V
    .locals 4

    const-string v0, "contacts-all"

    .line 571
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x1

    .line 575
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setAnimateOnLoad(Z)V

    .line 576
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090085

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 577
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 579
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsAvailable(Z)V

    .line 583
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilterListType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 584
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setParameters(Lcom/android/contacts/list/ContactsRequest;Z)V

    return-void
.end method

.method private shouldHideFab()Z
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isInSecondLevel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 678
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSearchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 679
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->isListFragmentInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method private shouldShowList()Z
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 748
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 749
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->hasNonLocalAccount()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Ljava/lang/Integer;

    .line 750
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private switchToOrUpdateGroupView(Ljava/lang/String;)V
    .locals 2

    .line 974
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupMembersFragment;->isInactive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/group/GroupMembersFragment;->updateExistingGroupFragment(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 977
    :cond_0
    sget-object p1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->switchView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    :goto_0
    return-void
.end method

.method private switchView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V
    .locals 5

    .line 986
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 988
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 989
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 990
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->popSecondLevel()V

    .line 991
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupView()Z

    move-result v1

    const v2, 0x7f090085

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/contacts/group/GroupMembersFragment;->newInstance(Landroid/net/Uri;)Lcom/android/contacts/group/GroupMembersFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    const-string v3, "contacts-groups"

    .line 993
    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isAssistantView()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "contacts-assistant"

    .line 996
    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    const-string v4, "contacts-unavailable"

    .line 997
    invoke-virtual {p1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v3, :cond_1

    .line 999
    invoke-static {}, Lcom/android/contactsbind/ObjectFactory;->getAssistantFragment()Landroid/app/Fragment;

    move-result-object v3

    :cond_1
    if-eqz v4, :cond_2

    .line 1002
    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1004
    :cond_2
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1005
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->resetToolBarStatusBarColor()V

    :cond_3
    :goto_0
    const-string v1, "second-level"

    .line 1007
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1008
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1009
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    const/4 p1, 0x0

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showFabWithAnimation(Z)V

    return-void
.end method

.method private toast(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 482
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateViewConfiguration(Z)V
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()I

    move-result v0

    if-nez p1, :cond_0

    .line 704
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 705
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Ljava/lang/Integer;

    .line 708
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 714
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->shouldShowList()Z

    move-result v1

    const-string v2, "contacts-unavailable"

    if-eqz v1, :cond_3

    .line 715
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_5

    .line 717
    invoke-virtual {p1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 719
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 724
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsAvailable(Z)V

    .line 725
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setEnabled(Z)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 731
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setEnabled(Z)V

    .line 733
    :cond_4
    new-instance v1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    .line 734
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const v3, 0x7f090086

    .line 735
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 736
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(I)V

    .line 738
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 739
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 740
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 743
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method

.method protected getGroupFragment()Lcom/android/contacts/group/GroupMembersFragment;
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    return-object v0
.end method

.method protected getListFragment()Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected isAccountView()Z
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    sget-object v1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ACCOUNT_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isAllContactsView()Z
    .locals 2

    .line 1218
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    sget-object v1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isAssistantView()Z
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    sget-object v1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupView()Z
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    sget-object v1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInSecondLevel()Z
    .locals 1

    .line 1226
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isAssistantView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected launchAssistant()V
    .locals 1

    .line 982
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->switchView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 1

    .line 1150
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mNewGroupAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string p2, "createGroup"

    .line 1151
    invoke-static {p1, p2}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->newInstanceForCreation(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;

    move-result-object p1

    .line 1153
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "groupNameEditDialog"

    invoke-virtual {p1, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public onAccountViewSelected(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    .line 1204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "contactListFilter"

    .line 1205
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1206
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->onFilterMenuItemClicked(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 787
    invoke-virtual {p0}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->closeDrawer()V

    return-void

    .line 798
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressedGroupView()V

    return-void

    .line 803
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isAssistantView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 804
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressedAssistantView()V

    return-void

    .line 810
    :cond_3
    invoke-static {p0}, Lcom/android/contactsbind/FeatureHighlightHelper;->tryRemoveHighlight(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 815
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->maybeHandleInListFragment()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 819
    :cond_5
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1106
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1107
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mToggle:Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContactsViewSelected(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V
    .locals 3

    .line 1168
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne p1, v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->switchToAllContacts()V

    goto :goto_0

    .line 1170
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne p1, v0, :cond_1

    .line 1171
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->launchAssistant()V

    :goto_0
    return-void

    .line 1173
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "ContactsPerf"

    const/4 v1, 0x3

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PeopleActivity.onCreate start"

    .line 347
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v2, 0x7f110126

    .line 351
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 352
    invoke-super {p0, p1}, Lcom/android/contacts/AppCompatContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 354
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 355
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 357
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    const/4 v2, 0x0

    .line 359
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 364
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    const v3, 0x7f0c002e

    .line 366
    invoke-super {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v3, 0x7f0901ec

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/contacts/AppCompatContactsActivity;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    iput-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 370
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v3, 0x7f0901ee

    .line 373
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/contacts/util/ViewUtil;->addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V

    const v3, 0x7f0900c9

    .line 376
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0900c7

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/drawer/DrawerFragment;

    iput-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerFragment:Lcom/android/contacts/drawer/DrawerFragment;

    .line 378
    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v9, 0x7f1001bd

    const v10, 0x7f1001bb

    move-object v4, v3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroidx/appcompat/app/AppCompatActivity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mToggle:Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

    .line 380
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v4, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 382
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mToggle:Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

    new-instance v4, Lcom/android/contacts/activities/PeopleActivity$4;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/PeopleActivity$4;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_2

    .line 391
    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->values()[Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    move-result-object v3

    const-string v4, "contactsView"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    goto :goto_0

    .line 393
    :cond_2
    sget-object v3, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    iput-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    :goto_0
    if-eqz p1, :cond_3

    const-string v3, "newGroupAccount"

    .line 396
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 398
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v3}, Lcom/android/contacts/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mNewGroupAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 401
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 402
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusListener:Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    .line 404
    :cond_4
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_5

    const-string v2, "groupUri"

    .line 407
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    .line 410
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments()V

    .line 412
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "PeopleActivity.onCreate finish"

    .line 413
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onCreateGroupMenuItemClicked()V
    .locals 5

    .line 1112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "android.provider.extra.ACCOUNT"

    .line 1114
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    :goto_0
    if-nez v2, :cond_1

    .line 1116
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->selectAccountForNewGroup()V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v3, "android.provider.extra.DATA_SET"

    .line 1119
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    :goto_1
    new-instance v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v0}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/activities/PeopleActivity;->onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public onCreateLabelButtonClicked()V
    .locals 0

    .line 1179
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onCreateGroupMenuItemClicked()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusListener:Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 654
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 655
    invoke-super {p0}, Lcom/android/contacts/AppCompatContactsActivity;->onDestroy()V

    return-void
.end method

.method public onDrawerItemClicked()V
    .locals 0

    .line 1163
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->closeDrawer()V

    return-void
.end method

.method public onGroupViewSelected(Lcom/android/contacts/group/GroupListItem;)V
    .locals 2

    .line 1199
    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onGroupMenuItemClicked(J)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 767
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 772
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 776
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 777
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onKeyDown(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 782
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLaunchHelpFeedback()V
    .locals 0

    .line 1194
    invoke-static {p0}, Lcom/android/contactsbind/HelpUtils;->launchHelpAndFeedbackForMainScreen(Landroid/app/Activity;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->initializeHomeVisibility()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 420
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createGroup"

    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Received group URI "

    const v3, 0x7f10013f

    const/4 v4, 0x2

    const-string v5, "PeopleActivity"

    if-eqz v1, :cond_2

    .line 422
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 424
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->toast(I)V

    return-void

    .line 427
    :cond_0
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1
    sget-object p1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->switchView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    .line 429
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {p1, v0}, Lcom/android/contacts/group/GroupMembersFragment;->toastForSaveAction(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupSaveAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 434
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 436
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->popSecondLevel()V

    .line 437
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->toast(I)V

    return-void

    .line 440
    :cond_3
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "removeFromGroup"

    .line 444
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->switchToOrUpdateGroupView(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_5
    sget-object v1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->switchView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mMembersFragment:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupMembersFragment;->toastForSaveAction(Ljava/lang/String;)V

    .line 452
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 454
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 459
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isInSecondLevel()Z

    move-result v0

    if-nez v0, :cond_8

    .line 465
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setParameters(Lcom/android/contacts/list/ContactsRequest;Z)V

    .line 467
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->initializeActionBarAdapter(Landroid/os/Bundle;)V

    .line 470
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->initializeFabVisibility()V

    .line 471
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method public onOpenSettings()V
    .locals 4

    .line 1184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$7;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$7;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 592
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSaveServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 594
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 596
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 597
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSyncStateUpdated()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1100
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1101
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mToggle:Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 905
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "groupUri"

    .line 906
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 607
    invoke-super {p0}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->onResume()V

    .line 609
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateStatusBarBackground()V

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mShouldSwitchToAllContacts:Z

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->switchToAllContacts()V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    const/4 v0, 0x1

    .line 618
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    const/4 v0, 0x7

    .line 620
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 625
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSyncStateUpdated()V

    .line 627
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->initializeFabVisibility()V

    .line 628
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->initializeHomeVisibility()V

    .line 630
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$SaveServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$SaveServiceListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mSaveServiceListener:Landroid/content/BroadcastReceiver;

    .line 631
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSaveServiceListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "groupDeleted"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 895
    invoke-super {p0, p1}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 896
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mNewGroupAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newGroupAccount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "contactsView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupUri:Landroid/net/Uri;

    const-string v1, "groupUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    const v0, 0x7f09008b

    .line 562
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 566
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setDrawerLockMode(Z)V
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1086
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1087
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mToggle:Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    goto :goto_0

    .line 1089
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mToggle:Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 1090
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_0
    return-void
.end method

.method public showConnectionErrorMsg()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mLayoutRoot:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f10009b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public showFabWithAnimation(Z)V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonContainer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 687
    iget-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->wasLastFabAnimationScaleIn:Z

    if-nez p1, :cond_1

    .line 688
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonController:Lcom/android/contacts/widget/FloatingActionButtonController;

    invoke-virtual {p1, v1}, Lcom/android/contacts/widget/FloatingActionButtonController;->scaleIn(I)V

    :cond_1
    const/4 p1, 0x1

    .line 691
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->wasLastFabAnimationScaleIn:Z

    goto :goto_0

    .line 694
    :cond_2
    iget-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->wasLastFabAnimationScaleIn:Z

    if-eqz p1, :cond_3

    .line 695
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFloatingActionButtonController:Lcom/android/contacts/widget/FloatingActionButtonController;

    invoke-virtual {p1}, Lcom/android/contacts/widget/FloatingActionButtonController;->scaleOut()V

    .line 698
    :cond_3
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->wasLastFabAnimationScaleIn:Z

    :goto_0
    return-void
.end method

.method public switchToAllContacts()V
    .locals 2

    .line 1015
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->popSecondLevel()V

    const/4 v0, 0x0

    .line 1016
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mShouldSwitchToAllContacts:Z

    .line 1017
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 1018
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerFragment:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    const/4 v0, 0x1

    .line 1019
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showFabWithAnimation(Z)V

    .line 1020
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsListFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->scrollToTop()V

    .line 1021
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->resetFilter()V

    const v0, 0x7f1000b7

    .line 1022
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 337
    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s@%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawerGroupMenu(J)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerFragment:Lcom/android/contacts/drawer/DrawerFragment;

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/drawer/DrawerFragment;->updateGroupMenu(J)V

    :cond_0
    return-void
.end method

.method public updateStatusBarBackground()V
    .locals 1

    const/4 v0, -0x1

    .line 636
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateStatusBarBackground(I)V

    return-void
.end method

.method public updateStatusBarBackground(I)V
    .locals 1

    .line 640
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 642
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 643
    invoke-static {p0}, Lcom/android/contacts/util/MaterialColorMapUtils;->getStatusBarColor(Landroid/app/Activity;)I

    move-result v0

    .line 642
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    .line 647
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 648
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method
