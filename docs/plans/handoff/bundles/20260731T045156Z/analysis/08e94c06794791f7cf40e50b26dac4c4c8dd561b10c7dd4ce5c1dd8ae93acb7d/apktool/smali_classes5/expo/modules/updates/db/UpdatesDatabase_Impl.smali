.class public final Lexpo/modules/updates/db/UpdatesDatabase_Impl;
.super Lexpo/modules/updates/db/UpdatesDatabase;
.source "UpdatesDatabase_Impl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J*\u0010\u0013\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00160\u0015\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00160\u00150\u00170\u0014H\u0014J\u0016\u0010\u0018\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u001a0\u00150\u0019H\u0016J*\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00172\u001a\u0010\u001d\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u001a0\u0015\u0012\u0004\u0012\u00020\u001a0\u0014H\u0016J\u0008\u0010\u001e\u001a\u00020\u0006H\u0016J\u0008\u0010\u001f\u001a\u00020\u0008H\u0016J\n\u0010 \u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/updates/db/UpdatesDatabase_Impl;",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "<init>",
        "()V",
        "_updateDao",
        "Lkotlin/Lazy;",
        "Lexpo/modules/updates/db/dao/UpdateDao;",
        "_assetDao",
        "Lexpo/modules/updates/db/dao/AssetDao;",
        "_jSONDataDao",
        "Lexpo/modules/updates/db/dao/JSONDataDao;",
        "createOpenHelper",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "config",
        "Landroidx/room/DatabaseConfiguration;",
        "createInvalidationTracker",
        "Landroidx/room/InvalidationTracker;",
        "clearAllTables",
        "",
        "getRequiredTypeConverters",
        "",
        "Ljava/lang/Class;",
        "",
        "",
        "getRequiredAutoMigrationSpecs",
        "",
        "Landroidx/room/migration/AutoMigrationSpec;",
        "getAutoMigrations",
        "Landroidx/room/migration/Migration;",
        "autoMigrationSpecs",
        "updateDao",
        "assetDao",
        "jsonDataDao",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _assetDao:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/updates/db/dao/AssetDao;",
            ">;"
        }
    .end annotation
.end field

.field private final _jSONDataDao:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/updates/db/dao/JSONDataDao;",
            ">;"
        }
    .end annotation
.end field

.field private final _updateDao:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/updates/db/dao/UpdateDao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bSHONhHqMno6L2tm2kaXSxR0RCo(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/JSONDataDao_Impl;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_jSONDataDao$lambda$2(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/JSONDataDao_Impl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$butptBwUOVGCyzqnJGBk4amD0Ss(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/AssetDao_Impl;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_assetDao$lambda$1(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/AssetDao_Impl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q4AReh5ogPBtnEMQCRhnd2yCX5M(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/UpdateDao_Impl;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_updateDao$lambda$0(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lexpo/modules/updates/db/UpdatesDatabase;-><init>()V

    .line 38
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/updates/db/UpdatesDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_updateDao:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lexpo/modules/updates/db/UpdatesDatabase_Impl$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_assetDao:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lexpo/modules/updates/db/UpdatesDatabase_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lexpo/modules/updates/db/UpdatesDatabase_Impl$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_jSONDataDao:Lkotlin/Lazy;

    return-void
.end method

.method private static final _assetDao$lambda$1(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/AssetDao_Impl;
    .locals 1

    .line 44
    new-instance v0, Lexpo/modules/updates/db/dao/AssetDao_Impl;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-direct {v0, p0}, Lexpo/modules/updates/db/dao/AssetDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0
.end method

.method private static final _jSONDataDao$lambda$2(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/JSONDataDao_Impl;
    .locals 1

    .line 49
    new-instance v0, Lexpo/modules/updates/db/dao/JSONDataDao_Impl;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-direct {v0, p0}, Lexpo/modules/updates/db/dao/JSONDataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0
.end method

.method private static final _updateDao$lambda$0(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Lexpo/modules/updates/db/dao/UpdateDao_Impl;
    .locals 1

    .line 39
    new-instance v0, Lexpo/modules/updates/db/dao/UpdateDao_Impl;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-direct {v0, p0}, Lexpo/modules/updates/db/dao/UpdateDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0
.end method

.method public static final synthetic access$getMCallbacks$p(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$internalInitInvalidationTracker(Lexpo/modules/updates/db/UpdatesDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public static final synthetic access$setMDatabase$p(Lexpo/modules/updates/db/UpdatesDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-void
.end method


# virtual methods
.method public assetDao()Lexpo/modules/updates/db/dao/AssetDao;
    .locals 1

    .line 325
    iget-object v0, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_assetDao:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/db/dao/AssetDao;

    return-object v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 272
    invoke-super {p0}, Lexpo/modules/updates/db/UpdatesDatabase;->assertNotMainThread()V

    .line 273
    invoke-super {p0}, Lexpo/modules/updates/db/UpdatesDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 280
    :try_start_0
    invoke-super {p0}, Lexpo/modules/updates/db/UpdatesDatabase;->beginTransaction()V

    .line 282
    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    const-string v3, "DELETE FROM `updates`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const-string v3, "DELETE FROM `updates_assets`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v3, "DELETE FROM `assets`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string v3, "DELETE FROM `json_data`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    invoke-super {p0}, Lexpo/modules/updates/db/UpdatesDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-super {p0}, Lexpo/modules/updates/db/UpdatesDatabase;->endTransaction()V

    .line 294
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 295
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 290
    invoke-super {p0}, Lexpo/modules/updates/db/UpdatesDatabase;->endTransaction()V

    .line 294
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 295
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 7

    .line 265
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 267
    new-instance v3, Landroidx/room/InvalidationTracker;

    move-object v4, p0

    check-cast v4, Landroidx/room/RoomDatabase;

    check-cast v0, Ljava/util/Map;

    check-cast v2, Ljava/util/Map;

    const/4 v5, 0x4

    .line 268
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "updates"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "updates_assets"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "assets"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string v6, "json_data"

    aput-object v6, v5, v1

    .line 267
    invoke-direct {v3, v4, v0, v2, v5}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lexpo/modules/updates/db/UpdatesDatabase_Impl$createOpenHelper$_openCallback$1;

    invoke-direct {v1, p0}, Lexpo/modules/updates/db/UpdatesDatabase_Impl$createOpenHelper$_openCallback$1;-><init>(Lexpo/modules/updates/db/UpdatesDatabase_Impl;)V

    check-cast v1, Landroidx/room/RoomOpenHelper$Delegate;

    .line 257
    const-string v2, "472340246d291854f67ce4b51e48fb0b"

    const-string v3, "44e91f336617a878939030a5de33f923"

    .line 54
    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 259
    sget-object v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->Companion:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 260
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 313
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    const-class v1, Lexpo/modules/updates/db/dao/UpdateDao;

    sget-object v2, Lexpo/modules/updates/db/dao/UpdateDao_Impl;->Companion:Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;

    invoke-virtual {v2}, Lexpo/modules/updates/db/dao/UpdateDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-class v1, Lexpo/modules/updates/db/dao/AssetDao;

    sget-object v2, Lexpo/modules/updates/db/dao/AssetDao_Impl;->Companion:Lexpo/modules/updates/db/dao/AssetDao_Impl$Companion;

    invoke-virtual {v2}, Lexpo/modules/updates/db/dao/AssetDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-class v1, Lexpo/modules/updates/db/dao/JSONDataDao;

    sget-object v2, Lexpo/modules/updates/db/dao/JSONDataDao_Impl;->Companion:Lexpo/modules/updates/db/dao/JSONDataDao_Impl$Companion;

    invoke-virtual {v2}, Lexpo/modules/updates/db/dao/JSONDataDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public jsonDataDao()Lexpo/modules/updates/db/dao/JSONDataDao;
    .locals 1

    .line 327
    iget-object v0, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_jSONDataDao:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/db/dao/JSONDataDao;

    return-object v0
.end method

.method public updateDao()Lexpo/modules/updates/db/dao/UpdateDao;
    .locals 1

    .line 323
    iget-object v0, p0, Lexpo/modules/updates/db/UpdatesDatabase_Impl;->_updateDao:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/db/dao/UpdateDao;

    return-object v0
.end method
