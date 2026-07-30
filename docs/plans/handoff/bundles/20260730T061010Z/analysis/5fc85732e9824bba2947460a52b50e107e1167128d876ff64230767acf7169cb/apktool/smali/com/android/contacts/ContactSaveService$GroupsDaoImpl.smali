.class public Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;
.super Ljava/lang/Object;
.source "ContactSaveService.java"

# interfaces
.implements Lcom/android/contacts/ContactSaveService$GroupsDao;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupsDaoImpl"
.end annotation


# static fields
.field public static final KEY_GROUP_DATA:Ljava/lang/String; = "groupData"

.field public static final KEY_GROUP_MEMBERS:Ljava/lang/String; = "groupMemberIds"

.field private static final TAG:Ljava/lang/String; = "GroupsDao"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1840
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1844
    iput-object p1, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->context:Landroid/content/Context;

    .line 1845
    iput-object p2, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public captureDeletionUndoData(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 11

    .line 1849
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1850
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1852
    iget-object v3, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    const-string v4, "title"

    const-string v5, "notes"

    const-string v6, "group_visible"

    const-string v7, "account_type"

    const-string v8, "account_name"

    const-string v9, "data_set"

    const-string v10, "should_sync"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "0"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v6, "deleted=?"

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1860
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1861
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1862
    invoke-static {p1, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v4, "groupData"

    .line 1863
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1872
    iget-object v5, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "raw_contact_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 p1, 0x2

    new-array v9, p1, [Ljava/lang/String;

    const-string p1, "vnd.android.cursor.item/group_membership"

    const/4 v3, 0x0

    aput-object p1, v9, v3

    .line 1875
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v9, v0

    const/4 v10, 0x0

    const-string v8, "mimetype=? AND data1=?"

    .line 1872
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1876
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 1878
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 1879
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const-string p1, "groupMemberIds"

    .line 1881
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object v2

    .line 1869
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1870
    throw v0
.end method

.method public create(Ljava/lang/String;Lcom/android/contacts/model/account/AccountWithDataSet;)Landroid/net/Uri;
    .locals 2

    .line 1913
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 1914
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object p1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-object p1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget-object p1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string p2, "data_set"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object p1, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;)I
    .locals 2

    .line 1922
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public undoDeletion(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 8

    const-string v0, "groupData"

    .line 1886
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1890
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1891
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    const-string v3, "groupMemberIds"

    .line 1893
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1897
    :cond_1
    array-length v3, p1

    new-array v3, v3, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    .line 1898
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 1899
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v3, v4

    .line 1900
    aget-object v5, v3, v4

    aget-wide v6, p1, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "raw_contact_id"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1901
    aget-object v5, v3, v4

    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    aget-object v5, v3, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "data1"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1904
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 1905
    array-length p1, p1

    if-eq v1, p1, :cond_3

    const-string p1, "GroupsDao"

    const-string v1, "Could not recover some members for group deletion undo"

    .line 1906
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method
