.class Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const-string p1, "ContactPhotoLoader"

    .line 1322
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1307
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    .line 1308
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 1309
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 1310
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 p1, 0x0

    .line 1319
    iput p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1323
    iput-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 4

    .line 1464
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$400(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 1469
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1470
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    .line 1471
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 14

    .line 1476
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 1482
    iget v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v2, v1, :cond_2

    .line 1483
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1484
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1486
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1487
    iput v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1491
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1492
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v4, "_id IN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 1493
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-eqz v2, :cond_3

    .line 1495
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1497
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1499
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 1504
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1505
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 1507
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$700()[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 1504
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v5, -0x1

    if-eqz v4, :cond_6

    .line 1511
    :goto_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1512
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1513
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    if-nez v7, :cond_5

    new-array v7, v3, [B

    .line 1517
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v8, v6, v7, p1, v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1518
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_6

    :cond_6
    if-eqz v4, :cond_7

    .line 1523
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1528
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1529
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1532
    :try_start_2
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1533
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1534
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1532
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_a

    .line 1535
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1536
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-nez v6, :cond_9

    new-array v6, v3, [B

    .line 1540
    :cond_9
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9, v6, p1, v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_4

    .line 1543
    :cond_a
    iget-object v8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v8, v6, v2, p1, v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v7, :cond_8

    .line 1547
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v7

    goto :goto_5

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1549
    :cond_b
    throw p1

    .line 1552
    :cond_c
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v7, v6, v2, p1, v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_3

    .line 1556
    :cond_d
    iget-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$900(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v2, :cond_e

    .line 1523
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1525
    :cond_e
    throw p1
.end method

.method private loadUriBasedPhotos()V
    .locals 13

    const-string v0, "Cannot load photo "

    const-string v1, "ContactPhotoManager"

    .line 1564
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 1568
    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 1572
    invoke-static {v4}, Lcom/android/contacts/ContactPhotoManager;->removeContactType(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1574
    iget-object v6, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v6, :cond_0

    const/16 v6, 0x4000

    new-array v6, v6, [B

    .line 1575
    iput-object v6, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 1579
    :try_start_0
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    .line 1581
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 1598
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v9, 0x1

    .line 1582
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1583
    new-instance v9, Ljava/net/URL;

    .line 1584
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 1587
    iget-object v10, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v10}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$1000(Lcom/android/contacts/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "User-Agent"

    .line 1588
    iget-object v11, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v11}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$1000(Lcom/android/contacts/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1591
    :cond_3
    :try_start_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1593
    :catch_0
    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v9, v6

    .line 1596
    :goto_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :goto_3
    if-eqz v9, :cond_5

    .line 1601
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 1604
    :goto_4
    :try_start_3
    iget-object v11, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v9, v11}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 1605
    iget-object v12, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v10, v12, v8, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1608
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1610
    iget-object v9, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 1611
    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v11

    .line 1610
    invoke-static {v9, v4, v10, v8, v11}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1612
    iget-object v9, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v9}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$900(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    .line 1608
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1609
    throw v10

    .line 1614
    :cond_5
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1615
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_6
    iget-object v9, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v10

    invoke-static {v9, v4, v6, v8, v10}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    goto :goto_5

    :catch_2
    move-exception v9

    .line 1620
    :goto_5
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1621
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1623
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v3

    invoke-static {v5, v4, v6, v8, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 6

    .line 1388
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1393
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    .line 1394
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    iput v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 1397
    :cond_1
    iput v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1399
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void

    .line 1403
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$300(Lcom/android/contacts/ContactPhotoManagerImpl;)I

    move-result v3

    if-le v0, v3, :cond_3

    .line 1404
    iput v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    return-void

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1409
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 1412
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-lez v3, :cond_4

    .line 1413
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x19

    if-ge v4, v5, :cond_4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 1416
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1417
    iget-object v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1418
    iget-object v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1419
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1422
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    if-nez v3, :cond_5

    .line 1425
    iput v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    :cond_5
    const-string v2, "ContactPhotoManager"

    .line 1428
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " photos.  Cached bytes: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    .line 1430
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method private queryPhotosForPreload()V
    .locals 8

    const/4 v0, 0x0

    .line 1439
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    .line 1440
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1439
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const/16 v3, 0x64

    .line 1442
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1441
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1443
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1444
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "photo_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "photo_id NOT NULL AND photo_id!=0"

    const/4 v6, 0x0

    const-string v7, "starred DESC, last_time_contacted DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1450
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1460
    :cond_2
    throw v1
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1328
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1370
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1375
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 1372
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    :goto_0
    return v0
.end method

.method public requestLoading()V
    .locals 2

    .line 1359
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1360
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1361
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .line 1340
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1344
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1345
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
