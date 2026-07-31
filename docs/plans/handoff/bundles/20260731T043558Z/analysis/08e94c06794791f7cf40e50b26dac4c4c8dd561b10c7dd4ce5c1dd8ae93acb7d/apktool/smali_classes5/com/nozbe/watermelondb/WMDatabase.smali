.class public Lcom/nozbe/watermelondb/WMDatabase;
.super Ljava/lang/Object;
.source "WMDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;
    }
.end annotation


# static fields
.field public static INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/nozbe/watermelondb/WMDatabase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static synthetic $r8$lambda$9ECmpau4ucTwmn7cZs_TANI9IoQ(Lcom/nozbe/watermelondb/WMDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nozbe/watermelondb/WMDatabase;->lambda$unsafeExecuteStatements$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u2l2_-FrG7cVVyde5Xzf73Ygpag(Lcom/nozbe/watermelondb/WMDatabase;)V
    .locals 0

    invoke-direct {p0}, Lcom/nozbe/watermelondb/WMDatabase;->lambda$unsafeDestroyEverything$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nozbe/watermelondb/WMDatabase;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static buildDatabase(Ljava/lang/String;Landroid/content/Context;I)Lcom/nozbe/watermelondb/WMDatabase;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/nozbe/watermelondb/WMDatabase;->createSQLiteDatabase(Ljava/lang/String;Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 42
    new-instance p1, Lcom/nozbe/watermelondb/WMDatabase;

    invoke-direct {p1, p0}, Lcom/nozbe/watermelondb/WMDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object p1
.end method

.method private static createSQLiteDatabase(Ljava/lang/String;Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 47
    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mode=memory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".db"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/databases"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/4 p1, 0x0

    .line 54
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private getAllTables()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    const-string v1, "select * from sqlite_master where type=\'table\'"

    invoke-virtual {p0, v1}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 152
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 156
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 151
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/nozbe/watermelondb/WMDatabase;
    .locals 1

    const/high16 v0, 0x30000000

    .line 24
    invoke-static {p0, p1, v0}, Lcom/nozbe/watermelondb/WMDatabase;->getInstance(Ljava/lang/String;Landroid/content/Context;I)Lcom/nozbe/watermelondb/WMDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;I)Lcom/nozbe/watermelondb/WMDatabase;
    .locals 3

    .line 28
    const-class v0, Lcom/nozbe/watermelondb/WMDatabase;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/nozbe/watermelondb/WMDatabase;->INSTANCES:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nozbe/watermelondb/WMDatabase;

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1}, Lcom/nozbe/watermelondb/WMDatabase;->isOpen()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    monitor-exit v0

    return-object v1

    .line 31
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/nozbe/watermelondb/WMDatabase;->buildDatabase(Ljava/lang/String;Landroid/content/Context;I)Lcom/nozbe/watermelondb/WMDatabase;

    move-result-object p1

    .line 32
    sget-object p2, Lcom/nozbe/watermelondb/WMDatabase;->INSTANCES:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic lambda$rawQuery$1([Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 4

    const/4 p1, 0x0

    .line 99
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_5

    .line 100
    aget-object v0, p0, p1

    .line 101
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 102
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Landroid/database/sqlite/SQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 104
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p4, v1, v2, v3}, Landroid/database/sqlite/SQLiteQuery;->bindLong(IJ)V

    goto :goto_2

    .line 105
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    add-int/lit8 v1, p1, 0x1

    .line 106
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p4, v1, v2, v3}, Landroid/database/sqlite/SQLiteQuery;->bindDouble(ID)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    .line 108
    invoke-virtual {p4, v0}, Landroid/database/sqlite/SQLiteQuery;->bindNull(I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 110
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Bad query arg type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_5
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method

.method private synthetic lambda$unsafeDestroyEverything$2()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/nozbe/watermelondb/WMDatabase;->getAllTables()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-static {v1}, Lcom/nozbe/watermelondb/Queries;->dropTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nozbe/watermelondb/WMDatabase;->execute(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    const-string v0, "pragma writable_schema=1"

    invoke-virtual {p0, v0}, Lcom/nozbe/watermelondb/WMDatabase;->execute(Ljava/lang/String;)V

    .line 169
    const-string v0, "delete from sqlite_master where type in (\'table\', \'index\', \'trigger\')"

    invoke-virtual {p0, v0}, Lcom/nozbe/watermelondb/WMDatabase;->execute(Ljava/lang/String;)V

    .line 170
    const-string v0, "pragma user_version=0"

    invoke-virtual {p0, v0}, Lcom/nozbe/watermelondb/WMDatabase;->execute(Ljava/lang/String;)V

    .line 171
    const-string v0, "pragma writable_schema=0"

    invoke-virtual {p0, v0}, Lcom/nozbe/watermelondb/WMDatabase;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$unsafeExecuteStatements$0(Ljava/lang/String;)V
    .locals 4

    .line 69
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {p0, v2}, Lcom/nozbe/watermelondb/WMDatabase;->execute(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public count(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/nozbe/watermelondb/WMDatabase;->count(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    .line 124
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    const-string p2, "count"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 127
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_3

    .line 123
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p2
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getFromLocalStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, "select value from local_storage where key = ?"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    .line 140
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 139
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method

.method public getUserVersion()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public isOpen()Ljava/lang/Boolean;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 7

    .line 95
    array-length v0, p2

    new-array v4, v0, [Ljava/lang/String;

    .line 96
    const-string v0, ""

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public setUserVersion(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public transaction(Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 182
    :try_start_0
    invoke-interface {p1}, Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;->applyTransactionFunction()V

    .line 183
    iget-object p1, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object p1, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 186
    throw p1
.end method

.method public unsafeDestroyEverything()V
    .locals 1

    .line 164
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/nozbe/watermelondb/WMDatabase;)V

    invoke-virtual {p0, v0}, Lcom/nozbe/watermelondb/WMDatabase;->transaction(Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;)V

    return-void
.end method

.method public unsafeExecuteStatements(Ljava/lang/String;)V
    .locals 1

    .line 66
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/nozbe/watermelondb/WMDatabase;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nozbe/watermelondb/WMDatabase;->transaction(Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;)V

    return-void
.end method
