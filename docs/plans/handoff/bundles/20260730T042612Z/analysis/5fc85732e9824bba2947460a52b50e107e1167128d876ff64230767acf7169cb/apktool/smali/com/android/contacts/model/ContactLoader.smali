.class public Lcom/android/contacts/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/ContactLoader$AccountKey;,
        Lcom/android/contacts/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/model/ContactLoader$ContactQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/model/Contact;


# instance fields
.field private mComputeFormattedPhoneNumber:Z

.field private mContact:Lcom/android/contacts/model/Contact;

.field private mLoadGroupMetaData:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Lcom/android/contacts/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mPostViewNotification:Z

.field private final mRequestedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-class v0, Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/model/ContactLoader;->DEBUG:Z

    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 105
    iput-object p2, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 106
    iput-object p2, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 107
    iput-boolean p3, p0, Lcom/android/contacts/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 108
    iput-boolean p4, p0, Lcom/android/contacts/model/ContactLoader;->mPostViewNotification:Z

    .line 109
    iput-boolean p5, p0, Lcom/android/contacts/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    return-void
.end method

.method private computeFormattedPhoneNumbers(Lcom/android/contacts/model/Contact;)V
    .locals 9

    .line 823
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 825
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 827
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContact;

    .line 828
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    .line 829
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 831
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/dataitem/DataItem;

    .line 832
    instance-of v8, v7, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v8, :cond_0

    .line 833
    check-cast v7, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 834
    invoke-virtual {v7, v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->computeFormattedPhoneNumber(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3

    .line 683
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 694
    sget-object v0, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 697
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid or unhandled data type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_1
    sget-object v0, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_2
    sget-object v0, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 9

    const-string v0, "entities"

    .line 451
    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 452
    sget-object v3, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "raw_contact_id"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 455
    sget-object p1, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string p2, "No cursor returned in loadContactEntity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/contacts/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object p1

    return-object p1

    .line 460
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 462
    iget-object p2, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/android/contacts/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 466
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object p2

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 472
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 474
    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    :cond_2
    const/16 v5, 0xe

    .line 477
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-eqz v7, :cond_3

    .line 482
    new-instance v0, Lcom/android/contacts/model/RawContact;

    invoke-direct {p0, p1}, Lcom/android/contacts/model/ContactLoader;->loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 483
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-object v2, v0

    move-wide v0, v5

    :cond_3
    const/16 v5, 0x1a

    .line 485
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 486
    invoke-direct {p0, p1}, Lcom/android/contacts/model/ContactLoader;->loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v6

    .line 487
    invoke-virtual {v2, v6}, Lcom/android/contacts/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    const/16 v6, 0x33

    .line 489
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x35

    .line 490
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 491
    :cond_4
    new-instance v6, Lcom/android/contacts/util/DataStatus;

    invoke-direct {v6, p1}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 492
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 493
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 496
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 498
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 499
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 504
    throw p2
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "directory"

    move-object/from16 v4, p2

    .line 581
    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 584
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v6, v5

    :goto_0
    const/16 v1, 0xd

    .line 585
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v1, 0x2

    .line 586
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    .line 587
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v5, 0x1

    .line 588
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x3

    .line 589
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x4

    .line 590
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v14, 0x5

    .line 591
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v14, 0x6

    .line 592
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v1, 0x3a

    .line 593
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 594
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v22, 0x1

    goto :goto_1

    :cond_1
    const/16 v22, 0x0

    :goto_1
    const/16 v2, 0x8

    .line 595
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 597
    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    move-object/from16 v23, v2

    const/16 v2, 0x3b

    .line 598
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    const/16 v24, 0x1

    goto :goto_3

    :cond_3
    const/16 v24, 0x0

    :goto_3
    const/16 v2, 0x3c

    .line 599
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v2, 0x3d

    .line 600
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v5, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v5, v6, v2

    if-eqz v5, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v5, v6, v2

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v4

    goto :goto_6

    .line 604
    :cond_6
    :goto_5
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 605
    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 604
    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v5, v2

    .line 610
    :goto_6
    new-instance v26, Lcom/android/contacts/model/Contact;

    move-object/from16 v2, v26

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v1

    move/from16 v20, v22

    move-object/from16 v21, v23

    move/from16 v22, v24

    move-object/from16 v23, v25

    move/from16 v24, v0

    invoke-direct/range {v2 .. v24}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    return-object v26
.end method

.method private loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 3

    .line 645
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x1a

    .line 647
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0x1b

    .line 649
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1c

    .line 650
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1d

    .line 651
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1e

    .line 652
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x1f

    .line 653
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x20

    .line 654
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x21

    .line 655
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x22

    .line 656
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x23

    .line 657
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x24

    .line 658
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x25

    .line 659
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x26

    .line 660
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x27

    .line 661
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x28

    .line 662
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x29

    .line 663
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2a

    .line 664
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2b

    .line 665
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2c

    .line 666
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2d

    .line 667
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2e

    .line 668
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x2f

    .line 669
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x30

    .line 670
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x31

    .line 671
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x32

    .line 672
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x34

    .line 673
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 674
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e

    .line 675
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    :cond_0
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/model/Contact;)V
    .locals 11

    .line 702
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v0

    .line 704
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    .line 705
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 704
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 711
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 712
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 713
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 714
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x3

    .line 715
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x4

    .line 716
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x5

    .line 717
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v4, 0x0

    .line 719
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 720
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :try_start_1
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 723
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_0

    .line 725
    :catch_0
    :try_start_2
    sget-object v8, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Contact directory resource not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move-object v2, p1

    .line 730
    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 735
    throw p1
.end method

.method private static loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "directory"

    .line 362
    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "display_name"

    .line 364
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-string v6, "display_name_alt"

    .line 365
    invoke-virtual {v13, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "display_name_source"

    .line 367
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "photo_uri"

    const/4 v9, 0x0

    .line 368
    invoke-virtual {v13, v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 369
    new-instance v10, Lcom/android/contacts/model/Contact;

    move-object v0, v10

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v17, -0x1

    move-object/from16 v23, v10

    move-wide/from16 v9, v17

    const-wide/16 v17, 0x0

    move-object/from16 v24, v13

    move-wide/from16 v12, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 388
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V

    const-string v0, "account_name"

    move-object/from16 v2, v24

    const/4 v3, 0x0

    .line 390
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v0, "displayName"

    move-object/from16 v3, p0

    .line 391
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "exportSupport"

    if-eqz v20, :cond_0

    const-string v3, "account_type"

    .line 393
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/4 v3, 0x1

    .line 395
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v17, v1

    .line 394
    invoke-virtual/range {v17 .. v22}, Lcom/android/contacts/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x2

    .line 399
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v17, v1

    .line 398
    invoke-virtual/range {v17 .. v22}, Lcom/android/contacts/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 402
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, -0x1

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "contact_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    new-instance v3, Lcom/android/contacts/model/RawContact;

    invoke-direct {v3, v0}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    const-string v0, "vnd.android.cursor.item/contact"

    .line 407
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 409
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 410
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 413
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_2

    .line 415
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 416
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 417
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 418
    invoke-static {v3, v7, v4}, Lcom/android/contacts/model/ContactLoader;->processOneRecord(Lcom/android/contacts/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 421
    :cond_2
    invoke-static {v3, v5, v4}, Lcom/android/contacts/model/ContactLoader;->processOneRecord(Lcom/android/contacts/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_3
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 426
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 425
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method private loadGroupMetaData(Lcom/android/contacts/model/Contact;)V
    .locals 10

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 773
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 774
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContact;

    .line 775
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 776
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v6

    .line 777
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v4

    .line 778
    new-instance v7, Lcom/android/contacts/model/ContactLoader$AccountKey;

    invoke-direct {v7, v5, v6, v4}, Lcom/android/contacts/model/ContactLoader$AccountKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 780
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 781
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, " OR "

    .line 783
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v7, "(account_name=? AND account_type=?"

    .line 785
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, " AND deleted=0"

    .line 790
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    const-string v5, " AND data_set=?"

    .line 793
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v4, " AND data_set IS NULL"

    .line 796
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, ")"

    .line 798
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 801
    :cond_3
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 802
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 804
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 802
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 807
    :goto_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 808
    new-instance v1, Lcom/android/contacts/group/GroupMetaData;

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/android/contacts/group/GroupMetaData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 811
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 812
    throw p1

    .line 814
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/Contact;->setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/model/Contact;)V
    .locals 6

    .line 512
    invoke-direct {p0, p1}, Lcom/android/contacts/model/ContactLoader;->loadThumbnailBinaryData(Lcom/android/contacts/model/Contact;)V

    .line 515
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 520
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    .line 522
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    goto :goto_1

    .line 524
    :cond_1
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 531
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_2
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 535
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 537
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/model/Contact;->setPhotoBinaryData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_3

    .line 541
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    .line 539
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_4

    .line 541
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 543
    :cond_4
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 551
    :catch_0
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/Contact;->setPhotoBinaryData([B)V

    return-void
.end method

.method private loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 3

    .line 620
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0xe

    .line 622
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0xf

    .line 624
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x10

    .line 625
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x11

    .line 626
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x12

    .line 627
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x13

    .line 628
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x14

    .line 629
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x15

    .line 630
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x16

    .line 631
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x17

    .line 632
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x18

    .line 633
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0x19

    .line 634
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/16 v1, 0xd

    .line 635
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    const/4 v1, 0x7

    .line 636
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    return-object v0
.end method

.method private loadThumbnailBinaryData(Lcom/android/contacts/model/Contact;)V
    .locals 8

    .line 555
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContact;

    .line 562
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/dataitem/DataItem;

    .line 563
    invoke-virtual {v4}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_2

    .line 564
    instance-of v3, v4, Lcom/android/contacts/model/dataitem/PhotoDataItem;

    if-nez v3, :cond_3

    goto :goto_0

    .line 568
    :cond_3
    check-cast v4, Lcom/android/contacts/model/dataitem/PhotoDataItem;

    .line 569
    invoke-virtual {v4}, Lcom/android/contacts/model/dataitem/PhotoDataItem;->getPhoto()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/contacts/model/Contact;->setThumbnailPhotoBinaryData([B)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static parseEncodedContactEntity(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 0

    .line 351
    :try_start_0
    invoke-static {p0, p0}, Lcom/android/contacts/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 8

    .line 877
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact;

    .line 879
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 880
    iget-object v5, p0, Lcom/android/contacts/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 883
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 884
    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    .line 885
    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v6

    .line 888
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 889
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 890
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "vnd.android.cursor.item/raw_contact"

    .line 891
    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    instance-of v2, v2, Lcom/android/contacts/model/account/GoogleAccountType;

    if-eqz v2, :cond_3

    .line 893
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.syncadapters.contacts.SYNC_HIGH_RES_PHOTO"

    .line 895
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 898
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 899
    sget-object v3, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 900
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 901
    sget-object v5, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 904
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 912
    :cond_3
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 913
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 917
    sget-object v3, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string v4, "Error sending message to source-app"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private static processOneRecord(Lcom/android/contacts/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    .line 434
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 438
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 441
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 442
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 444
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 926
    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public cacheResult()V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    sput-object v0, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 964
    sput-object v0, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    :goto_1
    return-void
.end method

.method public deliverResult(Lcom/android/contacts/model/Contact;)V
    .locals 3

    .line 842
    invoke-direct {p0}, Lcom/android/contacts/model/ContactLoader;->unregisterObserver()V

    .line 845
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    .line 851
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 852
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 854
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result p1

    if-nez p1, :cond_2

    .line 855
    sget-object p1, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering content observer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez p1, :cond_1

    .line 857
    new-instance p1, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 859
    :cond_1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 863
    :cond_2
    iget-boolean p1, p0, Lcom/android/contacts/model/ContactLoader;->mPostViewNotification:Z

    if-eqz p1, :cond_3

    .line 865
    invoke-direct {p0}, Lcom/android/contacts/model/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 869
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ContactLoader;->deliverResult(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lcom/android/contacts/model/Contact;
    .locals 5

    .line 297
    :try_start_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/contacts/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    sget-object v2, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    const/4 v3, 0x0

    .line 301
    sput-object v3, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    new-instance v0, Lcom/android/contacts/model/Contact;

    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    const/4 v1, 0x1

    goto :goto_1

    .line 312
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "encoded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/contacts/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 319
    :goto_1
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    .line 322
    invoke-direct {p0, v0}, Lcom/android/contacts/model/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/model/Contact;)V

    goto :goto_2

    .line 324
    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v2, :cond_3

    .line 325
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    if-nez v2, :cond_3

    .line 326
    invoke-direct {p0, v0}, Lcom/android/contacts/model/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/model/Contact;)V

    .line 329
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v2, :cond_4

    .line 330
    invoke-direct {p0, v0}, Lcom/android/contacts/model/ContactLoader;->computeFormattedPhoneNumbers(Lcom/android/contacts/model/Contact;)V

    :cond_4
    if-nez v1, :cond_5

    .line 332
    invoke-direct {p0, v0}, Lcom/android/contacts/model/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 337
    sget-object v1, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading the contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/contacts/model/Contact;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->loadInBackground()Lcom/android/contacts/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .line 952
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 953
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    .line 954
    invoke-direct {p0}, Lcom/android/contacts/model/ContactLoader;->unregisterObserver()V

    const/4 v0, 0x0

    .line 955
    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ContactLoader;->deliverResult(Lcom/android/contacts/model/Contact;)V

    .line 940
    :cond_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    if-nez v0, :cond_2

    .line 941
    :cond_1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 947
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    return-void
.end method

.method public setNewLookup(Landroid/net/Uri;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    return-void
.end method
