.class public Lcom/android/contacts/model/RawContactDelta;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EntityDelta"


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/model/ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 647
    new-instance v0, Lcom/android/contacts/model/RawContactDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContactDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 76
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/ValuesDelta;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 76
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    return-void
.end method

.method private buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;
    .locals 7

    .line 435
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 440
    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 444
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-object v1, v4

    nop

    :cond_1
    :goto_0
    return-object v1
.end method

.method private containsEntry(Lcom/android/contacts/model/ValuesDelta;)Z
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ValuesDelta;

    .line 353
    invoke-virtual {v2, p1}, Lcom/android/contacts/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static fromBefore(Lcom/android/contacts/model/RawContact;)Lcom/android/contacts/model/RawContactDelta;
    .locals 3

    .line 90
    new-instance v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    const-string v2, "_id"

    .line 92
    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 94
    invoke-static {v1}, Lcom/android/contacts/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 252
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 253
    iget-object p2, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/RawContactDelta;
    .locals 3

    .line 107
    iget-object v0, p1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    if-nez p0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 111
    new-instance p0, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    iget-object v1, p1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-static {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    .line 125
    iget-object p1, p1, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    .line 127
    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/RawContactDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v2

    .line 131
    invoke-static {v2, v1}, Lcom/android/contacts/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 397
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/model/BuilderWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;",
            "Lcom/android/contacts/model/BuilderWrapper;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 406
    invoke-virtual {p2}, Lcom/android/contacts/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {p2}, Lcom/android/contacts/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/contacts/model/BuilderWrapper;->getType()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;
    .locals 2

    .line 280
    invoke-virtual {p1}, Lcom/android/contacts/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 281
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta;->buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public buildAssertWrapper(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;)V"
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta;->buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v1, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v1

    .line 458
    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 461
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "aggregation_mode"

    if-eqz v1, :cond_1

    .line 469
    iget-object v9, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v9, v8, v7}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 473
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    iget-object v10, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 474
    invoke-direct {p0, p1, v9}, Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 477
    iget-object v9, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 478
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/ValuesDelta;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 483
    :cond_3
    iget-object v12, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v13, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 484
    sget-object v12, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "data"

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    goto :goto_2

    .line 487
    :cond_4
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/android/contacts/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 490
    :goto_2
    invoke-virtual {v11}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "raw_contact_id"

    if-eqz v1, :cond_5

    .line 493
    invoke-virtual {v12, v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 496
    :cond_5
    invoke-virtual {v12, v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_8

    if-nez v12, :cond_7

    goto :goto_3

    .line 500
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "When parent insert, child must be also"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 502
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v12}, Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 506
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_b

    if-eqz v5, :cond_b

    .line 509
    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 513
    invoke-virtual {p0, v6, v4}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    .line 517
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 518
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id=?"

    .line 519
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 520
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 521
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public buildDiffWrapper(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;)V"
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v1

    .line 533
    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 536
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v6

    const-string v7, "aggregation_mode"

    const/4 v8, 0x2

    if-eqz v1, :cond_1

    .line 542
    iget-object v9, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v9, v7, v8}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 546
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    iget-object v10, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/model/BuilderWrapper;

    move-result-object v9

    .line 547
    invoke-direct {p0, p1, v9}, Lcom/android/contacts/model/RawContactDelta;->possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/model/BuilderWrapper;)V

    .line 550
    iget-object v9, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/ValuesDelta;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 556
    :cond_3
    iget-object v12, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v13, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 557
    sget-object v12, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "data"

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/model/BuilderWrapper;

    move-result-object v12

    goto :goto_2

    .line 560
    :cond_4
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/android/contacts/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/model/BuilderWrapper;

    move-result-object v12

    .line 563
    :goto_2
    invoke-virtual {v11}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "raw_contact_id"

    if-eqz v1, :cond_5

    .line 566
    invoke-virtual {v12}, Lcom/android/contacts/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 569
    :cond_5
    invoke-virtual {v12}, Lcom/android/contacts/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_8

    if-eqz v12, :cond_8

    .line 571
    invoke-virtual {v12}, Lcom/android/contacts/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    if-nez v11, :cond_7

    goto :goto_3

    .line 573
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "When parent insert, child must be also"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v12}, Lcom/android/contacts/model/RawContactDelta;->possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/model/BuilderWrapper;)V

    goto :goto_1

    .line 579
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_b

    if-eqz v5, :cond_b

    .line 583
    invoke-virtual {p0, v6, v8}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 584
    new-instance v2, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-direct {v2, v1, v8}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 587
    invoke-virtual {p0, v6, v4}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 588
    new-instance v1, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-direct {v1, v0, v8}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    .line 591
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 592
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id=?"

    .line 593
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 594
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    new-instance v0, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    return-void
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 605
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 606
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 330
    instance-of v0, p1, Lcom/android/contacts/model/RawContactDelta;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 331
    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    .line 334
    iget-object v0, p1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 337
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    .line 339
    invoke-direct {p1, v3}, Lcom/android/contacts/model/RawContactDelta;->containsEntry(Lcom/android/contacts/model/ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    return-object p1
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 4

    .line 238
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    .line 289
    invoke-virtual {v3}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    invoke-virtual {v3}, Lcom/android/contacts/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/ValuesDelta;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 308
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    .line 309
    invoke-virtual {v3}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_3
    return-object v0
.end method

.method public getEntryCount(Z)I
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 2

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;
    .locals 5

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    .line 160
    invoke-virtual {v3}, Lcom/android/contacts/model/ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 166
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    :cond_3
    return-object v1
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "account_type"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_set"

    .line 213
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    return-object p1
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    return-object p1
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/ValuesDelta;
    .locals 6

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/ValuesDelta;

    .line 189
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    .line 191
    :cond_2
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    return-object v1

    :cond_4
    if-eqz v3, :cond_5

    return-object v3

    .line 204
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    :cond_6
    return-object v1
.end method

.method public getValues()Lcom/android/contacts/model/ValuesDelta;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isContactInsert()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->markDeleted()V

    .line 364
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ValuesDelta;

    .line 366
    invoke-virtual {v2}, Lcom/android/contacts/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 630
    const-class v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 632
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ValuesDelta;

    iput-object v2, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    .line 633
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 635
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    .line 636
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .line 644
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n("

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Uri="

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Values="

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Entries={"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    const-string v4, "\n\t"

    .line 382
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v3, v0}, Lcom/android/contacts/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    const-string v1, "\n})\n"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta;->getEntryCount(Z)I

    move-result v0

    .line 619
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 621
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 622
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 623
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ValuesDelta;

    .line 624
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
