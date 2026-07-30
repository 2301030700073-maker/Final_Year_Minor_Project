.class public abstract Lcom/android/contacts/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdjustSelectionBoundsEnabled:Z

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDarkTheme:Z

.field private mDataLoaded:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayDirectoryHeader:Z

.field private mDisplayOrder:I

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeFavorites:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mListViewTopIndex:I

.field private mListViewTopOffset:I

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mLogListEvents:Z

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mShowEmptyListForEmptyQuery:Z

.field private mSortOrder:I

.field private mVerticalScrollbarPosition:I

.field protected mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayDirectoryHeader:Z

    .line 108
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDefaultVerticalScrollbarPosition()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 114
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLogListEvents:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    const/16 v0, 0x14

    .line 143
    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 156
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 168
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 955
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$3;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 572
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 574
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_1
    return-void
.end method

.method private getDefaultVerticalScrollbarPosition()I
    .locals 2

    .line 965
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 966
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 888
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 889
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 411
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private shouldDisplayDirectoryHeader()Z
    .locals 1

    .line 658
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 661
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayDirectoryHeader:Z

    return v0
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v1, 0x1

    .line 387
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 388
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 389
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 391
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    .line 396
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "directoryId"

    .line 397
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 398
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_0
    return-void
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 938
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 939
    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 837
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setAdjustSelectionBoundsEnabled(Z)V

    .line 839
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeFavorites:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeFavorites(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 842
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PinnedHeaderListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 843
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 844
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 845
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 846
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 847
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 848
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .line 819
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 820
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v1, :cond_0

    .line 821
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 827
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    :cond_2
    return-void
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 9

    .line 370
    new-instance v8, Lcom/android/contacts/list/ContactEntryListFragment$2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .line 720
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .line 704
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getListType()I
    .locals 1

    .line 981
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListType:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 731
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .line 591
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 3

    .line 418
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    const-string p2, "directoryId"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 420
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method protected loadPreferences()Z
    .locals 4

    .line 747
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 752
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSortOrder(I)V

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method protected maybeLogListEvent()V
    .locals 5

    .line 465
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDataLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLogListEvents:Z

    if-eqz v0, :cond_1

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    .line 468
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLogListEvents:Z

    .line 469
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDataLoaded:Z

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 284
    new-instance p1, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 354
    new-instance p1, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 355
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectorySearchMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    const/4 p2, 0x0

    .line 356
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    return-object p1

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v0, "directoryId"

    .line 361
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 364
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 763
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 765
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p1

    .line 766
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 767
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->shouldDisplayDirectoryHeader()Z

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 768
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 769
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 771
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 772
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 773
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "logsListEvents"

    .line 777
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLogListEvents:Z

    const-string p1, "dataLoaded"

    .line 778
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDataLoaded:Z

    .line 781
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .line 785
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const p2, 0x102000a

    .line 787
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 794
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 796
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 799
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 800
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 801
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 802
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 803
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 807
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 810
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 812
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 813
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 815
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFragmentRootView(Landroid/view/View;)V

    return-void

    .line 789
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 867
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 869
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    if-ltz p3, :cond_0

    .line 871
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(IJ)V

    :cond_0
    return-void
.end method

.method protected onItemLongClick(IJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 877
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    if-ltz p3, :cond_0

    .line 880
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemLongClick(IJ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    .line 432
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 441
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 442
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result p1

    if-eqz p1, :cond_4

    .line 449
    iget p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 450
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 451
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->maybeLogListEvent()V

    .line 458
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 459
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setListHeader()V

    .line 486
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result p1

    if-nez p1, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListViewTopIndex:I

    .line 917
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    :goto_0
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListViewTopOffset:I

    .line 920
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 921
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 1

    .line 952
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Picker result handler is not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onResume()V
    .locals 3

    .line 926
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 930
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListViewTopIndex:I

    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListViewTopOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 256
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    const-string v1, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    const-string v1, "photoLoaderEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    const-string v1, "quickContactEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    const-string v1, "adjustSelectionBoundsEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    const-string v1, "searchMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayDirectoryHeader:Z

    const-string v1, "displayDirectoryHeader"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    const-string v1, "visibleScrollbarEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const-string v1, "scrollbarPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    const-string v1, "directorySearchMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    const-string v1, "selectionVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    const-string v1, "legacyCompatibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    const-string v1, "queryString"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    const-string v1, "directoryResultLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    const-string v1, "darkTheme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLogListEvents:Z

    const-string v1, "logsListEvents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDataLoaded:Z

    const-string v1, "dataLoaded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "liststate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 859
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {p1}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    goto :goto_0

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 861
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {p1}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 313
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 315
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 322
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 511
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 512
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 513
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 907
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, p2, :cond_0

    .line 908
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected reloadData()V
    .locals 1

    .line 517
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 518
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 520
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 521
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    const-string v0, "photoLoaderEnabled"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    const-string v0, "quickContactEnabled"

    .line 294
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    const-string v0, "adjustSelectionBoundsEnabled"

    .line 295
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    const-string v0, "searchMode"

    .line 296
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    const-string v0, "displayDirectoryHeader"

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayDirectoryHeader:Z

    const-string v0, "visibleScrollbarEnabled"

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    const-string v0, "scrollbarPosition"

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const-string v0, "directorySearchMode"

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    const-string v0, "selectionVisible"

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    const-string v0, "legacyCompatibility"

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    const-string v0, "queryString"

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    const-string v0, "directoryResultLimit"

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    const-string v0, "darkTheme"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    const-string v0, "liststate"

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1

    .line 724
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 725
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0

    .line 742
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0

    .line 708
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return-void
.end method

.method public setDisplayDirectoryHeader(Z)V
    .locals 0

    .line 614
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayDirectoryHeader:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_1

    .line 218
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 219
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIncludeFavorites(Z)V
    .locals 1

    .line 607
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeFavorites:Z

    .line 608
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeFavorites(Z)V

    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0

    .line 716
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return-void
.end method

.method protected setListHeader()V
    .locals 0

    return-void
.end method

.method public setListType(I)V
    .locals 0

    .line 977
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListType:I

    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-void
.end method

.method public setLogListEvents(Z)V
    .locals 0

    .line 985
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLogListEvents:Z

    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0

    .line 579
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 580
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1

    .line 674
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 675
    iget-boolean p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_1

    .line 676
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 678
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 679
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 681
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 685
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 688
    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz p2, :cond_4

    .line 689
    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    :cond_4
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    .line 599
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 3

    .line 624
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 625
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    xor-int/lit8 v0, p1, 0x1

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 629
    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 630
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 636
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    if-nez p1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->shouldDisplayDirectoryHeader()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    xor-int/lit8 p1, p1, 0x1

    .line 647
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    :cond_3
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 538
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 539
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0

    .line 595
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 1

    .line 735
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    .line 736
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    .line 562
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 563
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 564
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 552
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 553
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method

.method protected startLoading()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 332
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 334
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 335
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_2

    .line 336
    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 337
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_3

    .line 338
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v3, :cond_3

    .line 339
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_4
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    return-void
.end method
