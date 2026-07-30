.class public abstract Lcom/android/contacts/list/ContactListAdapter;
.super Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListAdapter$ContactQuery;
    }
.end annotation


# instance fields
.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1001a6

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v1, "true"

    .line 151
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private replaceFirstString([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 440
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "contact_id"

    .line 441
    aput-object v1, p1, v0

    return-object p1
.end method


# virtual methods
.method protected bindNameAndViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    .line 274
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    return-void

    :cond_0
    const/4 p2, 0x4

    .line 252
    invoke-interface {p3, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 253
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_1
    move-wide v7, v1

    :goto_0
    cmp-long p2, v7, v1

    if-eqz p2, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v9, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCircularPhotos()Z

    move-result v10

    const/4 v11, 0x0

    .line 257
    invoke-virtual/range {v5 .. v11}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x5

    .line 260
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    move-object v3, v0

    goto :goto_1

    .line 261
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    move-object v3, p2

    :goto_1
    if-nez v3, :cond_4

    const/4 p2, 0x1

    const/4 v0, 0x6

    .line 264
    invoke-virtual {p0, p3, p2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    move-result-object v0

    :cond_4
    move-object v6, v0

    .line 268
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCircularPhotos()Z

    move-result v5

    .line 268
    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    :goto_2
    return-void
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 282
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1

    const/16 v0, 0x9

    .line 287
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/contacts/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 237
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/IndexerListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/list/IndexerListAdapter$Placement;

    move-result-object p2

    .line 238
    iget-object p2, p2, Lcom/android/contacts/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 240
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 4

    .line 373
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    if-eqz p2, :cond_3

    .line 375
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->shouldIncludeFavorites()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    .line 380
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 382
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p2, :cond_2

    .line 383
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 385
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 388
    :cond_1
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFavoritesSectionHeader(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getContactId(I)J
    .locals 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 1

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    .line 170
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 171
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {v0, v1, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 176
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "directory"

    .line 175
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected final getDataProjectionForContacts(Z)[Ljava/lang/String;
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne v0, v1, :cond_0

    .line 422
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$000()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->replaceFirstString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 424
    :cond_0
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$100()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->replaceFirstString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 428
    sget-object p1, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->replaceFirstString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 430
    :cond_2
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$200()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;->replaceFirstString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 4

    .line 349
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .line 352
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 361
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getProjection(Z)[Ljava/lang/String;
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne v0, v1, :cond_0

    .line 402
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$000()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 404
    :cond_0
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$100()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 408
    sget-object p1, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object p1

    .line 410
    :cond_2
    invoke-static {}, Lcom/android/contacts/list/ContactListAdapter$ContactQuery;->access$200()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 11

    .line 291
    iget-object v0, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    return v3

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 299
    invoke-virtual {p0, v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    .line 300
    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    :goto_1
    if-ne v5, v3, :cond_3

    return v3

    .line 309
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    return v3

    .line 314
    :cond_4
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 316
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 317
    iget-object v6, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v6, :cond_6

    const/4 v6, 0x6

    .line 318
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 319
    iget-object v7, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 320
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    goto :goto_2

    .line 324
    :cond_6
    iget-wide v6, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v8, v6, v1

    if-eqz v8, :cond_5

    iget-wide v6, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v8, v6, v1

    if-eqz v8, :cond_7

    const-wide/16 v8, 0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    .line 326
    :cond_7
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 327
    iget-wide v8, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    .line 328
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    goto :goto_2

    :cond_8
    const/4 v0, -0x1

    :goto_2
    if-ne v0, v3, :cond_9

    return v3

    .line 337
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getPositionForPartition(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 338
    invoke-virtual {p0, v5}, Lcom/android/common/widget/CompositeCursorAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    return v1
.end method

.method public isEnterpriseContact(I)Z
    .locals 2

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 193
    invoke-static {v0, v1}, Lcom/android/contacts/compat/ContactsCompat;->isEnterpriseContactId(J)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 6

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v2

    const/4 p1, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return p1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v4, 0x6

    .line 211
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long p2, v0, v4

    if-nez p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 41
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 222
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/android/contacts/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSelectionVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 227
    iget-object p2, p0, Lcom/android/contacts/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    :cond_0
    return-object p1
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    .line 145
    iput-object p3, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 146
    iput-wide p4, p0, Lcom/android/contacts/list/ContactListAdapter;->mSelectedContactId:J

    return-void
.end method
