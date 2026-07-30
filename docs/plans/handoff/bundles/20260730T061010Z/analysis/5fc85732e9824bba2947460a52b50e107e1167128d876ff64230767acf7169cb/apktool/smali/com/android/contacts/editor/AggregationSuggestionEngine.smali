.class public Lcom/android/contacts/editor/AggregationSuggestionEngine;
.super Landroid/os/HandlerThread;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
    }
.end annotation


# instance fields
.field private mAccountFilter:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mContactId:J

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDataCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

.field private mMainHandler:Landroid/os/Handler;

.field private mSuggestedContactIds:[J

.field private mSuggestionsUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AggregationSuggestions"

    const/16 v1, 0xa

    .line 117
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [J

    .line 106
    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    .line 119
    new-instance p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;

    invoke-direct {p1, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;)V

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V
    .locals 0

    .line 246
    invoke-virtual {p2, p3}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_0

    const/16 p3, 0x20

    .line 249
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private buildAggregationSuggestionUri(Lcom/android/contacts/model/ValuesDelta;)Landroid/net/Uri;
    .locals 4

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data4"

    .line 202
    invoke-direct {p0, v0, p1, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v1, "data2"

    .line 203
    invoke-direct {p0, v0, p1, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v1, "data5"

    .line 204
    invoke-direct {p0, v0, p1, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v1, "data3"

    .line 205
    invoke-direct {p0, v0, p1, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v1, "data6"

    .line 206
    invoke-direct {p0, v0, p1, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data9"

    .line 209
    invoke-direct {p0, v1, p1, v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v2, "data8"

    .line 210
    invoke-direct {p0, v1, p1, v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v2, "data7"

    .line 211
    invoke-direct {p0, v1, p1, v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 218
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x3

    if-lt p1, v2, :cond_3

    .line 219
    new-instance p1, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    invoke-direct {p1}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;-><init>()V

    .line 220
    invoke-virtual {p1, v3}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object p1

    iget-wide v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    .line 221
    invoke-virtual {p1, v2, v3}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addNameParameter(Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 225
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addNameParameter(Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 228
    :cond_2
    invoke-virtual {p1}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 232
    :cond_3
    new-instance p1, Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;

    invoke-direct {p1}, Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;-><init>()V

    .line 234
    invoke-virtual {p1, v3}, Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;->setLimit(I)Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;

    iget-wide v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    .line 235
    invoke-virtual {p1, v2, v3}, Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;->setContactId(J)Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;->addNameParameter(Ljava/lang/String;)Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;

    .line 239
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;->addNameParameter(Ljava/lang/String;)Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;

    .line 242
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/compat/AggregationSuggestionsCompat$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private loadAggregationSuggestions(Landroid/net/Uri;)V
    .locals 7

    .line 303
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "_id"

    .line 304
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 310
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 314
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->updateSuggestedContactIds(Landroid/database/Cursor;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 319
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/nickname\',\'vnd.android.cursor.item/photo\') AND contact_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    if-lez v3, :cond_3

    const/16 v4, 0x2c

    .line 323
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    aget-wide v5, v4, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x29

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "contact_id"

    move-object v1, v0

    .line 329
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 332
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 333
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 332
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 337
    throw v0
.end method

.method private updateSuggestedContactIds(Landroid/database/Cursor;)Z
    .locals 7

    .line 341
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 343
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    if-nez v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, 0x1

    .line 349
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 353
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 355
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 356
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v3

    move v3, v4

    goto :goto_2

    .line 358
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    :cond_4
    return v1
.end method


# virtual methods
.method protected deliverNotification(Landroid/database/Cursor;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 369
    iget-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    if-eqz p1, :cond_1

    .line 370
    invoke-interface {p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;->onAggregationSuggestionChange()V

    :cond_1
    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSuggestedContactCount()I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mAccountFilter:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 384
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-wide/16 v3, -0x1

    move-wide v5, v3

    .line 385
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 386
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_2

    .line 388
    new-instance v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    invoke-direct {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;-><init>()V

    .line 389
    iput-wide v7, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContactId:J

    .line 390
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    .line 391
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactLookupKey:Ljava/lang/String;

    .line 392
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 394
    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 395
    new-instance v9, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v9, v2, v5, v6}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mAccountFilter:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v2, v9}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v2, v1

    move-wide v5, v7

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    .line 404
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eqz v7, :cond_4

    .line 405
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v7, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 407
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v7, :cond_3

    iget-object v7, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 409
    :cond_3
    iput-object v1, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v7, "vnd.android.cursor.item/email_v2"

    .line 411
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 412
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    iget-object v7, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v7, :cond_5

    iget-object v7, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 416
    :cond_5
    iput-object v1, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v7, "vnd.android.cursor.item/nickname"

    .line 418
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 419
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 421
    iput-object v1, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v7, "vnd.android.cursor.item/name"

    .line 423
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 425
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 427
    iput-object v1, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v7, "vnd.android.cursor.item/photo"

    .line 429
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    const/16 v7, 0x9

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 431
    iget-wide v7, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photoId:J

    cmp-long v9, v7, v3

    if-nez v9, :cond_0

    .line 432
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photoId:J

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->loadAggregationSuggestions(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [J

    .line 258
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    :goto_0
    return-void
.end method

.method public onNameChange(Lcom/android/contacts/model/ValuesDelta;)V
    .locals 3

    .line 174
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->buildAggregationSuggestionUri(Lcom/android/contacts/model/ValuesDelta;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-nez p1, :cond_1

    .line 177
    new-instance p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;Lcom/android/contacts/editor/AggregationSuggestionEngine$1;)V

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 178
    iget-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 185
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->scheduleSuggestionLookup()V

    return-void
.end method

.method public quit()Z
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 160
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 164
    :cond_1
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected scheduleSuggestionLookup()V
    .locals 4

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 197
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setAccountFilter(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mAccountFilter:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-void
.end method

.method public setContactId(J)V
    .locals 3

    .line 140
    iget-wide v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 141
    iput-wide p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    return-void
.end method
