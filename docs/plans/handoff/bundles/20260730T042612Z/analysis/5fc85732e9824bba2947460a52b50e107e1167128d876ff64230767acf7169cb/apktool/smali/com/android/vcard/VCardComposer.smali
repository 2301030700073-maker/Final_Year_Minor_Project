.class public Lcom/android/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;,
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
    }
.end annotation


# static fields
.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContentUriForRawContactsEntity:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorSuppliedFromOutside:Z

.field private mErrorReason:Ljava/lang/String;

.field private mFirstVCardEmittedInDoCoMoCase:Z

.field private mIdColumn:I

.field private mInitDone:Z

.field private final mIsDoCoMo:Z

.field private mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

.field private mTerminateCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "No error"

    .line 149
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 208
    iput p3, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    .line 209
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 211
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 213
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p5, "UTF-8"

    if-eqz p2, :cond_0

    move-object p4, p5

    .line 215
    :cond_0
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 217
    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_3

    goto :goto_1

    .line 231
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 232
    iput-object p5, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 234
    :cond_4
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "SHIFT_JIS"

    .line 218
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 219
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 224
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 225
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 227
    :cond_7
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 238
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Use the charset \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VCardComposer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeCursorIfAppropriate()V
    .locals 3

    .line 628
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 630
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCardComposer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method private createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 9

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 511
    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    if-eqz v3, :cond_0

    .line 512
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    .line 513
    invoke-interface {v2, p1, p2}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;->getRawContactEntitlesInfo(J)Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    move-result-object p1

    .line 514
    iget-object v2, p1, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->rawContactEntitlesUri:Landroid/net/Uri;

    .line 515
    iget-wide p1, p1, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->contactId:J

    :cond_0
    move-object v3, v2

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 518
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "VCardComposer"

    if-eqz p3, :cond_1

    const/4 v4, 0x5

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 522
    iget-object v7, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v7, v4, v5

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "contact_id=?"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object v6, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    invoke-virtual {p3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/EntityIterator;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p3

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "InvocationTargetException has been thrown: "

    .line 531
    invoke-static {v8, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "InvocationTargetException has been thrown"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p3

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 528
    invoke-static {v8, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p3

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 525
    invoke-static {v8, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "contact_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    invoke-static {p3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const-string p3, ""

    if-nez v1, :cond_3

    :try_start_3
    const-string p1, "EntityIterator is null"

    .line 540
    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 567
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_2
    return-object p3

    .line 544
    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data does not exist. contactId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    .line 567
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_4
    return-object p3

    .line 549
    :cond_5
    :try_start_5
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 550
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Entity;

    .line 551
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Entity$NamedContentValues;

    .line 552
    iget-object p2, p2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string p3, "mimetype"

    .line 553
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 556
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_7

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_7
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    .line 567
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 571
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_a

    .line 567
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 569
    :cond_a
    throw p1
.end method

.method private initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 416
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Cursor became null unexpectedly"

    .line 419
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VCardComposer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Failed to get database information"

    .line 420
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private initInterFirstPart(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 405
    iget-boolean p1, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    if-eqz p1, :cond_1

    const-string p1, "VCardComposer"

    const-string v0, "init() is already called"

    .line 406
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private initInterLastPart()Z
    .locals 2

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    const/4 v1, 0x0

    .line 444
    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    return v0
.end method

.method private initInterMainPart()Z
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "contact_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-gez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 439
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 432
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    return v1
.end method


# virtual methods
.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "VCardComposer"

    const-string v0, "The given map is null. Ignore and return empty String"

    .line 598
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1

    .line 601
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/name"

    .line 602
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/nickname"

    .line 603
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    .line 604
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/email_v2"

    .line 606
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    .line 607
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/organization"

    .line 608
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/website"

    .line 609
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 610
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    const-string v1, "vnd.android.cursor.item/photo"

    .line 611
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    :cond_1
    const-string v1, "vnd.android.cursor.item/note"

    .line 613
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/contact_event"

    .line 614
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/im"

    .line 615
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/sip_address"

    .line 616
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    const-string v1, "vnd.android.cursor.item/relation"

    .line 617
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 618
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createOneEntry()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2

    .line 459
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/vcard/VCardComposer;->createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    .line 470
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VCardComposer"

    const-string v1, "Cursor#moveToNext() returned false"

    .line 471
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 641
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "finalized() is called before terminate() being called"

    .line 642
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 646
    throw v0
.end method

.method public getCount()I
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    .line 656
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 659
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 353
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "The Uri vCard composer received is not supported by the composer."

    .line 355
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return v1

    .line 359
    :cond_0
    invoke-direct {p0, p6}, Lcom/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result p6

    if-nez p6, :cond_1

    return v1

    .line 362
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/android/vcard/VCardComposer;->initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result p1

    return p1
.end method

.method public isAfterLast()Z
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    .line 668
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 671
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 1

    .line 623
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    return-void
.end method
