.class public abstract Lcom/android/contacts/list/ContactBrowseListFragment;
.super Lcom/android/contacts/list/MultiSelectContactsListFragment;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/MultiSelectContactsListFragment<",
        "Lcom/android/contacts/list/ContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

.field private mDelaySelection:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectedPosition:I

.field protected mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

.field private mPersistentSelectionPrefix:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshingContactUri:Z

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectionPersistenceRequested:Z

.field private mSelectionRequired:Z

.field private mSelectionToScreenRequested:Z

.field private mSelectionVerified:Z

.field private mSmoothScrollRequested:Z

.field private mStartedLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;-><init>()V

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const-string v0, "defaultContactBrowserSelection"

    .line 91
    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    return-void
.end method

.method private checkSelection()V
    .locals 11

    .line 420
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    if-eqz v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-eqz v0, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 432
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 438
    :cond_3
    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v1

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v2, v1, :cond_5

    .line 440
    invoke-virtual {v0, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 441
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_4

    .line 442
    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 443
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    iget-wide v9, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    cmp-long v6, v4, v9

    if-nez v6, :cond_4

    .line 444
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    return-void

    .line 454
    :cond_6
    iget-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 457
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 459
    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    goto :goto_3

    .line 461
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 462
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    if-eqz v1, :cond_d

    .line 463
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectFirstFoundContactAfterDelay()V

    .line 464
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_8

    .line 465
    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    :cond_8
    return-void

    .line 469
    :cond_9
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    const/4 v2, -0x6

    if-eqz v1, :cond_c

    .line 475
    iput-boolean v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 484
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v0, v2, :cond_a

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    .line 487
    :cond_a
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto :goto_2

    .line 490
    :cond_b
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    :goto_2
    return-void

    .line 493
    :cond_c
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_d

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v1, v2, :cond_d

    .line 497
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    return-void

    :cond_d
    const/4 v1, 0x0

    .line 501
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    .line 505
    :goto_3
    iput-boolean v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 506
    iput-boolean v8, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 508
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    if-eqz v1, :cond_e

    .line 509
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 510
    iput-boolean v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 513
    :cond_e
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v1, :cond_f

    .line 514
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->requestSelectionToScreen(I)V

    .line 517
    :cond_f
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 519
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_10

    .line 520
    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    :cond_10
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistentSelectionKey()Ljava/lang/String;
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    return-object v0

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyInvalidSelection()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onInvalidSelection()V

    :cond_0
    return-void
.end method

.method private parseSelectedContactUri()V
    .locals 6

    .line 351
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    const-string v4, "directory"

    .line 353
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v4, v2

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_0
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 356
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 358
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 360
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 363
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_2

    .line 364
    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 367
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported contact URI: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ContactList"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 369
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 373
    :cond_3
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 374
    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 375
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    :cond_4
    :goto_1
    return-void
.end method

.method private restoreFilter()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method private restoreSelectedUri(Z)V
    .locals 12

    .line 640
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v0, :cond_0

    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    .line 646
    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0

    .line 648
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    move v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    :goto_0
    return-void
.end method

.method private saveSelectedUri(Landroid/net/Uri;)V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 628
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_1

    .line 630
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 632
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setSelectedContactUri(Landroid/net/Uri;ZZZZ)V
    .locals 6

    .line 323
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    const/4 p3, 0x1

    .line 324
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 326
    iget-object p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz p3, :cond_3

    .line 327
    invoke-virtual {p3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_1
    const/4 p3, 0x0

    .line 328
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 329
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 330
    iput-boolean p4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 331
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 332
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    if-nez p5, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidateViews()V

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 8

    .line 386
    invoke-super {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->configureAdapter()V

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {v6, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 396
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x6

    if-ne v0, v1, :cond_2

    .line 398
    :cond_1
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    :cond_2
    if-nez v7, :cond_3

    .line 403
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->isContactsFilterType()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeFavorites(Z)V

    return-void
.end method

.method public bridge synthetic getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 1

    .line 381
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

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

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 177
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 178
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreFilter()V

    const/4 p1, 0x0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    return-void
.end method

.method protected onContactUriQueryFinished(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 271
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 272
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 273
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->checkSelection()V

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

    .line 408
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    const/4 p1, 0x0

    .line 409
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 237
    invoke-super {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    const-string v1, "filter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v1, "selectedUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    const-string v1, "selectionVerified"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    iget v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const-string v1, "lastSelected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected refreshSelectedContactUri()V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->cancel()V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSelectionVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 255
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 256
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    return-void

    .line 260
    :cond_2
    iget-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 264
    :cond_3
    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    .line 265
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public reloadData()V
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    const/4 v0, -0x1

    .line 592
    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 593
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    :cond_0
    return-void
.end method

.method protected requestSelectionToScreen(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/AutoScrollListView;

    .line 566
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    .line 565
    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/AutoScrollListView;->requestPositionToScreen(IZ)V

    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "filter"

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    const-string v0, "selectedUri"

    .line 229
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v0, "selectionVerified"

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    const-string v0, "lastSelected"

    .line 231
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 232
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    return-void
.end method

.method protected selectDefaultContact()V
    .locals 8

    .line 545
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    .line 546
    iget v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 547
    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    .line 548
    iget v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    if-lt v2, v1, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 552
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 556
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getFirstContactUri()Landroid/net/Uri;

    move-result-object v1

    :cond_2
    move-object v3, v1

    const/4 v4, 0x0

    .line 559
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    return-void
.end method

.method public selectFirstFoundContactAfterDelay()V
    .locals 10

    .line 530
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    .line 531
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const-wide/16 v2, 0x1f4

    .line 536
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 539
    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    :goto_0
    return-void
.end method

.method public setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0

    .line 289
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    .line 290
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    :cond_1
    return-void
.end method

.method public setSelectedContactUri(Landroid/net/Uri;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    return-void
.end method

.method protected startLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 580
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public updateListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setLogListEvents(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    const-string v1, "ContactList"

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New filter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->toListType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setLogListEvents(Z)V

    .line 206
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    const/4 p1, -0x1

    .line 207
    iput p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 211
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    return-void
.end method

.method public viewContact(ILandroid/net/Uri;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 602
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 603
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onViewContactAction(ILandroid/net/Uri;Z)V

    :cond_0
    return-void
.end method
