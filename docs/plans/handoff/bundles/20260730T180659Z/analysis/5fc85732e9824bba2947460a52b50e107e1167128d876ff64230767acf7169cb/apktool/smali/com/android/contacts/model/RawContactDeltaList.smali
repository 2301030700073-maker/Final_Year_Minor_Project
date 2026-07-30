.class public Lcom/android/contacts/model/RawContactDeltaList;
.super Ljava/util/ArrayList;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/contacts/model/RawContactDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    .line 435
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContactDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;
    .locals 10

    .line 265
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 269
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 270
    aget p1, p3, p1

    const-string v3, "raw_contact_id1"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-ltz v9, :cond_0

    .line 272
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 274
    invoke-virtual {v0, v3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 279
    :goto_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 280
    aget p2, p3, p2

    const-string p3, "raw_contact_id2"

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-ltz v3, :cond_1

    .line 282
    invoke-virtual {v0, p3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_2

    .line 284
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    :goto_1
    return-object v0

    :cond_2
    return-object v4
.end method

.method private buildSplitContactDiffWrapper(Ljava/util/ArrayList;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;[I)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 256
    :cond_0
    invoke-direct {p0, v2, v3, p2}, Lcom/android/contacts/model/RawContactDeltaList;->buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 258
    new-instance v5, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static diffToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\n"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 216
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "]\n"

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static diffToStringWrapper(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/CPOWrapper;

    .line 229
    invoke-virtual {v1}, Lcom/android/contacts/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {v0}, Lcom/android/contacts/model/RawContactDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lcom/android/contacts/model/RawContactDeltaList;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/RawContactDeltaList;->addAll(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 63
    invoke-static {p0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object p0

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/android/contacts/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-interface {p0}, Landroid/content/EntityIterator;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/content/EntityIterator;->close()V

    .line 69
    throw p1
.end method

.method public static mergeAfter(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDeltaList;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 2

    if-nez p0, :cond_0

    .line 103
    new-instance p0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 107
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    .line 111
    invoke-static {v1, v0}, Lcom/android/contacts/model/RawContactDelta;->mergeAfter(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 85
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 88
    instance-of v1, v0, Landroid/content/Entity;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Landroid/content/Entity;

    invoke-static {v0}, Lcom/android/contacts/model/RawContact;->createFrom(Landroid/content/Entity;)Lcom/android/contacts/model/RawContact;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_0
    check-cast v0, Lcom/android/contacts/model/RawContact;

    .line 91
    :goto_1
    invoke-static {v0}, Lcom/android/contacts/model/RawContactDelta;->fromBefore(Lcom/android/contacts/model/RawContact;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .line 239
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 240
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public buildDiffWrapper()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 129
    sget-boolean v1, Lcom/android/contacts/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/android/contacts/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildDiffWrapper: list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v2

    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/RawContactDelta;

    .line 139
    invoke-virtual {v5, v1}, Lcom/android/contacts/model/RawContactDelta;->buildAssertWrapper(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 143
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 148
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/RawContactDelta;

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 150
    invoke-virtual {v11}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v13

    add-int/lit8 v14, v9, 0x1

    if-eqz v13, :cond_2

    move v15, v12

    goto :goto_2

    :cond_2
    const/4 v15, -0x1

    .line 151
    :goto_2
    aput v15, v5, v9

    .line 153
    invoke-virtual {v11, v1}, Lcom/android/contacts/model/RawContactDelta;->buildDiffWrapper(Ljava/util/ArrayList;)V

    .line 157
    iget-object v9, v0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    const-string v7, "raw_contact_id1"

    const-string v8, "raw_contact_id2"

    if-eqz v9, :cond_4

    .line 158
    array-length v11, v9

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_4

    aget-wide v19, v9, v15

    move-object/from16 v16, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v19, v9

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 160
    invoke-virtual {v9, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-wide/16 v17, -0x1

    cmp-long v6, v2, v17

    if-eqz v6, :cond_3

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 164
    :cond_3
    invoke-virtual {v9, v8, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 167
    :goto_4
    new-instance v6, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    move/from16 v20, v11

    const/4 v11, 0x2

    invoke-direct {v6, v9, v11}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v16

    move-object/from16 v9, v19

    move/from16 v11, v20

    goto :goto_3

    :cond_4
    move-object/from16 v16, v6

    if-nez v13, :cond_5

    goto :goto_5

    .line 175
    :cond_5
    iget-boolean v6, v0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v6, :cond_6

    :goto_5
    move v9, v14

    move-object/from16 v6, v16

    goto :goto_1

    :cond_6
    const-wide/16 v17, -0x1

    cmp-long v6, v2, v17

    if-eqz v6, :cond_7

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 181
    invoke-virtual {v6, v8, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 182
    new-instance v7, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    const/4 v9, 0x2

    invoke-direct {v7, v6, v9}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, -0x1

    goto :goto_5

    :cond_7
    const/4 v6, -0x1

    const/4 v9, 0x2

    if-ne v10, v6, :cond_8

    move v10, v12

    goto :goto_5

    .line 190
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 191
    invoke-virtual {v11, v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    invoke-virtual {v11, v8, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    new-instance v7, Lcom/android/contacts/model/CPOWrapper;

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-direct {v7, v8, v9}, Lcom/android/contacts/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 198
    :cond_9
    iget-boolean v2, v0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v2, :cond_a

    .line 199
    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/RawContactDeltaList;->buildSplitContactDiffWrapper(Ljava/util/ArrayList;[I)V

    .line 203
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    :cond_b
    sget-boolean v2, Lcom/android/contacts/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_c

    .line 207
    sget-object v2, Lcom/android/contacts/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildDiff: ops="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/contacts/model/RawContactDeltaList;->diffToStringWrapper(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 7

    .line 297
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 298
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 300
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/RawContactDelta;
    .locals 1

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    :goto_0
    return-object p1
.end method

.method public getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;
    .locals 1

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    :goto_0
    return-object p1
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 1

    if-ltz p1, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 311
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    .line 312
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lcom/android/contacts/model/ValuesDelta;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    .line 314
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;
    .locals 7

    .line 365
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 366
    invoke-virtual {v4, p1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    .line 369
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/ValuesDelta;

    .line 370
    invoke-virtual {v5}, Lcom/android/contacts/model/ValuesDelta;->isSuperPrimary()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v5

    :cond_3
    if-nez v2, :cond_4

    .line 372
    invoke-virtual {v5}, Lcom/android/contacts/model/ValuesDelta;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, v5

    goto :goto_0

    :cond_4
    if-nez v3, :cond_2

    move-object v3, v5

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    return-object v3
.end method

.method public indexOfFirstWritableRawContact(Landroid/content/Context;)I
    .locals 3

    .line 349
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta;

    .line 350
    invoke-virtual {v2, p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 335
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v3

    .line 336
    invoke-virtual {p1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isMarkedForJoining()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public markRawContactsForSplitting()V
    .locals 1

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 426
    const-class v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 429
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    return-void
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Split="

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-boolean v1, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Join=["

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], Values="

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 415
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 416
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 418
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 421
    iget-boolean p2, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
