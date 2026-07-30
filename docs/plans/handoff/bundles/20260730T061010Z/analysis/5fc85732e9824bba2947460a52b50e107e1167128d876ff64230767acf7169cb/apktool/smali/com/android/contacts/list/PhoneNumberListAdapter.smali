.class public Lcom/android/contacts/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;,
        Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCountryIso:Ljava/lang/String;

.field private final mExtendedDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/list/DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstExtendedDirectoryId:J

.field private mIsPresenceEnabled:Z

.field private mIsVideoEnabled:Z

.field private mListener:Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 171
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 77
    iput-wide v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    const v0, 0x7f100174

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    const v0, 0x104000e

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 174
    invoke-static {p1}, Lcom/android/contacts/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/android/contacts/extensions/ExtensionsFactory;->getExtendedPhoneDirectoriesManager()Lcom/android/contacts/extensions/ExtendedPhoneDirectoriesManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/contacts/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/contacts/extensions/ExtendedPhoneDirectoriesManager;->getExtendedDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    .line 185
    :goto_0
    invoke-static {p1}, Lcom/android/contacts/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 186
    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mIsVideoEnabled:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 187
    :cond_2
    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    return-void
.end method

.method private applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 3

    if-eqz p5, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 296
    iget v0, p5, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_3

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_1

    .line 312
    sget-object p2, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported filter type came (type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p5, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, ") showing all contacts."

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p5, p2}, Lcom/android/contacts/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    const-string p2, "in_visible_group=1"

    .line 298
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND has_phone_number=1"

    .line 299
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_3
    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 319
    invoke-interface {p4, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private getExtendedDirectoryFromId(J)Lcom/android/contacts/list/DirectoryPartition;
    .locals 2

    .line 279
    iget-wide v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    .line 280
    iget-object p1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/DirectoryPartition;

    return-object p1
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    .line 513
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 469
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 471
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 476
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v2, 0x3

    if-eqz p3, :cond_1

    .line 479
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 482
    :cond_1
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 486
    :cond_2
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 487
    iget-object v0, p0, Lcom/android/contacts/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/contacts/GeoUtil;->getGeocodedLocationFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 490
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isVideoCompatible()Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p3, 0x9

    .line 494
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    and-int/2addr p2, v1

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 497
    :goto_2
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mIsVideoEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    if-eqz v0, :cond_4

    if-nez p2, :cond_6

    :cond_4
    iget-boolean p2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 499
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/list/PhoneNumberListAdapter$Listener;

    invoke-virtual {p1, v1, p2, p4}, Lcom/android/contacts/list/ContactListItemView;->setShowVideoCallIcon(ZLcom/android/contacts/list/PhoneNumberListAdapter$Listener;I)V

    :cond_7
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12

    .line 534
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    return-void

    :cond_0
    const/4 p2, 0x6

    .line 540
    invoke-interface {p3, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 541
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_1
    move-wide v7, v1

    :goto_0
    cmp-long p2, v7, v1

    if-eqz p2, :cond_2

    .line 545
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v9, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCircularPhotos()Z

    move-result v10

    const/4 v11, 0x0

    .line 545
    invoke-virtual/range {v5 .. v11}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_2

    :cond_2
    const/16 p2, 0x8

    .line 548
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    move-object v3, v0

    goto :goto_1

    .line 549
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    move-object v3, p2

    :goto_1
    if-nez v3, :cond_4

    const/4 p2, 0x7

    .line 553
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    .line 554
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 555
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCircularPhotos()Z

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    move-object v6, v0

    .line 557
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCircularPhotos()Z

    move-result v5

    .line 557
    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    :goto_2
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/IndexerListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/list/IndexerListAdapter$Placement;

    move-result-object p2

    .line 506
    iget-boolean v0, p2, Lcom/android/contacts/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/android/contacts/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9

    .line 409
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 410
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .line 412
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setHighlight(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 419
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x4

    .line 422
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 423
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_0

    .line 424
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 429
    :goto_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 430
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 431
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v0, v1, v6

    .line 440
    :cond_1
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 442
    invoke-virtual {p0, p1, p3, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindViewId(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 444
    invoke-virtual {p0, p1, p4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    if-eqz v3, :cond_3

    .line 446
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 448
    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V

    goto :goto_1

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 457
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/list/ContactListItemView;)V

    .line 459
    invoke-virtual {p1, v4, v5}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 462
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/DirectoryPartition;

    .line 463
    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->isDisplayNumber()Z

    move-result p2

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    return-void
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4

    .line 523
    invoke-virtual {p0, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/DirectoryPartition;

    .line 524
    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 525
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/android/contacts/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    .line 530
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result p2

    if-nez p2, :cond_0

    const-wide/16 v0, 0x1

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 529
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 11

    .line 591
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 592
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectorySearchMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 596
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    .line 601
    iput-wide v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    if-lez v0, :cond_6

    .line 607
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result p1

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, p1, :cond_4

    .line 608
    invoke-virtual {p0, v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/list/DirectoryPartition;

    .line 609
    invoke-virtual {v8}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-lez v10, :cond_2

    move-wide v5, v8

    .line 613
    :cond_2
    invoke-static {v8, v9}, Lcom/android/contacts/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v7, v4, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-long/2addr v5, v1

    .line 621
    iput-wide v5, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    :goto_1
    if-ge v3, v0, :cond_6

    .line 623
    iget-wide v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 624
    iget-object p1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/DirectoryPartition;

    .line 625
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 626
    invoke-virtual {p0, v7, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(ILcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 627
    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 12

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 200
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v1

    const-string v2, "limit"

    if-eqz v1, :cond_2

    .line 201
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getExtendedDirectoryFromId(J)Lcom/android/contacts/list/DirectoryPartition;

    move-result-object p2

    .line 202
    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getContentUri()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 207
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    .line 208
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 210
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/list/DirectoryPartition;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {p3, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 212
    sget-object p2, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 204
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Extended directory must have a content URL: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_2
    invoke-static {p2, p3}, Lcom/android/contacts/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v1

    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v3

    const-string v4, "true"

    const-string v5, "directory"

    if-eqz v3, :cond_5

    if-eqz v1, :cond_3

    .line 220
    invoke-static {}, Lcom/android/contacts/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 221
    :cond_3
    iget-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v3, :cond_4

    .line 222
    invoke-static {}, Lcom/android/contacts/compat/CallableCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 224
    :cond_4
    invoke-static {}, Lcom/android/contacts/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v3

    .line 226
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 227
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 229
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v1, :cond_8

    .line 232
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryById(J)Lcom/android/contacts/list/DirectoryPartition;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/list/DirectoryPartition;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 231
    invoke-virtual {v3, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 235
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v0, :cond_6

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 236
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 237
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 238
    invoke-virtual {p0}, Lcom/android/contacts/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX"

    .line 239
    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    move-object v8, v3

    move-wide v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/contacts/list/PhoneNumberListAdapter;->applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/list/ContactListFilter;)V

    .line 246
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object p2

    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "length(data1) < 1000"

    if-nez p3, :cond_9

    .line 249
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_9
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const-string p2, "remove_duplicate_entries"

    .line 256
    invoke-virtual {v3, p2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_a

    .line 261
    sget-object p2, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_3

    .line 263
    :cond_a
    sget-object p2, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 266
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result p2

    if-ne p2, p3, :cond_b

    const-string p2, "sort_key"

    .line 267
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string p2, "sort_key_alt"

    .line 269
    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 4

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 637
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 638
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 639
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 641
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p3, "encoded"

    .line 642
    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 643
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object p3

    const-string v0, "displayName"

    invoke-virtual {p1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 645
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "directory"

    .line 644
    invoke-virtual {p1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 646
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 647
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 1

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v0

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 346
    invoke-static {v0, v1}, Lcom/android/contacts/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    return-object v2

    .line 348
    :cond_0
    invoke-static {v0, v1}, Lcom/android/contacts/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 357
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 358
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 1

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 329
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected isExtendedDirectory(J)Z
    .locals 3

    .line 275
    iget-wide v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;
    .locals 0

    .line 376
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/list/ContactListItemView;

    move-result-object p1

    .line 377
    iget-object p2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 379
    iget-object p2, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    return-object p1
.end method

.method protected setHighlight(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 0

    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0

    .line 571
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    return-void
.end method

.method protected unbindName(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    .line 518
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideDisplayName()V

    return-void
.end method
