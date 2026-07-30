.class public abstract Lcom/android/contacts/list/ContactEntryListAdapter;
.super Lcom/android/contacts/list/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# instance fields
.field private mAdjustSelectionBoundsEnabled:Z

.field private mCircularPhotos:Z

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFragmentRootView:Landroid/view/View;

.field private mIncludeFavorites:Z

.field private mNumberOfFavorites:I

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1}, Lcom/android/contacts/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const v0, 0x7fffffff

    .line 87
    iput v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 89
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    const p1, 0x7f100179

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartitions()V

    return-void
.end method

.method private setSectionHeader(I)V
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    check-cast v0, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactsSectionIndexer;->setFavoritesHeader(I)V

    :cond_0
    return-void
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 492
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 497
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    .line 498
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    .line 499
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 501
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 505
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getExtraStartingSection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 508
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 509
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 510
    aget-object v7, v0, v5

    aput-object v7, v1, v6

    .line 511
    aget v5, p1, v5

    aput v5, v3, v6

    move v5, v6

    goto :goto_0

    .line 513
    :cond_1
    aput v2, v3, v4

    const-string p1, ""

    .line 514
    aput-object p1, v1, v4

    .line 515
    new-instance p1, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {p1, v1, v3}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/IndexerListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_1

    .line 517
    :cond_2
    new-instance v1, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v1, v0, p1}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/IndexerListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_1

    .line 520
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/IndexerListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    :goto_1
    return-void

    .line 493
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/IndexerListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    return-void
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    return-void
.end method

.method public areAllPartitionsEmpty()Z
    .locals 4

    .line 575
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 577
    invoke-virtual {p0, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->isPartitionEmpty(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 5

    .line 631
    invoke-virtual {p0, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p3

    .line 632
    instance-of v0, p3, Lcom/android/contacts/list/DirectoryPartition;

    if-nez v0, :cond_0

    return-void

    .line 636
    :cond_0
    check-cast p3, Lcom/android/contacts/list/DirectoryPartition;

    .line 637
    invoke-virtual {p3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    const v2, 0x7f090118

    .line 638
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900c5

    .line 639
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 640
    invoke-virtual {p3}, Lcom/android/contacts/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    invoke-static {v0, v1}, Lcom/android/contacts/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p3, 0x0

    .line 642
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 644
    :cond_1
    invoke-virtual {p3}, Lcom/android/contacts/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 647
    :cond_2
    invoke-virtual {p3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    :goto_1
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 652
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const p2, 0x7f0700db

    .line 653
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 655
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    .line 656
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 655
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V
    .locals 5

    .line 710
    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 711
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 714
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object p4

    .line 716
    invoke-virtual {p0, p2, p3, p6, p7}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object p1

    .line 715
    invoke-virtual {p4, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 717
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "vnd.android.cursor.item/phone_v2"

    .line 721
    invoke-virtual {p4, p1}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    :cond_1
    cmp-long p1, v3, v1

    if-nez p1, :cond_5

    const/4 p1, -0x1

    if-ne p5, p1, :cond_2

    goto :goto_3

    .line 728
    :cond_2
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    move-object p5, p2

    goto :goto_1

    .line 729
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object p5, p1

    :goto_1
    if-nez p5, :cond_4

    .line 732
    invoke-virtual {p0, p3, p8, p7}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    move-result-object p1

    move-object p7, p1

    goto :goto_2

    :cond_4
    move-object p7, p2

    .line 735
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object p1

    const/4 p6, -0x1

    iget-boolean p8, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCircularPhotos:Z

    move-object p2, p4

    move-object p3, p5

    move p4, p6

    move p5, p8

    move p6, v0

    invoke-virtual/range {p1 .. p7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_4

    .line 725
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object p1

    iget-boolean p5, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    iget-boolean p6, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const/4 p7, 0x0

    move-object p2, p4

    move-wide p3, v3

    invoke-virtual/range {p1 .. p7}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    :goto_4
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 0

    .line 128
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 129
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/contacts/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindWorkProfileIcon(Lcom/android/contacts/list/ContactListItemView;I)V

    return-void
.end method

.method protected bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 2

    .line 752
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    const-wide/32 v0, 0x7fffffff

    .line 753
    rem-long/2addr p2, v0

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setId(I)V

    return-void
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4

    .line 620
    invoke-virtual {p0, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    .line 621
    instance-of v0, p2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v0, :cond_1

    .line 622
    check-cast p2, Lcom/android/contacts/list/DirectoryPartition;

    .line 623
    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 624
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/contacts/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 625
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    :cond_1
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 466
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_1

    .line 467
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 470
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 474
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->getIndexedPartition()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 477
    invoke-direct {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    iget-object p2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/android/contacts/ContactPhotoManager;->cancelPendingRequests(Landroid/view/View;)V

    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 12

    .line 397
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 400
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "ContactEntryListAdapter"

    const-string v1, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "_id"

    .line 406
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "directoryType"

    .line 407
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "displayName"

    .line 408
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "photoSupport"

    .line 409
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    .line 413
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 414
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 415
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 416
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v8

    if-ne v8, v5, :cond_1

    .line 418
    new-instance v8, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 419
    invoke-virtual {v8, v6, v7}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 420
    invoke-static {v6, v7}, Lcom/android/contacts/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 421
    invoke-static {v6, v7}, Lcom/android/contacts/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 422
    iget-object v6, p0, Lcom/android/contacts/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f1000f2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/contacts/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 424
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f1000f1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/contacts/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 427
    :cond_3
    invoke-static {v6, v7}, Lcom/android/contacts/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 428
    iget-object v6, p0, Lcom/android/contacts/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f100175

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/contacts/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/contacts/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 433
    :goto_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 434
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/contacts/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 435
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eq v6, v10, :cond_5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    :cond_5
    const/4 v9, 0x1

    .line 436
    :cond_6
    invoke-virtual {v8, v9}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 438
    invoke-virtual {p0, v8}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto/16 :goto_0

    .line 443
    :cond_7
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result p1

    :cond_8
    :goto_2
    add-int/2addr p1, v5

    if-ltz p1, :cond_9

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 446
    instance-of v2, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v2, :cond_8

    .line 447
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 448
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->removePartition(I)V

    goto :goto_2

    .line 454
    :cond_9
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 455
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearPartitions()V
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 235
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    .line 236
    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 237
    invoke-virtual {v3, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-super {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->clearPartitions()V

    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8

    .line 589
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    .line 591
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 592
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 593
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v2, :cond_2

    .line 599
    invoke-virtual {p0, v1, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->setShowIfEmpty(IZ)V

    .line 600
    invoke-virtual {p0, v1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->setHasHeader(IZ)V

    :cond_2
    return-void
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;
    .locals 4

    .line 148
    new-instance v0, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    const-wide/16 v2, 0x0

    .line 149
    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 150
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 135
    new-instance v0, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/contacts/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    return-object v0
.end method

.method public getCircularPhotos()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCircularPhotos:Z

    return v0
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 2

    .line 759
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 760
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide p3

    .line 762
    invoke-static {v0, v1, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-eqz p2, :cond_0

    .line 764
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 765
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "directory"

    .line 764
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 765
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;
    .locals 1

    .line 782
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 783
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 784
    new-instance p3, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCircularPhotos:Z

    invoke-direct {p3, p2, p1, v0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method protected getDirectoryById(J)Lcom/android/contacts/list/DirectoryPartition;
    .locals 6

    .line 193
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 196
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 197
    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .line 198
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDirectoryResultLimit(Lcom/android/contacts/list/DirectoryPartition;)I
    .locals 1

    .line 282
    invoke-virtual {p1}, Lcom/android/contacts/list/DirectoryPartition;->getResultLimit()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 283
    iget p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    :cond_0
    return p1
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method protected getExtraStartingSection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 2

    .line 537
    invoke-super {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewType(II)I

    move-result v0

    .line 538
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 539
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/IndexerListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/list/IndexerListAdapter$Placement;

    move-result-object p1

    .line 540
    iget-boolean p1, p1, Lcom/android/contacts/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getNumberOfFavorites()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mNumberOfFavorites:I

    return v0
.end method

.method protected getPartitionByDirectoryId(J)I
    .locals 5

    .line 180
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 183
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 184
    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdjustSelectionBoundsEnabled()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 558
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 5

    .line 563
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 565
    invoke-virtual {p0, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 566
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 567
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isPhotoSupported(I)Z
    .locals 1

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    .line 679
    instance-of v0, p1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v0, :cond_0

    .line 680
    check-cast p1, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/list/DirectoryPartition;->isPhotoSupported()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 607
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0050

    const/4 p3, 0x0

    .line 608
    invoke-virtual {p1, p2, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 609
    invoke-virtual {p0}, Lcom/android/contacts/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 614
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 51
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 120
    new-instance p2, Lcom/android/contacts/list/ContactListItemView;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/contacts/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    return-object p2
.end method

.method public onDataReload()V
    .locals 6

    .line 214
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 217
    instance-of v5, v4, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v5, :cond_1

    .line 218
    check-cast v4, Lcom/android/contacts/list/DirectoryPartition;

    .line 219
    invoke-virtual {v4}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 222
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public removeDirectoriesAfterDefault()V
    .locals 6

    .line 167
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 170
    instance-of v2, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 171
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->removePartition(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return-void
.end method

.method public setFavoritesSectionHeader(I)V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeFavorites:Z

    if-eqz v0, :cond_0

    .line 372
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mNumberOfFavorites:I

    .line 373
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeader(I)V

    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method protected setFragmentRootView(Landroid/view/View;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    return-void
.end method

.method public setIncludeFavorites(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeFavorites:Z

    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-void
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 140
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setSectionHeaderTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1

    .line 256
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0

    .line 343
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return-void
.end method

.method public shouldIncludeFavorites()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeFavorites:Z

    return v0
.end method
