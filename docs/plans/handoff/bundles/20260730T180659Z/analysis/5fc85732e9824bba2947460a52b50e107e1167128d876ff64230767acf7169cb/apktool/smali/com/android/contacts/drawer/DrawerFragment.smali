.class public Lcom/android/contacts/drawer/DrawerFragment;
.super Landroid/app/Fragment;
.source "DrawerFragment.java"

# interfaces
.implements Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/drawer/DrawerFragment$WindowInsetsListener;,
        Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;,
        Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;
    }
.end annotation


# instance fields
.field private mAccountsLoaded:Z

.field private mCurrentContactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

.field private mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

.field private mDrawerListView:Landroid/widget/ListView;

.field private final mFiltersLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGroupListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/group/GroupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupsLoaded:Z

.field private mHasGroupWritableAccounts:Z

.field private mListener:Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

.field private mObserver:Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;

.field private final mOnDrawerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mScrimDrawable:Lcom/android/contacts/drawer/ScrimDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupListItems:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/android/contacts/drawer/DrawerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/drawer/DrawerFragment$1;-><init>(Lcom/android/contacts/drawer/DrawerFragment;)V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mFiltersLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 113
    new-instance v0, Lcom/android/contacts/drawer/DrawerFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/drawer/DrawerFragment$2;-><init>(Lcom/android/contacts/drawer/DrawerFragment;)V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 232
    new-instance v0, Lcom/android/contacts/drawer/DrawerFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/drawer/DrawerFragment$3;-><init>(Lcom/android/contacts/drawer/DrawerFragment;)V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mOnDrawerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/drawer/DrawerFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupListItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/contacts/drawer/DrawerFragment;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupsLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/drawer/DrawerFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerFragment;->notifyIfReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mListener:Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/contacts/drawer/DrawerFragment;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/contacts/drawer/DrawerFragment;->applyTopInset(I)V

    return-void
.end method

.method private applyTopInset(I)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mScrimDrawable:Lcom/android/contacts/drawer/ScrimDrawable;

    invoke-virtual {v0, p1}, Lcom/android/contacts/drawer/ScrimDrawable;->setIntrinsicHeight(I)V

    .line 303
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    .line 304
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    .line 305
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    .line 303
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method private loadGroupsAndFilters()V
    .locals 4

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mFiltersLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 221
    sget-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->GROUPS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/android/contacts/model/account/AccountsLoader;->loadAccounts(Landroid/app/Fragment;ILcom/google/common/base/Predicate;)V

    .line 223
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private notifyIfReady()V
    .locals 3

    .line 288
    iget-boolean v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mAccountsLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupsLoaded:Z

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 290
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupListItem;

    .line 292
    invoke-static {v1}, Lcom/android/contacts/group/GroupUtil;->isEmptyFFCGroup(Lcom/android/contacts/group/GroupListItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mGroupListItems:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/contacts/drawer/DrawerFragment;->mHasGroupWritableAccounts:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/drawer/DrawerAdapter;->setGroups(Ljava/util/List;Z)V

    :cond_2
    return-void
.end method


# virtual methods
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

    .line 282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mHasGroupWritableAccounts:Z

    .line 283
    iput-boolean v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mAccountsLoaded:Z

    .line 284
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerFragment;->notifyIfReady()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 150
    instance-of v0, p1, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mListener:Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    return-void

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity must implement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0c0051

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090122

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    .line 163
    new-instance p2, Lcom/android/contacts/drawer/DrawerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/contacts/drawer/DrawerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    .line 164
    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mCurrentContactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {p2, v1}, Lcom/android/contacts/drawer/DrawerAdapter;->setSelectedContactsView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    .line 165
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerFragment;->loadGroupsAndFilters()V

    .line 166
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mOnDrawerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p3, :cond_0

    .line 171
    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->values()[Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    move-result-object p2

    const-string v1, "contactsView"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object p2, p2, v1

    .line 172
    invoke-virtual {p0, p2}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    const-string p2, "selectedGroup"

    .line 173
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 174
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    invoke-virtual {p2, v1, v2}, Lcom/android/contacts/drawer/DrawerAdapter;->setSelectedGroupId(J)V

    const-string p2, "selectedAccount"

    .line 175
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/ContactListFilter;

    .line 176
    iget-object p3, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    invoke-virtual {p3, p2}, Lcom/android/contacts/drawer/DrawerAdapter;->setSelectedAccount(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 178
    :cond_0
    sget-object p2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    :goto_0
    const p2, 0x7f0900c8

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const/4 p3, 0x1

    .line 182
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 183
    new-instance p3, Lcom/android/contacts/drawer/DrawerFragment$WindowInsetsListener;

    invoke-direct {p3, p0, v0}, Lcom/android/contacts/drawer/DrawerFragment$WindowInsetsListener;-><init>(Lcom/android/contacts/drawer/DrawerFragment;Lcom/android/contacts/drawer/DrawerFragment$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x37

    .line 184
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 186
    new-instance p3, Lcom/android/contacts/drawer/ScrimDrawable;

    invoke-direct {p3}, Lcom/android/contacts/drawer/ScrimDrawable;-><init>()V

    iput-object p3, p0, Lcom/android/contacts/drawer/DrawerFragment;->mScrimDrawable:Lcom/android/contacts/drawer/ScrimDrawable;

    .line 187
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 228
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mListener:Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 213
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mObserver:Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mObserver:Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 196
    invoke-static {}, Lcom/android/contactsbind/ObjectFactory;->getWelcomeUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;-><init>(Lcom/android/contacts/drawer/DrawerFragment;Landroid/os/Handler;Lcom/android/contacts/drawer/DrawerFragment$1;)V

    iput-object v1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mObserver:Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerFragment;->mObserver:Lcom/android/contacts/drawer/DrawerFragment$WelcomeContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mCurrentContactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "contactsView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/drawer/DrawerAdapter;->getSelectedGroupId()J

    move-result-wide v0

    const-string v2, "selectedGroup"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/drawer/DrawerAdapter;->getSelectedAccount()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const-string v1, "selectedAccount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V
    .locals 1

    .line 269
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment;->mCurrentContactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 270
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Lcom/android/contacts/drawer/DrawerAdapter;->setSelectedContactsView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    :cond_0
    return-void
.end method

.method public updateGroupMenu(J)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment;->mDrawerAdapter:Lcom/android/contacts/drawer/DrawerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/drawer/DrawerAdapter;->setSelectedGroupId(J)V

    .line 277
    sget-object p1, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {p0, p1}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    return-void
.end method
