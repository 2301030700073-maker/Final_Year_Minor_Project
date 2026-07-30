.class public Lcom/android/contacts/database/SimContactDaoImpl;
.super Lcom/android/contacts/database/SimContactDao;
.source "SimContactDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/database/SimContactDaoImpl$AccountQuery;,
        Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;,
        Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;
    }
.end annotation


# static fields
.field public static EMAILS:Ljava/lang/String; = null

.field public static final ICC_CONTENT_URI:Landroid/net/Uri;

.field private static final IMPORT_MAX_BATCH_SIZE:I = 0x12c

.field public static NAME:Ljava/lang/String; = null

.field public static NUMBER:Ljava/lang/String; = null

.field static final QUERY_MAX_BATCH_SIZE:I = 0x64

.field private static final SIM_READ_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "SimContactDao"

.field public static _ID:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://icc/adn"

    .line 79
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->ICC_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    .line 81
    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->_ID:Ljava/lang/String;

    const-string v0, "name"

    .line 82
    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->NAME:Ljava/lang/String;

    const-string v0, "number"

    .line 83
    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->NUMBER:Ljava/lang/String;

    const-string v0, "emails"

    .line 84
    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->EMAILS:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->SIM_READ_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone"

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/database/SimContactDaoImpl;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/contacts/database/SimContactDao;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mResolver:Landroid/content/ContentResolver;

    .line 99
    iput-object p3, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private createImportOperations(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/SimContact;

    .line 390
    invoke-virtual {v1, v0, p2}, Lcom/android/contacts/model/SimContact;->appendCreateContactOperations(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private findAccountsOfExistingSimContacts(Ljava/util/List;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/util/Set<",
            "Lcom/android/contacts/model/SimContact;",
            ">;>;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    invoke-static {}, Lcom/android/contacts/model/SimContact;->compareByPhoneThenName()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;->queryRawContactsForSimContacts(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v1

    .line 207
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    invoke-static {v1}, Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;->getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v1}, Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {p1, v2, v3}, Lcom/android/contacts/model/SimContact;->findByPhoneAndName(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/SimContact;

    .line 216
    invoke-static {v1}, Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;->getRawContactId(Landroid/database/Cursor;)J

    move-result-wide v3

    .line 217
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 223
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;->queryAccountsOfRawContacts(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object p1

    .line 228
    :cond_3
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    invoke-static {p1}, Lcom/android/contacts/database/SimContactDaoImpl$AccountQuery;->getAccount(Landroid/database/Cursor;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    .line 230
    invoke-static {p1}, Lcom/android/contacts/database/SimContactDaoImpl$AccountQuery;->getId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 231
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 232
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/SimContact;

    .line 235
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 239
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 240
    throw p2

    :catchall_1
    move-exception p1

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    throw p1
.end method

.method private getContactsForSim(Lcom/android/contacts/model/SimCard;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/SimCard;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getContacts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;->loadContactsForSim(Lcom/android/contacts/model/SimCard;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSimCardsFromSubscriptions()Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 257
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 260
    invoke-static {v2}, Lcom/android/contacts/model/SimCard;->create(Landroid/telephony/SubscriptionInfo;)Lcom/android/contacts/model/SimCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private hasPermissions()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    .line 405
    invoke-static {v0}, Lcom/android/contacts/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasTelephony()Z
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private importBatch(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/database/SimContactDaoImpl;->createImportOperations(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 249
    iget-object p2, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "com.android.contacts"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1
.end method

.method private loadFrom(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->SIM_READ_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 279
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object p1

    .line 283
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;->loadFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 286
    throw v1

    :catchall_1
    move-exception p1

    .line 287
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private loadFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->_ID:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 292
    sget-object v1, Lcom/android/contacts/database/SimContactDaoImpl;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 293
    sget-object v2, Lcom/android/contacts/database/SimContactDaoImpl;->NUMBER:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 294
    sget-object v3, Lcom/android/contacts/database/SimContactDaoImpl;->EMAILS:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 296
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 299
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 300
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 301
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 302
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    new-instance v12, Lcom/android/contacts/model/SimContact;

    invoke-direct {p0, v5}, Lcom/android/contacts/database/SimContactDaoImpl;->parseEmails(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 306
    invoke-virtual {v12}, Lcom/android/contacts/model/SimContact;->hasName()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v12}, Lcom/android/contacts/model/SimContact;->hasPhone()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v12}, Lcom/android/contacts/model/SimContact;->hasEmails()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    :cond_1
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private parseEmails(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private queryAccountsOfRawContacts(Ljava/util/Set;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    const-string v2, "_id"

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    .line 373
    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-int/lit8 v4, v1, 0x1

    .line 377
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    move v1, v4

    goto :goto_0

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/database/SimContactDaoImpl$AccountQuery;->PROJECTION:[Ljava/lang/String;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 379
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private queryRawContactsForSimContacts(Ljava/util/List;)Landroid/database/Cursor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/SimContact;

    .line 319
    invoke-virtual {v4}, Lcom/android/contacts/model/SimContact;->hasPhone()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/model/SimContact;->hasName()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v4, 0x28

    .line 327
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "mimetype"

    .line 328
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=? AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vnd.android.cursor.item/phone_v2"

    .line 329
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "data1"

    .line 331
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " IN ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    .line 332
    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v8

    const/16 v9, 0x3f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v2, v10}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/SimContact;

    .line 335
    invoke-virtual {v10}, Lcom/android/contacts/model/SimContact;->hasPhone()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 336
    invoke-virtual {v10}, Lcom/android/contacts/model/SimContact;->getPhone()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 339
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v3, :cond_7

    const-string v8, " OR ("

    .line 342
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "vnd.android.cursor.item/name"

    .line 345
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "display_name"

    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/SimContact;

    .line 351
    invoke-virtual {v3}, Lcom/android/contacts/model/SimContact;->hasPhone()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/android/contacts/model/SimContact;->hasName()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 352
    invoke-virtual {v3}, Lcom/android/contacts/model/SimContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 355
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v2, "visible_contacts_only"

    const-string v3, "true"

    .line 359
    invoke-virtual {p1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;->PROJECTION:[Ljava/lang/String;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 358
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canReadSimContacts()Z
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->hasTelephony()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->hasPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findAccountsOfExistingSimContacts(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/util/Set<",
            "Lcom/android/contacts/model/SimContact;",
            ">;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 191
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v1, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 192
    invoke-direct {p0, v1, v0}, Lcom/android/contacts/database/SimContactDaoImpl;->findAccountsOfExistingSimContacts(Ljava/util/List;Ljava/util/Map;)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSimBySubscriptionId(I)Lcom/android/contacts/model/SimCard;
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->getSimCards()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/util/SharedPreferenceUtil;->restoreSimStates(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 174
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/SimCard;

    return-object p1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->getSimCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/SimCard;

    .line 177
    invoke-virtual {v1}, Lcom/android/contacts/model/SimCard;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSimCards()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->canReadSimContacts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMSIMCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->getSimCardsFromSubscriptions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f100210

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/android/contacts/model/SimCard;->create(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lcom/android/contacts/model/SimCard;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/contacts/util/SharedPreferenceUtil;->restoreSimStates(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public importContacts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/database/SimContactDaoImpl;->importBatch(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 153
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit16 v3, v1, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-direct {p0, v1, p2}, Lcom/android/contacts/database/SimContactDaoImpl;->importBatch(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ContentProviderResult;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentProviderResult;

    return-object p1
.end method

.method public loadContactsForSim(Lcom/android/contacts/model/SimCard;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/SimCard;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->hasValidSubscriptionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;->loadSimContacts(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->loadSimContacts()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public loadSimContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->ICC_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/database/SimContactDaoImpl;->loadFrom(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadSimContacts(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/android/contacts/database/SimContactDaoImpl;->ICC_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "subId"

    .line 136
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;->loadFrom(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public persistSimState(Lcom/android/contacts/model/SimCard;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->persistSimStates(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method public persistSimStates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->persistSimStates(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method
