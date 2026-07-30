.class public Lcom/android/contacts/editor/PickRawContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PickRawContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PickRawContactLoader$RawContact;,
        Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final RAW_CONTACT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCachedResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

.field private mContactUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "account_name"

    const-string v1, "account_type"

    const-string v2, "data_set"

    const-string v3, "_id"

    const-string v4, "display_name"

    const-string v5, "display_name_alt"

    .line 32
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/PickRawContactLoader;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {p2}, Lcom/android/contacts/editor/PickRawContactLoader;->ensureIsContactUri(Landroid/net/Uri;)Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/editor/PickRawContactLoader;->mContactUri:Landroid/net/Uri;

    return-void
.end method

.method private static ensureIsContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    if-eqz p0, :cond_2

    .line 182
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid contact Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0

    .line 180
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V
    .locals 1

    .line 158
    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactLoader;->mCachedResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    .line 159
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/PickRawContactLoader;->deliverResult(Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;
    .locals 14

    .line 62
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/android/contacts/editor/PickRawContactLoader;->mContactUri:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v1, "is_user_profile"

    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 72
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v9, 0x1

    if-ge v2, v9, :cond_1

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v8

    .line 77
    :cond_1
    new-instance v10, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    invoke-direct {v10}, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;-><init>()V

    .line 79
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    .line 80
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->contactId:J

    .line 81
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v9, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v10, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->isUserProfile:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    iget-boolean v1, v10, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->isUserProfile:Z

    if-eqz v1, :cond_3

    .line 89
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    goto :goto_1

    .line 91
    :cond_3
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    :goto_1
    move-object v2, v1

    .line 94
    sget-object v3, Lcom/android/contacts/editor/PickRawContactLoader;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    iget-wide v12, v10, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->contactId:J

    .line 96
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const-string v4, "contact_id=?"

    move-object v1, v0

    .line 94
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v8

    .line 102
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v9, :cond_5

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_5
    const/4 v8, -0x1

    .line 107
    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id IN ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 111
    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 112
    new-instance v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    invoke-direct {v3}, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;-><init>()V

    const/4 v4, 0x3

    .line 113
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->id:J

    .line 114
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    .line 115
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->displayName:Ljava/lang/String;

    const/4 v4, 0x5

    .line 116
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->displayNameAlt:Ljava/lang/String;

    .line 117
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountName:Ljava/lang/String;

    .line 118
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountType:Ljava/lang/String;

    const/4 v4, 0x2

    .line 119
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountDataSet:Ljava/lang/String;

    .line 120
    iget-object v4, v10, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-wide v4, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v12, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 124
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, ") AND mimetype=\"vnd.android.cursor.item/photo\""

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-boolean v1, v10, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->isUserProfile:Z

    if-eqz v1, :cond_8

    .line 134
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    .line 135
    :cond_8
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    :goto_3
    move-object v3, v1

    const-string v1, "raw_contact_id"

    .line 136
    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 136
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 143
    :try_start_2
    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 144
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 145
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    .line 147
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->photoId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 150
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    throw v1

    :cond_a
    :goto_5
    return-object v10

    :catchall_1
    move-exception v0

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    throw v0

    :catchall_2
    move-exception v0

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 84
    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/android/contacts/editor/PickRawContactLoader;->loadInBackground()Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 167
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactLoader;->mCachedResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PickRawContactLoader;->deliverResult(Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V

    :goto_0
    return-void
.end method
